**check open ports internally**
```
netstat -ano
```

**enumerate domain user**
```
net user /domain alex
```

**Scan for auto running services**
```
wmic service get name,displayname,pathname,startmode |findstr /i "auto" |findstr /i /v "c:\windows"
```

**Connect using RDP**
```
proxychains xfreerdp /d:sandbox /u:alex /v:10.5.5.20 +clipboard /tls-seclevel:0 /timeout:80000
```

