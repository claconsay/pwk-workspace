> [!note] 
>  Target is behind NAT, so we see the IP as **10.11.1.250** instead of the real IP **10.4.4.10**

## SQLi Extract
```
DB User: wp@10.4.4.10
Username: wp_ajla_admin
Hash: $P$BfBIi66MsPQgzmvYsUzwjc5vSx9L6i/
```

## Wordpress Admin
```
Username: wp_ajla_admin
Password: !love29jan2006!
```

## Server
| Header                            | Value                                                      |
|-----------------------------------|------------------------------------------------------------|
| IP                                | 10.4.4.10                                                  |
| Hostname                          | ajla                                                       |
| Server architecture               | Linux 4.4.0-21-generic x86_64                              |
| Web server                        | Apache/2.4.18 (Ubuntu)                                     |
| PHP version                       | 7.0.33-0ubuntu0.16.04.7 (Supports 64bit values)            |
| PHP SAPI                          | apache2handler                                             |
| PHP max input variables           | 1000                                                       |
| PHP time limit                    | 30                                                         |
| PHP memory limit                  | 256M                                                       |
| Max input time                    | 60                                                         |
| Upload max filesize               | 2M                                                         |
| PHP post max size                 | 8M                                                         |
| cURL version                      | 7.47.0 OpenSSL/1.0.2g                                      |
| Is SUHOSIN installed?             | No                                                         |
| Is the Imagick library available? | No                                                         |
| .htaccess rules                   | Your .htaccess file contains only core WordPress features. |


## Database
| Extension          | mysqli                                                                          |
|--------------------|---------------------------------------------------------------------------------|
| Server version     | 10.3.20-MariaDB                                                                 |
| Client version     | mysqlnd 5.0.12-dev - 20150407 - $Id: b5c5906d452ec590732a93b051f3827e02749b83 $ |
| Database user      | wp                                                                              |
| Database password  | Lv9EVQq86cfi8ioWsqFUQyU                                                         |
| Database host      | 10.5.5.11                                                                       |
| Database name      | wordpress                                                                       |
| Database prefix    | wp_                                                                             |
| Database charset   | utf8mb4                                                                         |
| Database collation | utf8mb4_unicode_ci                                                              |

> [!note] 
> Refer to zora [[database]] for other info 


## WP Keys and Salt

```
define( 'AUTH_KEY',          'XqH^~{@+X N8+wyLKOjq]U!m$ah^y2XDe98=k%#>^O5DF2h;E@EWSU#~y$^D}iU=' );
define( 'SECURE_AUTH_KEY',   '$6eYkh *JFH5v=x[3[?gq;/>>+G>BdDwN!HS2(v7F^&v[mIGW_y<>WurvK_CC<(M' );
define( 'LOGGED_IN_KEY',     'UE|*R/Kuk?;Loc8hW[p8-9,u{M,rGxvWz7f1hcI#z~[ER<8wbj4Vgkb<t6iydU>G' );
define( 'NONCE_KEY',         'tH4-;d(42$m?8yJ^9.N6!J;.Gce-@u=(5&BI$B52f+5=UTWN~Es[i5Igq([[|sE?' );
define( 'AUTH_SALT',         'nc<!zl:/cZCOaWb_BrqE392Ht6>Zo):##l3U.6i-9Y$]aMsoDdL!lS3@R(ssaA,]' );
define( 'SECURE_AUTH_SALT',  'Ybd_9NoCNd.F.pf.?qeM}J;0[om?2ay>(;oM/kSJ$Z0L~?;U#Z@ Q` %h=KD4=t`' );
define( 'LOGGED_IN_SALT',    'ntEskeH>5Jbgz7}klt6aCd|~:KIv6<,xE7:.<4QQO_kVEtyin^N2;bNf=o6>`k(:' );
define( 'NONCE_SALT',        'd$`(.oT!1OS(9|C1=L>G$g;awmg==u_A2ZmuLMWN)a2]bg,X]vO_7ajp3^xG[U,e' );
define( 'WP_CACHE_KEY_SALT', '+TqKjvvbfKor,_&-dlAD 9(FlKag*Y2@sl]Af/}(a|jNQ&ZDn?g^)r:f=f.&8A>%' 
```