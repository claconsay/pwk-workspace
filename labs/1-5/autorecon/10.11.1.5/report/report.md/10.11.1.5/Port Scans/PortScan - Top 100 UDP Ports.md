```bash
nmap -vv --reason -Pn -T4 -sU -A --top-ports 100 -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_top_100_udp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_top_100_udp_nmap.xml" 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_top_100_udp_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_top_100_udp_nmap.txt):

```
# Nmap 7.93 scan initiated Thu Feb 16 16:40:59 2023 as: nmap -vv --reason -Pn -T4 -sU -A --top-ports 100 -oN /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_top_100_udp_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_top_100_udp_nmap.xml 10.11.1.5
Increasing send delay for 10.11.1.5 from 0 to 50 due to 44 out of 109 dropped probes since last increase.
Nmap scan report for 10.11.1.5
Host is up, received user-set (0.24s latency).
Scanned at 2023-02-16 16:40:59 PST for 179s
Not shown: 92 closed udp ports (port-unreach)
PORT     STATE         SERVICE      REASON               VERSION
135/udp  open          msrpc        udp-response ttl 127
137/udp  open          netbios-ns   udp-response ttl 127 Microsoft Windows netbios-ns (workgroup: THINC)
| nbns-interfaces: 
|   hostname: ALICE
|   interfaces: 
|_    10.11.1.5
138/udp  open|filtered netbios-dgm  no-response
445/udp  open|filtered microsoft-ds no-response
1026/udp open|filtered win-rpc      no-response
1027/udp open|filtered unknown      no-response
1028/udp open          msrpc        udp-response ttl 127
1029/udp open|filtered solid-mux    no-response
Too many fingerprints match this host to give specific OS details
TCP/IP fingerprint:
SCAN(V=7.93%E=4%D=2/16%OT=%CT=%CU=7%PV=Y%DS=2%DC=T%G=N%TM=63EDECCE%P=x86_64-pc-linux-gnu)
SEQ(II=I)
T5(R=Y%DF=N%T=80%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
U1(R=Y%DF=N%T=80%IPL=38%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)
IE(R=Y%DFI=S%T=80%CD=Z)

Network Distance: 2 hops
Service Info: Host: ALICE; OS: Windows; CPE: cpe:/o:microsoft:windows

Host script results:
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

TRACEROUTE (using port 65024/udp)
HOP RTT       ADDRESS
1   225.06 ms 192.168.119.1
2   225.05 ms 10.11.1.5

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Feb 16 16:43:58 2023 -- 1 IP address (1 host up) scanned in 179.18 seconds

```
