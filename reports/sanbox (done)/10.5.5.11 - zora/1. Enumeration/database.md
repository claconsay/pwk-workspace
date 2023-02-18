**Server info**

| Header                            | Value                                                      |
|-----------------------------------|------------------------------------------------------------|   
| Server version     | 10.3.20-MariaDB                                                                 |
| Client version     | mysqlnd 5.0.12-dev - 20150407 - $Id: b5c5906d452ec590732a93b051f3827e02749b83 $ |
| Database user      | wp                                                                              |
| Database password  | Lv9EVQq86cfi8ioWsqFUQyU 

**Privileges (User: wp)**
```
MariaDB [(none)]> show grants;
+---------------------------------------------------------------------------------------------------+
| Grants for wp@%                                                                                   |
+---------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'wp'@'%' IDENTIFIED BY PASSWORD '*61163AE4B131AB0E43F07BE7B7590590A761FE75' |
| GRANT SELECT, INSERT, UPDATE, DELETE ON `wordpress`.* TO 'wp'@'%'                                 |
+---------------------------------------------------------------------------------------------------+
2 rows in set (0.396 sec)

```

> [!note] 
> We don't have **"*"** permissions (as wp user), but **SELECT, INSERT, UPDATE, and DELETE** are a good starting point. 

**Variables**

| Variable name             | Value             |
|---------------------------|-------------------|
| @@hostname                | zora              |
| @@tmpdir                  | /var/tmp          |
| @@version                 | 10.3.20-MariaDB   |
| @@version_compile_machine | x86_64            |
| @@plugin_dir              | /home/dev/plugin/ |

> [!note] 
> The most interesting piece of information we can gather is that the **plugin_dir** is set to **/home/dev/plugin/**. <u>This directory is not standard for MariaDB<u></u></u> 