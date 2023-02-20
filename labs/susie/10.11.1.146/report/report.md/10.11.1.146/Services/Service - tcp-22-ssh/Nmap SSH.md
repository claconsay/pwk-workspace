```bash
nmap -vv --reason -Pn -T4 -sV -p 22 --script="banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods" -oN "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/tcp_22_ssh_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/xml/tcp_22_ssh_nmap.xml" 10.11.1.146
```

[/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/tcp_22_ssh_nmap.txt](file:///home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/tcp_22_ssh_nmap.txt):

```
# Nmap 7.93 scan initiated Sun Feb 19 22:38:00 2023 as: nmap -vv --reason -Pn -T4 -sV -p 22 --script=banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods -oN /home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/tcp_22_ssh_nmap.txt -oX /home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/xml/tcp_22_ssh_nmap.xml 10.11.1.146
Nmap scan report for 10.11.1.146
Host is up, received user-set (0.22s latency).
Scanned at 2023-02-19 22:38:00 PST for 9s

PORT   STATE SERVICE REASON  VERSION
22/tcp open  ssh     syn-ack OpenSSH 7.4p1 Ubuntu 10 (Ubuntu Linux; protocol 2.0)
| ssh-auth-methods: 
|   Supported authentication methods: 
|     publickey
|_    password
| ssh2-enum-algos: 
|   kex_algorithms: (10)
|       curve25519-sha256
|       curve25519-sha256@libssh.org
|       ecdh-sha2-nistp256
|       ecdh-sha2-nistp384
|       ecdh-sha2-nistp521
|       diffie-hellman-group-exchange-sha256
|       diffie-hellman-group16-sha512
|       diffie-hellman-group18-sha512
|       diffie-hellman-group14-sha256
|       diffie-hellman-group14-sha1
|   server_host_key_algorithms: (5)
|       ssh-rsa
|       rsa-sha2-512
|       rsa-sha2-256
|       ecdsa-sha2-nistp256
|       ssh-ed25519
|   encryption_algorithms: (6)
|       chacha20-poly1305@openssh.com
|       aes128-ctr
|       aes192-ctr
|       aes256-ctr
|       aes128-gcm@openssh.com
|       aes256-gcm@openssh.com
|   mac_algorithms: (10)
|       umac-64-etm@openssh.com
|       umac-128-etm@openssh.com
|       hmac-sha2-256-etm@openssh.com
|       hmac-sha2-512-etm@openssh.com
|       hmac-sha1-etm@openssh.com
|       umac-64@openssh.com
|       umac-128@openssh.com
|       hmac-sha2-256
|       hmac-sha2-512
|       hmac-sha1
|   compression_algorithms: (2)
|       none
|_      zlib@openssh.com
|_banner: SSH-2.0-OpenSSH_7.4p1 Ubuntu-10
| ssh-hostkey: 
|   2048 e373a948819d90bc7075818a3de8956f (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDlrmnbyVOMFMbqRmKO9h0Omv6odlv6tAqlZbKeiOhsYz6AqzfpGQmARw4ws8+qGGdSj0B5ICTNUoYGrpYuS0YNXZBwi1pt6K0WqYv8wyrqoQeWK+jlz9FOdzES2d8WbxVtesp96PGlHnM5nJs4COJt7WsdA1QBF2+xkmZjImSawdoAlsmtpMBxP6vPjnGBsBnNFnIKoHdWfz5TriY958//Zco/TYK3pwM4xKy4ip0zZ3T8xqKmwqhbD0vwRbV5qZMugOlgPtxUP4/UzudiuvO1COqDBNemA5S9jBy8yqqLyA0qfdg0N6Gm8X2iBNHw2D0RZ1C8PjoyGPeDvV34Frkt
|   256 0e7622d020ca1e96e97ba59a86e7f6d4 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBk5w06Kdjm6NPbI4k1oJG79cOii6bdCfSXlp7QjZMqyiVgtooCGdF2KmS0gtEfXaC4nt0MFhf4QQzORdxdtZjw=
|   256 57e1e406a3796d03536cd67b67ed86dc (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFCXoJ6KMRCRIT3IzvO/fDY3Z99e4CicyEerj+lO6CBM
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Feb 19 22:38:09 2023 -- 1 IP address (1 host up) scanned in 8.92 seconds

```
