| Header            | Value                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| IP                | 10.11.1.71                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Name              | ALPHA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Difficulty        | Easy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| PEN-200 Modules   | Active Information Gathering, Using Public Exploits, Privilege Escalation, Password Attacks                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Target Service(s) | WEB SERVER                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Details           | This  machine contains a web application that does not contain an  unauthenticated exploitable vulnerability. The actual initial foothold  can be obtained by exploiting a shocking vulnerability in the web server  itself. Once a low-privilege shell is obtained, privilege escalation  can be obtained either through password reuse (found on the same  machine), or through exploitation of another running service.   Therefore, post-exploitation enumeration is critical.     This machine is a part of  Offsec's methodology forum posting guide ,  w here a full and detailed writeup can be found. We encourage you to try it on your own before reading the writeup. |

***

| Header            | Value                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| IP                | 10.11.1.72                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Name              | BETA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Difficulty        | Easy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| PEN-200 Modules   | Active Information Gathering, Using Public Exploits, Privilege Escalation, Password Attacks                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Target Service(s) | WEB SERVER                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Details           | This machine contains an unusual application running on an uncommon port. Once identified, the application can be accessed by abusing weak credentials. A part of the  functionality offered by this application is the ability to reset the password for arbitrary users.   Taking this path allows an attacker to obtain additional information that will lead to a restricted shell to the machine itself. However, the application itself also suffers from a vulnerability that can be used to obtain a  low-privilege shell. Once access is obtained, privilege escalation can be achieved using a number of public kernel exploit |

***

| Header | Value |
|---|---|
| IP | 10.11.1.5 |
| Name | ALICE |
| Difficulty | Easy |
| PEN-200 Modules | Active Information Gathering, Using Public Exploits, Metasploit Framework,  File Transfers, Password Attacks |
| Target Service(s) | SMB |
| Details | This machine is one of the “low-hanging fruits” in the labs and is designed to give the student an easy win with a simple Metasploit exploit. It is based on a very old  operating system that is vulnerable to at least 2 different exploits against the target service. No privilege escalation is necessary as the target services run as SYSTEM.    However, it is important to perform post-exploitation enumeration, including password hash recovery and cracking. Furthermore,  additional files on the system are  susceptible to weak credentials and could be useful later on. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.13 |
| Name | DISCO |
| Difficulty | Easy |
| PEN-200 Modules | Active Information Gathering, File Transfers, Web Application Attacks, Privilege Escalation, Using Public Exploits |
| Target Service(s) | FTP, IIS |
| Details | This is an easy machine designed to  allow the student to practice gaining unauthorized access based on weak  or non-existing authentication to a very common service. This access  then allows the attacker to upload arbitrary files to the target system  that can be used to gain a low-privilege shell. Identifying the user  context under which the initial shell access is obtained allows the  attacker to grab a bag of potato chips, find the very well-known exploit  for the target service, and enjoy a SYSTEM-level shell. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.146 |
| Name | SUSIE |
| Difficulty | Easy |
| PEN-200 Modules | Active Information Gathering, Using Public Exploits, Metasploit Framework |
| Target Service(s) | SMB |
| Details | This machine is one of the  “low-hanging fruits” in the labs and is designed to give the student an  easy win with a simple Metasploit exploit. In this case, the goal is  simply to perform proper initial enumeration and to identify the  versions of running services. With this information, it is trivial to  find the appropriate exploit and obtain a root-level shell. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.217 |
| Name | HOTLINE |
| Difficulty | Easy |
| PEN-200 Modules | Active Information Gathering, Using Public Exploits, Privilege Escalation |
| Target Service(s) | HTTP |
| Details | This machine is one of the 'low hanging fruit' targets in the labs. It  runs a service which suffers from weak authentication, therefore  providing an initial foothold. This allows the attacker to find  additional information about the same service, which turns out to be  vulnerable to RCE. The exploit requires some customization. Privilege  escalation can then be accomplished by focusing on enumeration,  specifically of misconfigured permission settings. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.222 |
| Name | CHRIS |
| Difficulty | Medium |
| PEN-200 Modules | Active Information Gathering, Web Application Attacks, Password Attacks |
| Target Service(s) | Web App, Oracle DB |
| Details | This machine is designed to expose  the student to some traditional web application attacks. One of the  fundamental parts of attacking web apps is to first identify as much of  the attack surface as possible. Therefore, enumeration is important to  make any progress. When the vulnerable page is found, students will need  to rely on the knowledge acquired in the PEN-200 Web Application  Attacks module to manually probe the input points and identify the vulnerability.    Once identified, the vulnerability  can be used to extract information about and from the backend database,  which includes items such as password hashes. Again, identification of  the type of hash and cracking thereof is critical for a complete  compromise of the target system. Because of the machine's configuration,  no privilege escalation is necessary. However, further exploration of  the compromised system is encouraged. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.231 |
| Name | MAILMAN |
| Difficulty | Medium |
| PEN-200 Modules | Active Information Gathering, Using Public Exploits, Privilege Escalation |
| Target Service(s) | SMB, SMTP |
| Details | Extensive enumeration of this machine  reveals that, shockingly, it is vulnerable to the same type of exploit  that also affects Alpha. At the time of this writing, the exploit itself  is not present in the Metasploit framework, but it can be found using  SearchSploit.    The machine is designed to allow the  student to practice privilege escalation identification. More  specifically, obtaining root privileges does not rely on any exploit but  rather on a misconfiguration, which can be identified once a  low-privilege shell is obtained. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.123 |
| Name | XOR-APP59 |
| Difficulty | Medium |
| PEN-200 Modules | Active Information Gathering, Password Attacks, Web Application Attacks, Active Directory Attacks |
| Target Service(s) | AD, SPN |
| Details | This machine is the entry point for one  of our Active Directory deployments and exploitation chains in the  PEN-200 labs. It contains a little bit of everything: a web application  that first needs to be discovered using enumeration techniques described  in Web Application Attacks, weak credentials, and the ability to upload  malicious web files that are not properly filtered, resulting in a  SYSTEM shell. Finally, this allows an attacker to roast the SQL Service  Principal Names (SPNs) and crack the obtained ticket. These credentials  can then be used to access XOR-APP23, the next machine in this AD chain. |

