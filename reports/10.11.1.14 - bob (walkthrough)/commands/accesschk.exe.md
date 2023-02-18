**Look for vulnerable services we can exploit**
```
C:\Inetpub\Scripts>accesschk.exe /accepteula -uwcqv "Authenticated Users" *

# If we are on a Windows XP SP0 or SP1 OS we will receive the following output

RW SSDPSRV
        SERVICE_ALL_ACCESS
RW upnphost
        SERVICE_ALL_ACCESS
```
*The output implies that we have access to two services from which we can edit the service parameters, named `upnphost` and `SSDPSRV`.*

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