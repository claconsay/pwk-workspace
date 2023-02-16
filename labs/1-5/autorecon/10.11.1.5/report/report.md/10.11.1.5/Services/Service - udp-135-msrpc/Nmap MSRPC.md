```bash
nmap -vv --reason -Pn -T4 -sU -sV -p 135 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/udp_135_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/xml/udp_135_rpc_nmap.xml" 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/udp_135_rpc_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/udp_135_rpc_nmap.txt):

```
# Nmap 7.93 scan initiated Thu Feb 16 16:43:58 2023 as: nmap -vv --reason -Pn -T4 -sU -sV -p 135 --script=banner,msrpc-enum,rpc-grind,rpcinfo -oN /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/udp_135_rpc_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/xml/udp_135_rpc_nmap.xml 10.11.1.5
Nmap scan report for 10.11.1.5
Host is up, received user-set (0.22s latency).
Scanned at 2023-02-16 16:43:59 PST for 0s

PORT    STATE SERVICE REASON               VERSION
135/udp open  msrpc   udp-response ttl 127

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Feb 16 16:43:59 2023 -- 1 IP address (1 host up) scanned in 1.14 seconds

```
