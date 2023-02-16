```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_full_tcp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_full_tcp_nmap.xml" 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_full_tcp_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_full_tcp_nmap.txt):

```
# Nmap 7.93 scan initiated Thu Feb 16 16:40:59 2023 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_full_tcp_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_full_tcp_nmap.xml 10.11.1.5
Increasing send delay for 10.11.1.5 from 0 to 5 due to 76 out of 189 dropped probes since last increase.
Increasing send delay for 10.11.1.5 from 5 to 10 due to 26 out of 64 dropped probes since last increase.
Warning: 10.11.1.5 giving up on port because retransmission cap hit (6).
Nmap scan report for 10.11.1.5
Host is up, received user-set (0.25s latency).
Scanned at 2023-02-16 16:40:59 PST for 1080s
Not shown: 65385 closed tcp ports (reset), 146 filtered tcp ports (no-response)
PORT     STATE SERVICE      REASON          VERSION
135/tcp  open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
139/tcp  open  netbios-ssn  syn-ack ttl 127 Microsoft Windows netbios-ssn
445/tcp  open  microsoft-ds syn-ack ttl 127 Windows XP microsoft-ds
1025/tcp open  msrpc        syn-ack ttl 127 Microsoft Windows RPC
Device type: general purpose|specialized|power-device|media device
Running (JUST GUESSING): Microsoft Windows XP|7|2000|2003|PocketPC/CE (95%), Belkin embedded (90%), SMA embedded (90%), Motorola embedded (86%), Sony embedded (85%)
OS CPE: cpe:/o:microsoft:windows_xp cpe:/o:microsoft:windows_7 cpe:/o:microsoft:windows_2000::sp4:server cpe:/o:microsoft:windows_server_2003::sp2 cpe:/o:microsoft:windows_ce:6.0 cpe:/o:microsoft:windows_ce:5.0 cpe:/h:motorola:vip1216 cpe:/h:sony:bdv-t57
Aggressive OS guesses: Microsoft Windows XP (95%), Microsoft Windows 7 (91%), Belkin OmniView KVM switch or SMA Sunny WebBox solar panel monitor (90%), Microsoft Windows XP SP2 (90%), Microsoft Windows XP SP3 (90%), Microsoft Windows 2000 Server SP4 or Windows XP Professional SP3 (89%), Microsoft Windows 2000 SP4 (89%), Microsoft Windows Server 2003 SP2 (88%), Microsoft Windows CE 6.0 (87%), Motorola VIP1216 digital set top box (Windows CE 5.0) (86%)
No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.93%E=4%D=2/16%OT=135%CT=1%CU=38700%PV=Y%DS=2%DC=T%G=Y%TM=63EDF0
OS:53%P=x86_64-pc-linux-gnu)SEQ(SP=84%GCD=1%ISR=9C%TI=I%II=I%TS=0)SEQ(SP=89
OS:%GCD=1%ISR=9B%TI=I%II=I%SS=S%TS=0)SEQ(SP=95%GCD=1%ISR=9E%II=I%TS=0)OPS(O
OS:1=M551NW0NNT00NNS%O2=M551NW0NNT00NNS%O3=M551NW0NNT00%O4=M551NW0NNT00NNS%
OS:O5=M551NW0NNT00NNS%O6=M551NNT00NNS)WIN(W1=FAF0%W2=FAF0%W3=FAF0%W4=FAF0%W
OS:5=FAF0%W6=FAF0)ECN(R=Y%DF=Y%T=80%W=FAF0%O=M551NW0NNS%CC=N%Q=)T1(R=Y%DF=Y
OS:%T=80%S=O%A=S+%F=AS%RD=0%Q=)T2(R=N)T3(R=N)T4(R=N)T5(R=Y%DF=N%T=80%W=0%S=
OS:Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=N)T7(R=N)U1(R=Y%DF=N%T=80%IPL=38%UN=0%RIPL=G
OS:%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=S%T=80%CD=Z)

Network Distance: 2 hops
TCP Sequence Prediction: Difficulty=138 (Good luck!)
IP ID Sequence Generation: Incremental
Service Info: OSs: Windows, Windows XP; CPE: cpe:/o:microsoft:windows, cpe:/o:microsoft:windows_xp

Host script results:
|_clock-skew: mean: -4s, deviation: 0s, median: -4s
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| p2p-conficker: 
|   Checking for Conficker.C or higher...
|   Check 1 (port 36286/tcp): CLEAN (Couldn't connect)
|   Check 2 (port 24745/tcp): CLEAN (Couldn't connect)
|   Check 3 (port 37234/udp): CLEAN (Failed to receive data)
|   Check 4 (port 55739/udp): CLEAN (Failed to receive data)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked
| nbstat: NetBIOS name: ALICE, NetBIOS user: <unknown>, NetBIOS MAC: 005056861b45 (VMware)
| Names:
|   ALICE<00>            Flags: <unique><active>
|   ALICE<20>            Flags: <unique><active>
|   THINC<00>            Flags: <group><active>
|   ALICE<03>            Flags: <unique><active>
|   THINC<1e>            Flags: <group><active>
|   THINC<1d>            Flags: <unique><active>
|   \x01\x02__MSBROWSE__\x02<01>  Flags: <group><active>
| Statistics:
|   005056861b450000000000000000000000
|   0000000000000000000000000000000000
|_  0000000000000000000000000000
|_smb2-security-mode: Couldn't establish a SMBv2 connection.
|_smb2-time: Protocol negotiation failed (SMB2)
| smb-os-discovery: 
|   OS: Windows XP (Windows 2000 LAN Manager)
|   OS CPE: cpe:/o:microsoft:windows_xp::-
|   Computer name: alice
|   NetBIOS computer name: ALICE\x00
|   Domain name: thinc.local
|   Forest name: thinc.local
|   FQDN: alice.thinc.local
|_  System time: 2023-02-16T08:58:48+00:00

TRACEROUTE (using port 3389/tcp)
HOP RTT       ADDRESS
1   367.60 ms 192.168.119.1
2   367.71 ms 10.11.1.5

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Feb 16 16:58:59 2023 -- 1 IP address (1 host up) scanned in 1080.26 seconds

```
