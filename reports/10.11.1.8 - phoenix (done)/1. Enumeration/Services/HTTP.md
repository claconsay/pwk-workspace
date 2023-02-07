# nmap (80)
``` 
80/tcp   open   http        Apache httpd 2.0.52 ((CentOS))
| http-methods: 
|_  Potentially risky methods: TRACE
|_http-server-header: Apache/2.0.52 (CentOS)
|_http-title: Site doesn't have a title (text/html; charset=UTF-8)
| http-robots.txt: 2 disallowed entries 
|_/internal/  /tmp/ 
```


# nmap (443)
```
443/tcp  open   ssl/http    Apache httpd 2.0.52 ((CentOS))
| ssl-cert: Subject: commonName=localhost.localdomain/organizationName=SomeOrganization/stateOrProvinceName=SomeState/countryName=--
| Not valid before: 2009-09-16T14:03:22
|_Not valid after:  2010-09-16T14:03:22
|_http-server-header: Apache/2.0.52 (CentOS)
| http-robots.txt: 2 disallowed entries 
|_/internal/  /tmp/ 
| sslv2: 
|   SSLv2 supported
|   ciphers: 
|     SSL2_RC4_128_WITH_MD5
|     SSL2_RC4_128_EXPORT40_WITH_MD5
|     SSL2_DES_64_CBC_WITH_MD5
|     SSL2_RC2_128_CBC_EXPORT40_WITH_MD5
|     SSL2_RC2_128_CBC_WITH_MD5
|     SSL2_RC4_64_WITH_MD5
|_    SSL2_DES_192_EDE3_CBC_WITH_MD5
| http-methods: 
|_  Potentially risky methods: TRACE
|_http-title: Site doesn't have a title (text/html; charset=UTF-8).
|_ssl-date: 2023-01-27T07:41:52+00:00; +5h00m22s from scanner time.
```

# robot.txt 
http://10.11.1.8/robots.txt
```
User-agent: *
Disallow: /internal/ 
Disallow: /tmp/
```

# Gobuster
```
/manual               (Status: 301) [Size: 307] [--> http://10.11.1.8/manual/]
/usage                (Status: 403) [Size: 282]
/internal             (Status: 301) [Size: 309] [--> http://10.11.1.8/internal/]
```
