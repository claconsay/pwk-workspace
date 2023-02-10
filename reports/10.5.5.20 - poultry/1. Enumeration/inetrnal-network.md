**Scanning for live host using ping sweep**
```
C:\Users\poultryadmin>for /L %i in (1,1,255) do @ping -n 1 -w 200 10.5.5.%i > nul && echo 10.5.5.%i is up.
10.5.5.1 is up.
10.5.5.11 is up.
10.5.5.20 is up.
10.5.5.25 is up.
10.5.5.30 is up.
```

> [!info] 
>  10.5.5.1 = gateway
>  10.5.5.11 = zora
>  10.5.5.20 = poultry


**port scan of internal network hosts**