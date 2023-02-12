**Scanning for live host using ping sweep**
```
C:\Users\poultryadmin>for /L %i in (1,1,255) do @ping -n 1 -w 200 10.5.5.%i > nul && echo 10.5.5.%i is up.
10.5.5.1 is up.
10.5.5.11 is up.
10.5.5.20 is up.
10.5.5.25 is up.
10.5.5.30 is up.
```

> [!info] 
>  10.5.5.1 = gateway
>  10.5.5.11 = zora
>  10.5.5.20 = poultry


**port scan of internal network hosts**
```
proxychains nmap --top-ports=1000 -sT -Pn 10.5.5.25,30 --open
```


```
Nmap scan report for 10.5.5.25
Host is up (11s latency).
Not shown: 18 closed tcp ports (conn-refused)
PORT     STATE SERVICE
135/tcp  open  msrpc
8080/tcp open  http-proxy

Nmap scan report for 10.5.5.30
Host is up (8.3s latency).
Not shown: 16 closed tcp ports (conn-refused)
PORT    STATE SERVICE
53/tcp  open  domain
135/tcp open  msrpc
139/tcp open  netbios-ssn
445/tcp open  microsoft-ds
```