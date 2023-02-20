```bash
nmap -vv --reason -Pn -T4 -sV -p 139 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/tcp_139_smb_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/xml/tcp_139_smb_nmap.xml" 10.11.1.146
```

[/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/tcp_139_smb_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/tcp_139_smb_nmap.txt):

```
# Nmap 7.93 scan initiated Sun Feb 19 22:38:00 2023 as: nmap -vv --reason -Pn -T4 -sV -p 139 "--script=banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN /home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/tcp_139_smb_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/xml/tcp_139_smb_nmap.xml 10.11.1.146
Nmap scan report for 10.11.1.146
Host is up, received user-set (0.23s latency).
Scanned at 2023-02-19 22:38:00 PST for 521s

PORT    STATE SERVICE     REASON  VERSION
139/tcp open  netbios-ssn syn-ack Samba smbd 4.5.4-Ubuntu (workgroup: WORKGROUP)
Service Info: Host: SUSIE

Host script results:
| smb-ls: Volume \\10.11.1.146\SusieShare
| SIZE   TIME                 FILENAME
| <DIR>  2023-02-19T14:41:41  .
| <DIR>  2019-12-21T07:51:25  ..
| <DIR>  2023-02-19T14:38:15  BYIWFXRSUC
| 0      2019-12-21T06:40:59  FsSRC.txt
|_
| smb-enum-shares: 
|   account_used: guest
|   \\10.11.1.146\IPC$: 
|     Type: STYPE_IPC_HIDDEN
|     Comment: IPC Service (susie server (Samba, Ubuntu))
|     Users: 4
|     Max Users: <unlimited>
|     Path: C:\tmp
|     Anonymous access: READ/WRITE
|     Current user access: READ/WRITE
|   \\10.11.1.146\SusieShare: 
|     Type: STYPE_DISKTREE
|     Comment: YOUR COMMENTS
|     Users: 1
|     Max Users: <unlimited>
|     Path: C:\home\susie\susieshare
|     Anonymous access: READ/WRITE
|     Current user access: READ/WRITE
|   \\10.11.1.146\print$: 
|     Type: STYPE_DISKTREE
|     Comment: Printer Drivers
|     Users: 0
|     Max Users: <unlimited>
|     Path: C:\var\lib\samba\printers
|     Anonymous access: <none>
|_    Current user access: <none>
| smb-os-discovery: 
|   OS: Windows 6.1 (Samba 4.5.4-Ubuntu)
|   Computer name: \x00
|   NetBIOS computer name: SUSIE\x00
|   Workgroup: WORKGROUP\x00
|_  System time: 2023-02-19T09:38:34-05:00
| smb-protocols: 
|   dialects: 
|     NT LM 0.12 (SMBv1) [dangerous, but default]
|     202
|     210
|     300
|     302
|_    311
| smb2-time: 
|   date: 2023-02-19T14:38:36
|_  start_date: N/A
|_smb-system-info: ERROR: Script execution failed (use -d to debug)
| smb2-capabilities: 
|   202: 
|     Distributed File System
|   210: 
|     Distributed File System
|     Leasing
|   300: 
|     Distributed File System
|     Leasing
|   302: 
|     Distributed File System
|     Leasing
|   311: 
|     Distributed File System
|_    Leasing
| smb-enum-sessions: 
|_  <nobody>
|_smb-print-text: false
|_smb-vuln-ms10-061: false
| smb-mbenum: 
|   DFS Root
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Master Browser
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Print server
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Server
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Server service
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Unix server
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Windows NT/2000/XP/2003 server
|     SUSIE  0.0  susie server (Samba, Ubuntu)
|   Workstation
|_    SUSIE  0.0  susie server (Samba, Ubuntu)
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb-enum-domains: 
|   Builtin
|     Groups: n/a
|     Users: n/a
|     Creation time: unknown
|     Passwords: min length: 5; min age: n/a days; max age: n/a days; history: n/a passwords
|     Account lockout disabled
|   SUSIE
|     Groups: n/a
|     Users: n/a
|     Creation time: unknown
|     Passwords: min length: 5; min age: n/a days; max age: n/a days; history: n/a passwords
|_    Account lockout disabled
| smb2-security-mode: 
|   311: 
|_    Message signing enabled but not required

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Feb 19 22:46:41 2023 -- 1 IP address (1 host up) scanned in 520.98 seconds

```
