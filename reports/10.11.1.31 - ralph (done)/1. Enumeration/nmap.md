```
PORT      STATE SERVICE       REASON  VERSION
80/tcp    open  http          syn-ack Microsoft IIS httpd 10.0
| http-cookie-flags: 
|   /: 
|     ASPSESSIONIDQQCARAAB: 
|_      httponly flag not set
| http-methods: 
|   Supported Methods: OPTIONS TRACE GET HEAD POST
|_  Potentially risky methods: TRACE
|_http-server-header: Microsoft-IIS/10.0
|_http-title: Login
135/tcp   open  msrpc         syn-ack Microsoft Windows RPC
139/tcp   open  netbios-ssn   syn-ack Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds  syn-ack Windows Server 2016 Standard 14393 microsoft-ds
1433/tcp  open  ms-sql-s      syn-ack Microsoft SQL Server 2017 14.00.1000.00; RTM
| ms-sql-ntlm-info: 
|   Target_Name: RALPH
|   NetBIOS_Domain_Name: RALPH
|   NetBIOS_Computer_Name: RALPH
|   DNS_Domain_Name: ralph
|   DNS_Computer_Name: ralph
|_  Product_Version: 10.0.14393
| ssl-cert: Subject: commonName=SSL_Self_Signed_Fallback
| Issuer: commonName=SSL_Self_Signed_Fallback
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2023-01-27T05:19:12
| Not valid after:  2053-01-27T05:19:12
| MD5:   9013 b653 6420 0894 aed3 db63 f356 0d58
| SHA-1: 857d a5d2 590e b389 dc18 4bba acbd 3911 521a 455c
| -----BEGIN CERTIFICATE-----
| MIIDADCCAeigAwIBAgIQQJ/IkkrJjKNJHA0Y/cQo3jANBgkqhkiG9w0BAQsFADA7MTkwNwYDVQQDHjAAUwBTAEwAXwBTAGUAbABmAF8AUwBpAGcAbgBlAGQAXwBGAGEAbABsAGIAYQBjAGswIBcNMjMwMTI3MDUxOTEyWhgPMjA1MzAxMjcwNTE5MTJaMDsxOTA3BgNVBAMeMABTAFMATABfAFMAZQBsAGYAXwBTAGkAZwBuAGUAZABfAEYAYQBsAGwAYgBhAGMAazCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANAfQCgqswdJH2i5s03Hw0pCdI7p7d29TNyRtm3C3D2WAWbUMwkNo/oFw/5fkHp9VeWZVkUaItyFIjZd+z3FUoyhFFXiPcGwW6G1CDcZNUdos2ljrjL6JYc+8l+F242b+ve2c24nY45+2EpbgdiVn0+GZRQxc6+P3qeYa6L/E3+MbkalNFpfzqtO4tjEtcIR2QXrGI2AVThzO5DUlHsucbqsNCAjGs7lC8wLwdQOO8jrbmCt/Nbf2flNeSFBdxoXhd/XH4vXeEU2VaQZ4aq16Q+bWZf/q1V7wjj3RPetluKk6OfuIX724W5Wsi8b/oE0yMp+5Ke+JOiak7P3eN9L6u8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEARDWkDxEhq6jN+rsLVMT5axNAGSHZ9XgypaYA53TkqW99lLeUFWPpZwGj4OIJzXh501ucTeE5T/8An6PM8nsqy3nunISDs7nlNOxVFsLcNgm1LVXktJUyvhHj7BEpzt7/ADfnJMaQjqijDqtyuD0DjazLLAptmjJLKKPwvJV6g3FpLRcHT9aCGVIxByR7y3fAOIeFLnLoQ80L80UFIcP2I0NJn6gk+geXa5LfObnRWS4zsYO37mRvJGlVR/CgPoIvovzaGuYSAhgtQUw/AS5q7/FCIEAOtmB3l64rDOyjOMpRCu19XHBhGGc0QQlII3rFC+Z8JEWq2lDCG6ffJGqKgg==
|_-----END CERTIFICATE-----
|_ssl-date: 2023-02-12T05:22:43+00:00; -2s from scanner time.
3389/tcp  open  ms-wbt-server syn-ack Microsoft Terminal Services
| rdp-ntlm-info: 
|   Target_Name: RALPH
|   NetBIOS_Domain_Name: RALPH
|   NetBIOS_Computer_Name: RALPH
|   DNS_Domain_Name: ralph
|   DNS_Computer_Name: ralph
|   Product_Version: 10.0.14393
|_  System_Time: 2023-02-12T05:22:03+00:00
| ssl-cert: Subject: commonName=ralph
| Issuer: commonName=ralph
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2023-01-26T05:19:04
| Not valid after:  2023-07-28T05:19:04
| MD5:   18b8 d6dd 155d a596 0cc5 86ce 121f 56ad
| SHA-1: 5852 ec14 19f6 a7ac 051f 7cdd 2f40 1698 5f4d c750
| -----BEGIN CERTIFICATE-----
MIICzjCCAbagAwIBAgIQf8+VdCuKw6dI0KsK1NUxkjANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDEwVyYWxwaDAeFw0yMzAxMjYwNTE5MDRaFw0yMzA3MjgwNTE5MDRaMBAxDjAMBgNVBAMTBXJhbHBoMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArbMM+qKeMElDAkVjx4sxWffjxPKmdUL13Hg2bUC+JayRb/JmSLQnAcI6H5fQhLZmllVCKkmqtD27juSgvoFiM7hg2JOvPzUhMT1V8AbNGrcCBD co/fTkagvr13/rXaS313qgpgQgFoRwkpyRDh00jCYUW69FXc0qygTH6crMO9E3LF9iLwAFfip/yunfEJmjlnOo39kLOK45g9eE0V2L9of34F1i9jEOF5UK2QU/rr3i3Jdohwi5BjuKtBlgYRhrEruBkK7hFsZufTsXTB/kwIDAQABoyQwIjATBgNVHSUEDDAKBggrBgEFBQcDATALBgNVHQ8EBAMCBDAwDQYJKoZIhvcNAQELBQADggEBAAxpxwBt8IDI8+toifZoVRTcAwM+c14WUeRU6I01u1WCgCQ+RCL9bvQsqMmmBIBjt+nSuZQGwbAKnxctaqh/QCGCY02vWofO4qXeyL5aNMqdiii+VSyw6ARupcdTl4t0e0pVmcUcl/um7RhPukocTL/a1yB4HBcecDuxrsAlU7Paa86dxtmJRYP6fXoW/kClJNVB9rpgzTdFQeDx+7uS/gXVvYFkzmVDwL6Y5HTfp2YUEwz6Yl526seYK8Ds/0Mh7uw6oBf/dKW91RHAkxR2EMF3wYwfEAI9rf3wl0Ttb+WvU1GdkXgVzZDehYqJT5rlxSadNqSLtATnZvDyPLUbXeo=
|_-----END CERTIFICATE-----
|_ssl-date: 2023-02-12T05:22:43+00:00; -2s from scanner time.
5985/tcp  open  http          syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49666/tcp open  msrpc         syn-ack Microsoft Windows RPC
49667/tcp open  msrpc         syn-ack Microsoft Windows RPC
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Host script results:
|_clock-skew: mean: -1s, deviation: 1s, median: -2s
| ms-sql-info: 
|   10.11.1.31:1433: 
|     Version: 
|       name: Microsoft SQL Server 2017 RTM
|       number: 14.00.1000.00
|       Product: Microsoft SQL Server 2017
|       Service pack level: RTM
|       Post-SP patches applied: false
|_    TCP port: 1433
| p2p-conficker: 
|   Checking for Conficker.C or higher...
|   Check 1 (port 61881/tcp): CLEAN (Timeout)
|   Check 2 (port 47397/tcp): CLEAN (Timeout)
|   Check 3 (port 48318/udp): CLEAN (Timeout)
|   Check 4 (port 21738/udp): CLEAN (Timeout)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked
| smb-os-discovery: 
|   OS: Windows Server 2016 Standard 14393 (Windows Server 2016 Standard 6.3)
|   Computer name: ralph
|   NetBIOS computer name: RALPH\x00
|   Workgroup: WORKGROUP\x00
|_  System time: 2023-02-12T05:22:07+00:00
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-security-mode: 
|   2.02: 
|_    Message signing enabled but not required
| smb2-time: 
|   date: 2023-02-12T05:22:04
|_  start_date: 2023-01-27T05:19:05
```