***

| Header | Value |
|---|---|
| IP | 10.1.1.246 |
| Name | SEAN |
| Difficulty | Medium |
| PEN-200 Modules | Active Information Gathering, Password Attacks, Web Application Attacks, Port Redirection and Tunneling |
| Target Service(s) | FTP, SSH |
| Details | This machine can be accessed via the 10.11.1.251 router  inside the public network. Reverting the router will also revert Sean to  its original pristine state.  It  contains a very badly hidden web application with a vulnerable WordPress  plugin. More information about the application can be found by using  unauthenticated access to a non-web service and/or by standard web  enumeration techniques. The most important part is to identify the  vulnerable plugin. Exploiting it, obtaining the password hashes and  cracking them is not difficult as popular automation tools can be used.  Similarly, obtaining root privileges is also trivial due to excessive  privileges of the compromised user.     Nevertheless, the most important  function of this machine is that it enables pivoting to the PEN-200 Labs  IT Network. As such, it is designed to allow students to practice  enumeration and exploitation of machines over tunneled connections. We  encourage students to fully explore and practice this type of access to  otherwise unreachable subnets. |

***

| Header | Value |
|---|---|
| IP | 10.11.1.50 |
| Name | BETHANY |
| Difficulty | Hard |
| PEN-200 Modules | Active Information Gathering, Web Application Attacks, Antivirus Evasion, Password Attacks, Web Application Attacks Port Redirection and Tunneling |
| Target Service(s) | Web Server, AntiVirus |
| Details | This machine is designed to allow  students to practice antivirus evasion. However, before getting to that  point in the exploitation chain, students will need to identify multiple  web servers running on the target system. One of these suffers from a  remote command execution vulnerability with a publicly available  exploit.   In order to gain code execution,  students have multiple tools at their disposal that can create or modify  standard malicious binary files. Please note that some work better than  others so if you are not making progress, try a different tool.   Once a shell is obtained, it is  critical to perform proper system enumeration. This will reveal that  this particular machine has connections to a previously exploited  machine in this list. Note that in order to make use of obtained  information from that machine, traffic redirection  techniques  will be needed. |