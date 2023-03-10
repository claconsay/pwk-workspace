```bash
enum4linux -a -M -l -d 10.11.1.5 2>&1
```

[/home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp139/enum4linux.txt](file:///home/chris/trainings/pwk/workspace/labs/1-21/results/10.11.1.5/scans/tcp139/enum4linux.txt):

```
Starting enum4linux v0.9.1 ( http://labs.portcullis.co.uk/application/enum4linux/ ) on Thu Feb 16 16:41:56 2023

[34m =========================================( [0m[32mTarget Information[0m[34m )=========================================

[0mTarget ........... 10.11.1.5
RID Range ........ 500-550,1000-1050
Username ......... ''
Password ......... ''
Known Usernames .. administrator, guest, krbtgt, domain admins, root, bin, none


[34m =============================( [0m[32mEnumerating Workgroup/Domain on 10.11.1.5[0m[34m )=============================

[0m[33m
[+] [0m[32mGot domain/workgroup name: THINC

[0m
[34m =================================( [0m[32mNbtstat Information for 10.11.1.5[0m[34m )=================================

[0mLooking up status of 10.11.1.5
	ALICE           <00> -         B <ACTIVE>  Workstation Service
	ALICE           <20> -         B <ACTIVE>  File Server Service
	THINC           <00> - <GROUP> B <ACTIVE>  Domain/Workgroup Name
	ALICE           <03> -         B <ACTIVE>  Messenger Service
	THINC           <1e> - <GROUP> B <ACTIVE>  Browser Service Elections
	THINC           <1d> -         B <ACTIVE>  Master Browser
	..__MSBROWSE__. <01> - <GROUP> B <ACTIVE>  Master Browser

	MAC Address = 00-50-56-86-1B-45

[34m =====================================( [0m[32mSession Check on 10.11.1.5[0m[34m )=====================================

[0m[33m
[+] [0m[32mServer 10.11.1.5 allows sessions using username '', password ''

[0m
[34m =============================( [0m[32mGetting information via LDAP for 10.11.1.5[0m[34m )=============================

[0m[33m
[+] [0m[32m10.11.1.5 appears to be a child DC

[0m
[34m ==================================( [0m[32mGetting domain SID for 10.11.1.5[0m[34m )==================================

[0mDomain Name: THINC
Domain Sid: S-1-5-21-4254429285-501146052-1604752251
[33m
[+] [0m[32mHost is part of a domain (not a workgroup)

[0m
[34m ====================================( [0m[32mOS information on 10.11.1.5[0m[34m )====================================

[0m[33m
[E] [0m[31mCan't get OS info with smbclient

[0m[33m
[+] [0m[32mGot OS info for 10.11.1.5 from srvinfo:
[0m	10.11.1.5      Wk Sv NT PtB LMB
	platform_id     :	500
	os version      :	5.1
	server type     :	0x51003


[34m =========================================( [0m[32mUsers on 10.11.1.5[0m[34m )=========================================

[0m[33m
[E] [0m[31mCouldn't find users using querydispinfo: NT_STATUS_ACCESS_DENIED

[0m
[33m
[E] [0m[31mCouldn't find users using enumdomusers: NT_STATUS_ACCESS_DENIED

[0m
[34m ==================================( [0m[32mMachine Enumeration on 10.11.1.5[0m[34m )==================================

[0m[33m
[E] [0m[31mNot implemented in this version of enum4linux.

[0m
[34m ===================================( [0m[32mShare Enumeration on 10.11.1.5[0m[34m )===================================

[0m
	Sharename       Type      Comment
	---------       ----      -------
	IPC$            IPC       Remote IPC
	ADMIN$          Disk      Remote Admin
	C$              Disk      Default share
Reconnecting with SMB1 for workgroup listing.

	Server               Comment
	---------            -------
	ALICE
	MASTER

	Workgroup            Master
	---------            -------
	MYGROUP              TOPHAT
	SECURITY             MAILMAN
	SVCORP               SVCLIENT08
	THINC                ALICE
	THINC.LOCAL          SUFFERANCE
	WORKGROUP            BREAK
[33m
[+] [0m[32mAttempting to map shares on 10.11.1.5

[0m//10.11.1.5/IPC$	[35mMapping: [0mOK[35m Listing: [0mDENIED[35m Writing: [0mN/A
//10.11.1.5/ADMIN$	[35mMapping: [0mDENIED[35m Listing: [0mN/A[35m Writing: [0mN/A
//10.11.1.5/C$	[35mMapping: [0mDENIED[35m Listing: [0mN/A[35m Writing: [0mN/A

[34m =============================( [0m[32mPassword Policy Information for 10.11.1.5[0m[34m )=============================

[0m[33m
[E] [0m[31mUnexpected error from polenum:

[0m

[+] Attaching to 10.11.1.5 using a NULL share

[+] Trying protocol 139/SMB...

	[!] Protocol failed: Cannot request session (Called Name:10.11.1.5)

[+] Trying protocol 445/SMB...

	[!] Protocol failed: SAMR SessionError: code: 0xc0000022 - STATUS_ACCESS_DENIED - {Access Denied} A process has requested access to an object but has not been granted those access rights.


[33m
[E] [0m[31mFailed to get password policy with rpcclient

[0m

[34m ========================================( [0m[32mGroups on 10.11.1.5[0m[34m )========================================

[0m[33m
[+] [0m[32mGetting builtin groups:

[0m[33m
[+] [0m[32m Getting builtin group memberships:

[0m[33m
[+] [0m[32m Getting local groups:

[0m[33m
[+] [0m[32m Getting local group memberships:

[0m[33m
[+] [0m[32m Getting domain groups:

[0m[33m
[+] [0m[32m Getting domain group memberships:

[0m
[34m ====================( [0m[32mUsers on 10.11.1.5 via RID cycling (RIDS: 500-550,1000-1050)[0m[34m )====================

[0m[33m
[E] [0m[31mCouldn't get SID: NT_STATUS_ACCESS_DENIED.  RID cycling not possible.

[0m[33m
[I] [0m[36mFound new SID:
[0mS-1-5-32
[33m
[I] [0m[36mFound new SID:
[0mS-1-5-32
[33m
[I] [0m[36mFound new SID:
[0mS-1-5-32
[33m
[I] [0m[36mFound new SID:
[0mS-1-5-32
[33m
[I] [0m[36mFound new SID:
[0mS-1-5-21-1085031214-1677128483-839522115
[33m
[I] [0m[36mFound new SID:
[0mS-1-5-21-1085031214-1677128483-839522115
[33m
[+] [0m[32mEnumerating users using SID S-1-5-21-1085031214-1677128483-839522115 and logon username '', password ''

[0m[33m
[+] [0m[32mEnumerating users using SID S-1-5-32 and logon username '', password ''

[0m
[34m =================================( [0m[32mGetting printer info for 10.11.1.5[0m[34m )=================================

[0mdo_cmd: Could not initialise spoolss. Error was NT_STATUS_OBJECT_NAME_NOT_FOUND


enum4linux complete on Thu Feb 16 16:51:28 2023



```
