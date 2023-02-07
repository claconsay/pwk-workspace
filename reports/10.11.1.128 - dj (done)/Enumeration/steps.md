***
## Enumeration
1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.123
```

2. `nmap` was able to detect several running services, but for this machine, the area of interest is the **HTTP** server running on port **4167** and the **mssql** server running on port **1433**
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

3. We performed a directory enumeration and discovered a page called `Login.asp` which shows a login page for a music inventory app.
```
gobuster dir -u http://10.11.1.128:4167/ -w /usr/share/seclists/Discovery/Web-Content/common.txt -t 20 -o gobuster-4167.txt -x asp,aspx
```

![[dj-gobuster-login.png]]

![[dj-login-form.png]]

4. We checked the source code and finds out that the form submission is being handled by the endpoint `loginform.asp`
![[dj-login-source.png]]

5. We've tested the form using several inputs and noticed that the application responsed with an `Internal server error` when the input contains a `'` (single quote) character. This behavior indicates that it might be vulnerable to [`SQL Injection (SQLi)`](https://portswigger.net/web-security/sql-injection)
![[dj-internal-500.png]]

6. Since we are not getting any (descriptive) error message, we used time-based technique to confirm the SQLi vulnerability. Because of the injected query `WAITFOR DELAY '0:0:5'`, it took (around) **5000 milliseconds (or 5 seconds)** before we received the server response, thus, confirming that we can inject queries into the parameter.
![[dj-delay.png]]

> [!info] 
> [WAITFOR DELAY](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/waitfor-transact-sql?redirectedfrom=MSDN&view=sql-server-ver16#b-using-waitfor-delay) is an SQL syntax specific for **MSSQL**. It suspends the execution of stored procedure for the specified amount of time.

```
IF (SELECT is_srvrolemember('sysadmin'))=1 WAITFOR+DELAY+'0:0:5'
```