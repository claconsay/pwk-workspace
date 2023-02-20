```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/_quick_tcp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/xml/_quick_tcp_nmap.xml" 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/_quick_tcp_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/_quick_tcp_nmap.txt):

```
# Nmap 7.93 scan initiated Sun Feb 19 22:36:35 2023 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN /home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/_quick_tcp_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/xml/_quick_tcp_nmap.xml 10.11.1.5
Increasing send delay for 10.11.1.5 from 0 to 5 due to 97 out of 241 dropped probes since last increase.
Increasing send delay for 10.11.1.5 from 5 to 10 due to 11 out of 18 dropped probes since last increase.
Nmap scan report for 10.11.1.5
Host is up, received user-set (0.22s latency).
Scanned at 2023-02-19 22:36:35 PST for 60s
Not shown: 996 closed tcp ports (conn-refused)
PORT     STATE SERVICE      REASON  VERSION
135/tcp  open  msrpc        syn-ack Microsoft Windows RPC
139/tcp  open  netbios-ssn  syn-ack Microsoft Windows netbios-ssn
445/tcp  open  microsoft-ds syn-ack Microsoft Windows XP microsoft-ds
1025/tcp open  msrpc        syn-ack Microsoft Windows RPC
Service Info: OSs: Windows, Windows XP; CPE: cpe:/o:microsoft:windows, cpe:/o:microsoft:windows_xp

Host script results:
| p2p-conficker: 
|   Checking for Conficker.C or higher...
|   Check 1 (port 36286/tcp): CLEAN (Couldn't connect)
|   Check 2 (port 24745/tcp): CLEAN (Couldn't connect)
|   Check 3 (port 37234/udp): CLEAN (Failed to receive data)
|   Check 4 (port 55739/udp): CLEAN (Failed to receive data)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked
| nbstat: NetBIOS name: ALICE, NetBIOS user: <unknown>, NetBIOS MAC: 00505686ae65 (VMware)
| Names:
|   ALICE<00>            Flags: <unique><active>
|   ALICE<20>            Flags: <unique><active>
|   THINC<00>            Flags: <group><active>
|   ALICE<03>            Flags: <unique><active>
|   THINC<1e>            Flags: <group><active>
|   THINC<1d>            Flags: <unique><active>
|   \x01\x02__MSBROWSE__\x02<01>  Flags: <group><active>
| Statistics:
|   00505686ae650000000000000000000000
|   0000000000000000000000000000000000
|_  0000000000000000000000000000
|_smb2-security-mode: Couldn't establish a SMBv2 connection.
|_smb2-time: Protocol negotiation failed (SMB2)
|_clock-skew: -1s
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Feb 19 22:37:35 2023 -- 1 IP address (1 host up) scanned in 60.00 seconds

```
