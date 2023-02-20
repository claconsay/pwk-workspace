```
[1;34m[~][0m The config file is expected to be at "/.rustscan.toml"
[1;34m[~][0m File limit higher than batch size. Can increase speed by increasing batch size '-b 1048476'.
Open [35m10.11.1.72:22[0m
Open [35m10.11.1.72:25[0m
Open [35m10.11.1.72:80[0m
Open [35m10.11.1.72:110[0m
Open [35m10.11.1.72:111[0m
Open [35m10.11.1.72:119[0m
Open [35m10.11.1.72:2049[0m
Open [35m10.11.1.72:4555[0m
Open [35m10.11.1.72:46942[0m
Open [35m10.11.1.72:50070[0m
Open [35m10.11.1.72:59015[0m
Open [35m10.11.1.72:59703[0m
Open [35m10.11.1.72:59740[0m
[1;34m[~][0m Starting Script(s)
[1;38;2;0;255;9m[>][0m Script to be run Some("nmap -vvv -p {{port}} {{ip}}")

[1;34m[~][0m Starting Nmap 7.80 ( https://nmap.org ) at 2023-02-19 13:32 UTC
NSE: Loaded 151 scripts for scanning.
NSE: Script Pre-scanning.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 13:32
Completed NSE at 13:32, 0.00s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 13:32
Completed NSE at 13:32, 0.00s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 13:32
Completed NSE at 13:32, 0.00s elapsed
Initiating Parallel DNS resolution of 1 host. at 13:32
Completed Parallel DNS resolution of 1 host. at 13:32, 0.08s elapsed
DNS resolution of 1 IPs took 0.08s. Mode: Async [#: 2, OK: 0, NX: 1, DR: 0, SF: 0, TR: 1, CN: 0]
Initiating Connect Scan at 13:32
Scanning 10.11.1.72 [13 ports]
Discovered open port 111/tcp on 10.11.1.72
Discovered open port 22/tcp on 10.11.1.72
Discovered open port 80/tcp on 10.11.1.72
Discovered open port 25/tcp on 10.11.1.72
Discovered open port 110/tcp on 10.11.1.72
Discovered open port 59703/tcp on 10.11.1.72
Discovered open port 59015/tcp on 10.11.1.72
Discovered open port 119/tcp on 10.11.1.72
Discovered open port 4555/tcp on 10.11.1.72
Discovered open port 50070/tcp on 10.11.1.72
Discovered open port 59740/tcp on 10.11.1.72
Discovered open port 2049/tcp on 10.11.1.72
Discovered open port 46942/tcp on 10.11.1.72
Completed Connect Scan at 13:32, 0.50s elapsed (13 total ports)
Initiating Service scan at 13:32
Scanning 13 services on 10.11.1.72
Completed Service scan at 13:34, 117.08s elapsed (13 services on 1 host)
NSE: Script scanning 10.11.1.72.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 13:34
Completed NSE at 13:34, 19.23s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 13:34
Completed NSE at 13:34, 17.56s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 13:34
Completed NSE at 13:34, 0.00s elapsed
Nmap scan report for 10.11.1.72
Host is up, received user-set (0.25s latency).
Scanned at 2023-02-19 13:32:13 UTC for 154s

PORT      STATE SERVICE     REASON  VERSION
22/tcp    open  ssh         syn-ack OpenSSH 5.8p1 Debian 7ubuntu1 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   1024 d3:2e:10:0d:48:90:ce:9a:33:fb:66:3f:a0:a6:94:48 (DSA)
| ssh-dss AAAAB3NzaC1kc3MAAACBAMitoEPHwhLtqgyZKDkSKSDB0ic66YpEENrxPM719tjkvBBDtU6GvL6qtaIoprP4V9Z+HDbpvfo0IFzIB+5Rpax8nDmQ3eE5C1xLZnM5senaT4p/DYmAb5gFkfGKbW3TQXCVDuWCoXhFmR3ASl4QdTxHE0u0o/Baz+NkTzp1nCUdAAAAFQC8y+gwNo5fmutb6nKAptTuWl57QwAAAIANIUDboqT1JfHMLMdp1sVpb3LepIg3Mp+DMaYy7LfdEYlowdUTQRUuUgPg0EOmSslYGxcBWqX5gVpHE/J69//h8wkdNr5Vf0BI/Yb2nkxfZPY4tKAs8HpigIYz2sZGXPQ065/MmUnX8cGc7fsFtDmxRVPlya/rpu/cOyInX6wk9wAAAIAtY4150Bens+6ICo+nBslLEoINWEHyAyF0EljGREjHVXi1FEWu2JOapfKFpAuwAzyOs9f85iZIgajQnecZU5MdWfgQoV0kLau+HG3a7PGiLz8GwU7E5AA5Y9fE5OofmpqNT3aPQGwPGJLfcD3J5YSK032p1UhN45AKmIGs8VX8FA==
|   2048 ef:0a:3b:8e:3f:92:a4:5e:f0:ab:e7:7d:75:f0:de:0e (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDoc1RkHcBapBWBiHYIZT49g7jts0VDBxh4DUw18dce8WN+Bt1qFHaL2Keh49InHaqPZte8R0zycsSKNyhngflYYLp6oi2jV4kiklqw7lZPMW/jhNbwlmZoLohmmqOvOdiRYvSBeK37IOXB1H3wXMIITjpXTaF9jg7lq08KXwBv6YpW+uTobjGJDqKdPWqGertDwuhblW2paj35z0htJiTEcVmxvt5taMCHMib9fTgIjLBZ9I3evcpAsE/dReVUQCeRwW3nnWctGoaa+ZZj8dLdAWivGh3wn2zfH+5sbg3rrpMbXjr4wFJL5Lq5HPhaIORTsJ27Lbhifdyngx2slP1P
|   256 15:3a:65:3b:97:ed:e0:fc:85:bc:4b:53:48:22:61:b1 (ECDSA)
|_ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFIHoHVbsZi2WEt5b8d7WUXzy4m7jbo4OQvhVwVH3ItyjzCEmCmY++9upGtTLp1TW1j6Zqm5H004nMHx7GGS+JU=
25/tcp    open  smtp        syn-ack JAMES smtpd 2.3.2
|_smtp-commands: beta Hello nmap.scanme.org (192.168.119.140 [192.168.119.140]), 
80/tcp    open  http        syn-ack Apache httpd 2.2.20 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache/2.2.20 (Ubuntu)
|_http-title: Site doesn't have a title (text/html).
110/tcp   open  pop3        syn-ack JAMES pop3d 2.3.2
111/tcp   open  rpcbind     syn-ack 2-4 (RPC #100000)
| rpcinfo: 
|   program version    port/proto  service
|   100000  2,3,4        111/tcp   rpcbind
|   100000  2,3,4        111/udp   rpcbind
|   100000  3,4          111/tcp6  rpcbind
|   100000  3,4          111/udp6  rpcbind
|   100003  2,3,4       2049/tcp   nfs
|   100003  2,3,4       2049/tcp6  nfs
|   100003  2,3,4       2049/udp   nfs
|   100003  2,3,4       2049/udp6  nfs
|   100005  1,2,3      35349/tcp6  mountd
|   100005  1,2,3      37290/udp6  mountd
|   100005  1,2,3      46783/udp   mountd
|   100005  1,2,3      59703/tcp   mountd
|   100021  1,3,4      36828/udp6  nlockmgr
|   100021  1,3,4      46020/udp   nlockmgr
|   100021  1,3,4      54793/tcp6  nlockmgr
|   100021  1,3,4      59015/tcp   nlockmgr
|   100024  1          40753/udp   status
|   100024  1          45358/udp6  status
|   100024  1          50101/tcp6  status
|   100024  1          59740/tcp   status
|   100227  2,3         2049/tcp   nfs_acl
|   100227  2,3         2049/tcp6  nfs_acl
|   100227  2,3         2049/udp   nfs_acl
|_  100227  2,3         2049/udp6  nfs_acl
119/tcp   open  nntp        syn-ack JAMES nntpd (posting ok)
2049/tcp  open  nfs_acl     syn-ack 2-3 (RPC #100227)
4555/tcp  open  james-admin syn-ack JAMES Remote Admin 2.3.2
46942/tcp open  mountd      syn-ack 1-3 (RPC #100005)
50070/tcp open  mountd      syn-ack 1-3 (RPC #100005)
59015/tcp open  nlockmgr    syn-ack 1-4 (RPC #100021)
59703/tcp open  mountd      syn-ack 1-3 (RPC #100005)
59740/tcp open  status      syn-ack 1 (RPC #100024)
Service Info: Host: beta; OS: Linux; CPE: cpe:/o:linux:linux_kernel

NSE: Script Post-scanning.
NSE: Starting runlevel 1 (of 3) scan.
Initiating NSE at 13:34
Completed NSE at 13:34, 0.00s elapsed
NSE: Starting runlevel 2 (of 3) scan.
Initiating NSE at 13:34
Completed NSE at 13:34, 0.00s elapsed
NSE: Starting runlevel 3 (of 3) scan.
Initiating NSE at 13:34
Completed NSE at 13:34, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 154.76 seconds
```