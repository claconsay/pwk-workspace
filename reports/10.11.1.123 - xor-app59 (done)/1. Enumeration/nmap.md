Initial Scan
===
```
Starting Nmap 7.93 ( https://nmap.org ) at 2023-01-27 01:53 PST
Nmap scan report for 10.11.1.123
Host is up (0.22s latency).                                                                                                                                                                  
Not shown: 767 filtered tcp ports (no-response), 226 closed tcp ports (conn-refused)
PORT     STATE SERVICE       VERSION
80/tcp   open  http          Apache httpd 2.4.39 ((Win64) OpenSSL/1.1.1b PHP/7.3.5)
|_http-server-header: Apache/2.4.39 (Win64) OpenSSL/1.1.1b PHP/7.3.5
| http-title: Welcome to XAMPP
|_Requested resource was http://10.11.1.123/dashboard/
135/tcp  open  msrpc         Microsoft Windows RPC
139/tcp  open  netbios-ssn   Microsoft Windows netbios-ssn
443/tcp  open  ssl/http      Apache httpd 2.4.39 ((Win64) OpenSSL/1.1.1b PHP/7.3.5)
| http-title: Welcome to XAMPP
|_Requested resource was https://10.11.1.123/dashboard/
| tls-alpn: 
|_  http/1.1
|_ssl-date: TLS randomness does not represent time
|_http-server-header: Apache/2.4.39 (Win64) OpenSSL/1.1.1b PHP/7.3.5
| ssl-cert: Subject: commonName=localhost
| Not valid before: 2009-11-10T23:48:47
|_Not valid after:  2019-11-08T23:48:47
445/tcp  open  microsoft-ds?
3306/tcp open  mysql         MariaDB (unauthorized)
3389/tcp open  ms-wbt-server Microsoft Terminal Services
| rdp-ntlm-info: 
|   Target_Name: xor
|   NetBIOS_Domain_Name: xor
|   NetBIOS_Computer_Name: XOR-APP59
|   DNS_Domain_Name: xor.com
|   DNS_Computer_Name: xor-app59.xor.com
|   DNS_Tree_Name: xor.com
|   Product_Version: 10.0.14393
|_  System_Time: 2023-01-26T18:01:49+00:00
| ssl-cert: Subject: commonName=xor-app59.xor.com
| Not valid before: 2023-01-24T22:46:25
|_Not valid after:  2023-07-26T22:46:25
|_ssl-date: 2023-01-26T18:01:58+00:00; 0s from scanner time.
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Host script results:
| smb2-time: 
|   date: 2023-01-26T18:01:51
|_  start_date: 2022-07-20T02:58:25
| smb2-security-mode: 
|   311: 
|_    Message signing enabled but not required
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 506.16 seconds
```

