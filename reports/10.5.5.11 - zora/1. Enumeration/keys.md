**Ajla public key**
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCUS8dxH5aQGVwTFLAbQv7nCP1gimjI0ntUqtUmjhXudRwHIurd37A1bc/oDhxvt6hPJVeccB6rtouFtMykZPQIvrR9bbayYWpowmVUIOLvMRTZOEz1WTFkx43XG32va5VSLe2UzPrI4lU4X1QJm1IcZogD8NFXlh54FwN/MopHC2RBrxDAE1xRXHBd9XNKfYYsrqURYFgAzY5b0iIQNH0sXILDhYnO4ZyaWuyug2CGsLSwM4FV54R7NH2wE2DLtcR5zDYO5VmvJSS6KbvqXxMhpXFHmA17MKic0V8w9mb7T7MGlg68UbH0MZrqz5CC2tNV0KR9Y9rulG5c7S6C2VIP www-data@ajla
```

**Kali authorized_keys**
```
from="10.11.1.250",command="echo 'This account can only be used for port forwarding'",no-agent-forwarding,no-X11-forwarding,no-pty ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCUS8dxH5aQGVwTFLAbQv7nCP1gimjI0ntUqtUmjhXudRwHIurd37A1bc/oDhxvt6hPJVeccB6rtouFtMykZPQIvrR9bbayYWpowmVUIOLvMRTZOEz1WTFkx43XG32va5VSLe2UzPrI4lU4X1QJm1IcZogD8NFXlh54FwN/MopHC2RBrxDAE1xRXHBd9XNKfYYsrqURYFgAzY5b0iIQNH0sXILDhYnO4ZyaWuyug2CGsLSwM4FV54R7NH2wE2DLtcR5zDYO5VmvJSS6KbvqXxMhpXFHmA17MKic0V8w9mb7T7MGlg68UbH0MZrqz5CC2tNV0KR9Y9rulG5c7S6C2VIP www-data@ajla
```

> [!info] 
>  This entry allows the owner of the private key (the web server), to log in to our Kali machine but prevents them from running commands and only allows for port forwarding.