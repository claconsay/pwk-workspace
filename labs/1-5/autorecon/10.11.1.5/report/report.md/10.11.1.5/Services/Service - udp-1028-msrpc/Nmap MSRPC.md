```bash
nmap -vv --reason -Pn -T4 -sU -sV -p 1028 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/udp_1028_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/xml/udp_1028_rpc_nmap.xml" 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/udp_1028_rpc_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/udp_1028_rpc_nmap.txt):

```
# Nmap 7.93 scan initiated Thu Feb 16 16:43:58 2023 as: nmap -vv --reason -Pn -T4 -sU -sV -p 1028 --script=banner,msrpc-enum,rpc-grind,rpcinfo -oN /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/udp_1028_rpc_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/xml/udp_1028_rpc_nmap.xml 10.11.1.5
Nmap scan report for 10.11.1.5
Host is up, received user-set (0.23s latency).
Scanned at 2023-02-16 16:43:59 PST for 10s

PORT     STATE SERVICE REASON               VERSION
1028/udp open  msrpc   udp-response ttl 127

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Feb 16 16:44:09 2023 -- 1 IP address (1 host up) scanned in 11.15 seconds

```
