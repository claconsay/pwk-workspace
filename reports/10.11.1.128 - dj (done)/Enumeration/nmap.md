```
Nmap scan report for 10.11.1.128
Host is up, received conn-refused (0.26s latency).
Scanned at 2023-02-02 15:53:17 UTC for 116s

PORT      STATE SERVICE            REASON  VERSION
21/tcp    open  ftp                syn-ack Microsoft ftpd
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
|_03-14-19  01:58AM             54030608 FoxitReader901_enu_Setup_Prom.exe
| ftp-syst: 
|_  SYST: Windows_NT
135/tcp   open  msrpc              syn-ack Microsoft Windows RPC
139/tcp   open  netbios-ssn        syn-ack Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds       syn-ack Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
1433/tcp  open  ms-sql-s           syn-ack Microsoft SQL Server 2012 11.00.2100.00; RTM
| ms-sql-ntlm-info: 
|   Target_Name: DJ
|   NetBIOS_Domain_Name: DJ
|   NetBIOS_Computer_Name: DJ
|   DNS_Domain_Name: dj
|   DNS_Computer_Name: dj
|_  Product_Version: 6.3.9600
| ssl-cert: Subject: commonName=SSL_Self_Signed_Fallback
| Issuer: commonName=SSL_Self_Signed_Fallback
| Public Key type: rsa
| Public Key bits: 1024
| Signature Algorithm: sha1WithRSAEncryption
| Not valid before: 2022-04-06T17:00:38
| Not valid after:  2052-04-06T17:00:38
| MD5:   e792 2811 88ee 4383 7d47 0471 4514 dced
| SHA-1: 4d79 9eaf c42c 923d 52fc e42e 09ff de5f c32d d0f3
| -----BEGIN CERTIFICATE-----
| [redacted]MIIB+zCCAWSgAwIBAgIQb1ND4F2lDJlLWBOe7QvMqDANBgkqhkiG9w0BAQUFAD
| of2cgv99hclVLTPG0/S/GKqCox6hhcP0Zgd9nUCsVQ==
|_-----END CERTIFICATE-----
|_ssl-date: 2023-02-02T15:55:08+00:00; -2s from scanner time.
3389/tcp  open  ssl/ms-wbt-server? syn-ack
| ssl-cert: Subject: commonName=dj
| Issuer: commonName=dj
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2023-01-30T14:35:45
| Not valid after:  2023-08-01T14:35:45
| MD5:   8323 5ccc 1f4b ebc8 25cf 8888 7987 5666
| SHA-1: 98f3 81bd 73ea 3a4a 1812 c297 c577 f23c 6184 6409
| -----BEGIN CERTIFICATE-----
| MIICyDCCAbCgAwIBAgIQG2JulV0om4VJtmAw3u2LFjANBgkqhkiG9w0BAQsFADAN
| UNMRostSmuhb5HyL1Q3NXsobA/jD85qpWhPp75KWB3/Sxoelh5cZ9ibLKfo=
|_-----END CERTIFICATE-----
4167/tcp  open  http               syn-ack Microsoft IIS httpd 8.5
| http-methods: 
|   Supported Methods: OPTIONS TRACE GET HEAD POST
|_  Potentially risky methods: TRACE
|_http-server-header: Microsoft-IIS/8.5
|_http-title: IIS Windows Server
5800/tcp  open  vnc-http           syn-ack TightVNC (user: dj; VNC TCP port: 5900)
| http-methods: 
|_  Supported Methods: GET
|_http-title: TightVNC desktop [dj]
5900/tcp  open  vnc                syn-ack VNC (protocol 3.8)
|_ssl-cert: ERROR: Script execution failed (use -d to debug)
|_ssl-date: ERROR: Script execution failed (use -d to debug)
|_sslv2: ERROR: Script execution failed (use -d to debug)
|_tls-alpn: ERROR: Script execution failed (use -d to debug)
|_tls-nextprotoneg: ERROR: Script execution failed (use -d to debug)
|_vnc-info: ERROR: Script execution failed (use -d to debug)
5985/tcp  open  http               syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
47001/tcp open  http               syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49152/tcp open  msrpc              syn-ack Microsoft Windows RPC
49153/tcp open  msrpc              syn-ack Microsoft Windows RPC
49154/tcp open  msrpc              syn-ack Microsoft Windows RPC
49155/tcp open  msrpc              syn-ack Microsoft Windows RPC
49156/tcp open  msrpc              syn-ack Microsoft Windows RPC
49157/tcp open  msrpc              syn-ack Microsoft Windows RPC
49158/tcp open  msrpc              syn-ack Microsoft Windows RPC
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Host script results:
|_clock-skew: mean: -2s, deviation: 0s, median: -2s
| ms-sql-info: 
|   10.11.1.128:1433: 
|     Version: 
|       name: Microsoft SQL Server 2012 RTM
|       number: 11.00.2100.00
|       Product: Microsoft SQL Server 2012
|       Service pack level: RTM
|       Post-SP patches applied: false
|_    TCP port: 1433
| p2p-conficker: 
|   Checking for Conficker.C or higher...
|   Check 1 (port 12276/tcp): CLEAN (Couldn't connect)
|   Check 2 (port 26270/tcp): CLEAN (Couldn't connect)
|   Check 3 (port 56290/udp): CLEAN (Failed to receive data)
|   Check 4 (port 12553/udp): CLEAN (Timeout)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked
|_smb-os-discovery: ERROR: Script execution failed (use -d to debug)
| smb-security-mode: 
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-security-mode: 
|   2.02: 
|_    Message signing enabled but not required
| smb2-time: 
|   date: 2023-02-02T15:54:54
|_  start_date: 2022-04-06T17:00:37

```