```shell
nmap -sV -sC -T4 10.11.1.5 -oA nmap
Starting Nmap 7.93 ( https://nmap.org ) at 2023-01-23 11:20 PST
Warning: 10.11.1.5 giving up on port because retransmission cap hit (6).
Nmap scan report for 10.11.1.5
Host is up (0.23s latency).
Not shown: 992 closed tcp ports (conn-refused)
PORT     STATE    SERVICE       VERSION
135/tcp  open     msrpc         Microsoft Windows RPC
139/tcp  open     netbios-ssn   Microsoft Windows netbios-ssn
445/tcp  open     microsoft-ds  Microsoft Windows XP microsoft-ds
705/tcp  filtered agentx
1025/tcp open     msrpc         Microsoft Windows RPC
1063/tcp filtered kyoceranetdev
9415/tcp filtered unknown
9900/tcp filtered iua
Service Info: OSs: Windows, Windows XP; CPE: cpe:/o:microsoft:windows, cpe:/o:microsoft:windows_xp

Host script results:
|_clock-skew: -1s
|_smb2-time: Protocol negotiation failed (SMB2)
|_nbstat: NetBIOS name: ALICE, NetBIOS user: <unknown>, NetBIOS MAC: 005056bf7a1b (VMware)
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 110.38 seconds
```


SMB
===



