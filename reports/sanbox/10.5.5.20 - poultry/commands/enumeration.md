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

**One-liner ping sweep to scan network**
```
for /L %i in (1,1,255) do @ping -n 1 -w 200 10.5.5.%i > nul && echo 10.5.5.%i is up.
```
