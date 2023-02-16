```bash
smbmap -H 10.11.1.5 -P 445 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-share-permissions.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-share-permissions.txt):

```
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -u null -p "" -H 10.11.1.5 -P 445 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-share-permissions.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-share-permissions.txt):

```
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -H 10.11.1.5 -P 445 -R 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-list-contents.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-list-contents.txt):

```
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -u null -p "" -H 10.11.1.5 -P 445 -R 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-list-contents.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-list-contents.txt):

```
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -H 10.11.1.5 -P 445 -x "ipconfig /all" 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-execute-command.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-execute-command.txt):

```
[!] Authentication error on 10.11.1.5


```
```bash
smbmap -u null -p "" -H 10.11.1.5 -P 445 -x "ipconfig /all" 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-execute-command.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp445/smbmap-execute-command.txt):

```
[!] Authentication error on 10.11.1.5


```
