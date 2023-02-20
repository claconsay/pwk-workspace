```
Nmap scan report for 10.11.1.72
Host is up, received user-set (0.23s latency).
Scanned at 2023-02-19 15:56:23 PST for 1189s
Not shown: 65442 closed tcp ports (reset), 80 filtered tcp ports (no-response)
PORT      STATE SERVICE     REASON         VERSION
22/tcp    open  ssh         syn-ack ttl 63 OpenSSH 5.8p1 Debian 7ubuntu1 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   1024 d32e100d4890ce9a33fb663fa0a69448 (DSA)
| ssh-dss AAAAB3NzaC1kc3MAAACBAMitoEPHwhLtqgyZKDkSKSDB0ic66YpEENrxPM719tjkvBBDtU6GvL6qtaIoprP4V9Z+HDbpvfo0IFzIB+5Rpax8nDmQ3eE5C1xLZnM5senaT4p/DYmAb5gFkfGKbW3TQXCVDuWCoXhFmR3ASl4QdTxHE0u0o/Baz+NkTzp1nCUdAAAAFQC8y+gwNo5fmutb6nKAptTuWl57QwAAAIANIUDboqT1JfHMLMdp1sVpb3LepIg3Mp+DMaYy7LfdEYlowdUTQRUuUgPg0EOmSslYGxcBWqX5gVpHE/J69//h8wkdNr5Vf0BI/Yb2nkxfZPY4tKAs8HpigIYz2sZGXPQ065/MmUnX8cGc7fsFtDmxRVPlya/rpu/cOyInX6wk9wAAAIAtY4150Bens+6ICo+nBslLEoINWEHyAyF0EljGREjHVXi1FEWu2JOapfKFpAuwAzyOs9f85iZIgajQnecZU5MdWfgQoV0kLau+HG3a7PGiLz8GwU7E5AA5Y9fE5OofmpqNT3aPQGwPGJLfcD3J5YSK032p1UhN45AKmIGs8VX8FA==
|   2048 ef0a3b8e3f92a45ef0abe77d75f0de0e (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDoc1RkHcBapBWBiHYIZT49g7jts0VDBxh4DUw18dce8WN+Bt1qFHaL2Keh49InHaqPZte8R0zycsSKNyhngflYYLp6oi2jV4kiklqw7lZPMW/jhNbwlmZoLohmmqOvOdiRYvSBeK37IOXB1H3wXMIITjpXTaF9jg7lq08KXwBv6YpW+uTobjGJDqKdPWqGertDwuhblW2paj35z0htJiTEcVmxvt5taMCHMib9fTgIjLBZ9I3evcpAsE/dReVUQCeRwW3nnWctGoaa+ZZj8dLdAWivGh3wn2zfH+5sbg3rrpMbXjr4wFJL5Lq5HPhaIORTsJ27Lbhifdyngx2slP1P
|   256 153a653b97ede0fc85bc4b53482261b1 (ECDSA)
|_ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFIHoHVbsZi2WEt5b8d7WUXzy4m7jbo4OQvhVwVH3ItyjzCEmCmY++9upGtTLp1TW1j6Zqm5H004nMHx7GGS+JU=
25/tcp    open  smtp        syn-ack ttl 63 JAMES smtpd 2.3.2
|_smtp-commands: beta Hello nmap.scanme.org (192.168.119.140 [192.168.119.140])
80/tcp    open  http        syn-ack ttl 63 Apache httpd 2.2.20 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Site doesn't have a title (text/html).
|_http-server-header: Apache/2.2.20 (Ubuntu)
110/tcp   open  pop3        syn-ack ttl 63 JAMES pop3d 2.3.2
111/tcp   open  rpcbind     syn-ack ttl 63 2-4 (RPC #100000)
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
|   100005  1,2,3      41251/udp6  mountd
|   100005  1,2,3      42081/tcp6  mountd
|   100005  1,2,3      53887/udp   mountd
|   100005  1,2,3      59807/tcp   mountd
|   100021  1,3,4      37274/tcp6  nlockmgr
|   100021  1,3,4      38686/tcp   nlockmgr
|   100021  1,3,4      43832/udp6  nlockmgr
|   100021  1,3,4      56742/udp   nlockmgr
|   100024  1          34281/tcp   status
|   100024  1          36248/udp   status
|   100024  1          50684/tcp6  status
|   100024  1          57848/udp6  status
|   100227  2,3         2049/tcp   nfs_acl
|   100227  2,3         2049/tcp6  nfs_acl
|   100227  2,3         2049/udp   nfs_acl
|_  100227  2,3         2049/udp6  nfs_acl
119/tcp   open  nntp        syn-ack ttl 63 JAMES nntpd (posting ok)
2049/tcp  open  nfs_acl     syn-ack ttl 63 2-3 (RPC #100227)
4555/tcp  open  james-admin syn-ack ttl 63 JAMES Remote Admin 2.3.2
34281/tcp open  status      syn-ack ttl 63 1 (RPC #100024)
38686/tcp open  nlockmgr    syn-ack ttl 63 1-4 (RPC #100021)
49021/tcp open  mountd      syn-ack ttl 63 1-3 (RPC #100005)
56242/tcp open  mountd      syn-ack ttl 63 1-3 (RPC #100005)
59807/tcp open  mountd      syn-ack ttl 63 1-3 (RPC #100005)
OS fingerprint not ideal because: maxTimingRatio (1.454000e+00) is greater than 1.4
Aggressive OS guesses: Linux 3.2 - 3.8 (95%), Linux 3.8 (95%), WatchGuard Fireware 11.8 (95%), Linux 3.5 (93%), Linux 3.1 - 3.2 (93%), Linux 2.6.32 - 2.6.39 (93%), Linux 3.0 - 3.2 (92%), Linux 2.6.32 (91%), Linux 2.6.32 or 3.10 (91%), Linux 3.0 (91%)
No exact OS matches for host (test conditions non-ideal).
TCP/IP fingerprint:
SCAN(V=7.93%E=4%D=2/19%OT=22%CT=1%CU=40368%PV=Y%DS=2%DC=T%G=N%TM=63F1DACC%P=x86_64-pc-linux-gnu)
SEQ(SP=104%GCD=1%ISR=106%TI=Z%TS=8)
SEQ(SP=104%GCD=1%ISR=106%TI=Z%II=I%TS=8)
OPS(O1=M551ST11NW4%O2=M551ST11NW4%O3=M551NNT11NW4%O4=M551ST11NW4%O5=M551ST11NW4%O6=M551ST11)
WIN(W1=3890%W2=3890%W3=3890%W4=3890%W5=3890%W6=3890)
ECN(R=Y%DF=Y%T=40%W=3908%O=M551NNSNW4%CC=Y%Q=)
T1(R=Y%DF=Y%T=40%S=O%A=S+%F=AS%RD=0%Q=)
T2(R=N)
T3(R=N)
T4(R=N)
T5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
T6(R=N)
T7(R=N)
U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)
IE(R=Y%DFI=N%T=40%CD=S)

Uptime guess: 0.016 days (since Sun Feb 19 15:53:47 2023)
Network Distance: 2 hops
TCP Sequence Prediction: Difficulty=261 (Good luck!)
IP ID Sequence Generation: All zeros
Service Info: Host: beta; OS: Linux; CPE: cpe:/o:linux:linux_kernel
```