```bash
impacket-rpcdump -port 135 10.11.1.5
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp135/tcp_135_rpc_rpcdump.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp135/tcp_135_rpc_rpcdump.txt):

```
Impacket v0.10.0 - Copyright 2022 SecureAuth Corporation

[*] Retrieving endpoint list from 10.11.1.5
Protocol: [MS-MSRP]: Messenger Service Remote Protocol
Provider: msgsvc.dll
UUID    : 5A7B91F8-FF00-11D0-A9B2-00C04FB6E6FC v1.0 Messenger Service
Bindings:
          ncadg_ip_udp:10.11.1.5[1028]
          ncacn_np:\\ALICE[\PIPE\msgsvc]
          ncacn_np:\\ALICE[\PIPE\srvsvc]
          ncalrpc:[keysvc]
          ncacn_np:\\ALICE[\pipe\keysvc]
          ncalrpc:[trkwks]
          ncacn_np:\\ALICE[\pipe\trkwks]
          ncacn_np:\\ALICE[\PIPE\SECLOGON]
          ncacn_np:\\ALICE[\PIPE\wkssvc]
          ncalrpc:[AudioSrv]
          ncacn_np:\\ALICE[\PIPE\atsvc]
          ncacn_ip_tcp:10.11.1.5[1025]
          ncalrpc:[OLE3]

Protocol: N/A
Provider: schedsvc.dll
UUID    : 0A74EF1C-41A4-4E06-83AE-DC74FB1CDD53 v1.0
Bindings:
          ncacn_np:\\ALICE[\PIPE\atsvc]
          ncacn_ip_tcp:10.11.1.5[1025]
          ncalrpc:[OLE3]

Protocol: [MS-TSCH]: Task Scheduler Service Remoting Protocol
Provider: taskcomp.dll
UUID    : 378E52B0-C0A9-11CF-822D-00AA0051E40F v1.0
Bindings:
          ncacn_np:\\ALICE[\PIPE\atsvc]
          ncacn_ip_tcp:10.11.1.5[1025]
          ncalrpc:[OLE3]

Protocol: [MS-TSCH]: Task Scheduler Service Remoting Protocol
Provider: taskcomp.dll
UUID    : 1FF70682-0A51-30E8-076D-740BE8CEE98B v1.0
Bindings:
          ncacn_np:\\ALICE[\PIPE\atsvc]
          ncacn_ip_tcp:10.11.1.5[1025]
          ncalrpc:[OLE3]

[*] Received 22 endpoints.


```
