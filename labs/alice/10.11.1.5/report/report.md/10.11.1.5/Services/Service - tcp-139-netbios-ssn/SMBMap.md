```bash
smbmap -H 10.11.1.5 -P 139 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-share-permissions.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-share-permissions.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -u null -p "" -H 10.11.1.5 -P 139 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-share-permissions.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-share-permissions.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -H 10.11.1.5 -P 139 -R 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-list-contents.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-list-contents.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -u null -p "" -H 10.11.1.5 -P 139 -R 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-list-contents.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-list-contents.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -H 10.11.1.5 -P 139 -x "ipconfig /all" 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-execute-command.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-execute-command.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -u null -p "" -H 10.11.1.5 -P 139 -x "ipconfig /all" 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-execute-command.txt](file:///home/chris/trainings/pwk/workspace/labs/alice/10.11.1.5/scans/tcp139/smbmap-execute-command.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.11.1.5


```
