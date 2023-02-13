**Scanning SMB using nmap**
```
nmap --script=smb-enum* -p445 -Pn 10.11.1.31
```

**Connect to SMB**
```
smbclient //10.11.1.31/wwwroot
```