```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_quick_tcp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_quick_tcp_nmap.xml" 10.11.1.5

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_full_tcp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_full_tcp_nmap.xml" 10.11.1.5

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_quick_tcp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_quick_tcp_nmap.xml" 10.11.1.5

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_full_tcp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_full_tcp_nmap.xml" 10.11.1.5

nmap -vv --reason -Pn -T4 -sU -A --top-ports 100 -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/_top_100_udp_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/xml/_top_100_udp_nmap.xml" 10.11.1.5

impacket-getArch -target 10.11.1.5

nmap -vv --reason -Pn -T4 -sV -p 135 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp135/tcp_135_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp135/xml/tcp_135_rpc_nmap.xml" 10.11.1.5

impacket-rpcdump -port 135 10.11.1.5

enum4linux -a -M -l -d 10.11.1.5 2>&1

nbtscan -rvh 10.11.1.5 2>&1

nmap -vv --reason -Pn -T4 -sV -p 139 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp139/tcp_139_smb_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp139/xml/tcp_139_smb_nmap.xml" 10.11.1.5

smbclient -L //10.11.1.5 -N -I 10.11.1.5 2>&1

smbmap -H 10.11.1.5 -P 139 2>&1

nmap -vv --reason -Pn -T4 -sV -p 445 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/tcp_445_smb_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/xml/tcp_445_smb_nmap.xml" 10.11.1.5

smbmap -H 10.11.1.5 -P 445 2>&1

nmap -vv --reason -Pn -T4 -sV -p 1025 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp1025/tcp_1025_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp1025/xml/tcp_1025_rpc_nmap.xml" 10.11.1.5

smbmap -u null -p "" -H 10.11.1.5 -P 445 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 139 2>&1

smbmap -H 10.11.1.5 -P 445 -R 2>&1

smbmap -H 10.11.1.5 -P 139 -R 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 139 -R 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 445 -R 2>&1

smbmap -H 10.11.1.5 -P 139 -x "ipconfig /all" 2>&1

smbmap -H 10.11.1.5 -P 445 -x "ipconfig /all" 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 139 -x "ipconfig /all" 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 445 -x "ipconfig /all" 2>&1

impacket-getArch -target 10.11.1.5

nmap -vv --reason -Pn -T4 -sU -sV -p 135 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/udp_135_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp135/xml/udp_135_rpc_nmap.xml" 10.11.1.5

nmap -vv --reason -Pn -T4 -sU -sV -p 137 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp137/udp_137_smb_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp137/xml/udp_137_smb_nmap.xml" 10.11.1.5

smbmap -H 10.11.1.5 -P 137 2>&1

impacket-getArch -target 10.11.1.5

nmap -vv --reason -Pn -T4 -sU -sV -p 1028 --script="banner,msrpc-enum,rpc-grind,rpcinfo" -oN "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/udp_1028_rpc_nmap.txt" -oX "/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/udp1028/xml/udp_1028_rpc_nmap.xml" 10.11.1.5

smbmap -u null -p "" -H 10.11.1.5 -P 137 2>&1

smbmap -H 10.11.1.5 -P 137 -R 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 137 -R 2>&1

smbmap -H 10.11.1.5 -P 137 -x "ipconfig /all" 2>&1

smbmap -u null -p "" -H 10.11.1.5 -P 137 -x "ipconfig /all" 2>&1


```