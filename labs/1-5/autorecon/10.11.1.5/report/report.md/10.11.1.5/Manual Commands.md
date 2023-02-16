```bash
[*] msrpc on tcp/135

	[-] RPC Client:

		rpcclient -p 135 -U "" 10.11.1.5

[*] netbios-ssn on tcp/139

	[-] Bruteforce SMB

		crackmapexec smb 10.11.1.5 --port=139 -u "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -p "/usr/share/seclists/Passwords/darkweb2017-top100.txt"

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sV -p 139 --script="smb-vuln-* and dos" --script-args="unsafe=1" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp139/tcp_139_smb_vulnerabilities.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp139/xml/tcp_139_smb_vulnerabilities.xml" 10.11.1.5

[*] microsoft-ds on tcp/445

	[-] Bruteforce SMB

		crackmapexec smb 10.11.1.5 --port=445 -u "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -p "/usr/share/seclists/Passwords/darkweb2017-top100.txt"

	[-] Lookup SIDs

		impacket-lookupsid '[username]:[password]@10.11.1.5'

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sV -p 445 --script="smb-vuln-* and dos" --script-args="unsafe=1" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/tcp_445_smb_vulnerabilities.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/xml/tcp_445_smb_vulnerabilities.xml" 10.11.1.5

[*] msrpc on tcp/1025

	[-] RPC Client:

		rpcclient -p 1025 -U "" 10.11.1.5

[*] msrpc on udp/135

	[-] RPC Client:

		rpcclient -p 135 -U "" 10.11.1.5

[*] netbios-ns on udp/137

	[-] Bruteforce SMB

		crackmapexec smb 10.11.1.5 --port=137 -u "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -p "/usr/share/seclists/Passwords/darkweb2017-top100.txt"

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sU -sV -p 137 --script="smb-vuln-* and dos" --script-args="unsafe=1" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp137/udp_137_smb_vulnerabilities.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp137/xml/udp_137_smb_vulnerabilities.xml" 10.11.1.5

[*] msrpc on udp/1028

	[-] RPC Client:

		rpcclient -p 1028 -U "" 10.11.1.5


```