```bash
nmap -vv --reason -Pn -T4 -sV -p 1025 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp1025/tcp_1025_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp1025/xml/tcp_1025_rpc_nmap.xml" 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp1025/tcp_1025_rpc_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp1025/tcp_1025_rpc_nmap.txt):

```
# Nmap 7.93 scan initiated Sun Feb 19 22:37:35 2023 as: nmap -vv --reason -Pn -T4 -sV -p 1025 --script=banner,msrpc-enum,rpc-grind,rpcinfo -oN /home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp1025/tcp_1025_rpc_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp1025/xml/tcp_1025_rpc_nmap.xml 10.11.1.5
Nmap scan report for 10.11.1.5
Host is up, received user-set (0.22s latency).
Scanned at 2023-02-19 22:37:35 PST for 22s

PORT     STATE SERVICE REASON  VERSION
1025/tcp open  msrpc   syn-ack Microsoft Windows RPC
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Feb 19 22:37:57 2023 -- 1 IP address (1 host up) scanned in 22.40 seconds

```