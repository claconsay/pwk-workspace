## FTP
* **Allows anonymous login**
* contains directory called "**aspnet_client**" 
	* a folder for "resources which must be served via HTTP, but are installed on a per-server basis, rather than a per-application basis".

## VNC
* exposes computer named "disco"
* **Server does not require authentication**
* list the following users
	* **admin**
	* **Administrator**
	* alice
	* **backup**
	* david
	* gary
	* homer
	* john
	* lee
	* lisa
	* mark
	* ned
	* nick
	* tood
	### TO TRY
	``crowbar -b rdp -s 10.11.1.13/32 -u admin -n 1 -C /usr/share/wordlists/rockyou.txt``


## Interesting User
```
Computer Name      :   DISCO
User Name          :   Administrator
User Id            :   500
Is Enabled         :   True
User Type          :   Administrator
Comment            :   Built-in account for administering the computer/domain
Last Logon         :   1/30/2023 3:29:55 PM
Logons Count       :   41
Password Last Set  :   4/8/2019 11:27:35 PM

```