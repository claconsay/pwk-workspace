**Ajla public key**
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCw2uxckf7DRqTuSI/7zP7FXULhX1unIzxzEpoXYvGPzu0My5Mpp2rcpmYBxVD12TnaGiWGztZxOQ4G7xV1+YMi/F54Zk7fT3i3S56BXXhzjE/EWKLc0nFc1xXZjbb8q0l2AvDvHPAK4Vi+hyNpihYvD+RCi63rbrx82fom9Bs3Z0PweeqG6XK6DAsPCaZBArqIhOb1w6A11fNGRCa/vtgji6QgHaqbfrP82v0CQDCBiy5DyDipyfl/3ClOw8lUy/+1rqJs6DvLf2XfYMl9AO0KnLjfufSh+6ymIhG1JKxDjk0zKgsfUy76uW3QPzMhaRzbRIy40IrFIegOlmRrLIQv www-data@ajla
```

**Kali authorized_keys**
```
from="10.11.1.250",command="echo 'This account can only be used for port forwarding'",no-agent-forwarding,no-X11-forwarding,no-pty ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCw2uxckf7DRqTuSI/7zP7FXULhX1unIzxzEpoXYvGPzu0My5Mpp2rcpmYBxVD12TnaGiWGztZxOQ4G7xV1+YMi/F54Zk7fT3i3S56BXXhzjE/EWKLc0nFc1xXZjbb8q0l2AvDvHPAK4Vi+hyNpihYvD+RCi63rbrx82fom9Bs3Z0PweeqG6XK6DAsPCaZBArqIhOb1w6A11fNGRCa/vtgji6QgHaqbfrP82v0CQDCBiy5DyDipyfl/3ClOw8lUy/+1rqJs6DvLf2XfYMl9AO0KnLjfufSh+6ymIhG1JKxDjk0zKgsfUy76uW3QPzMhaRzbRIy40IrFIegOlmRrLIQv www-data@ajla
```

> [!info] 
>  This entry allows the owner of the private key (the web server), to log in to our Kali machine but prevents them from running commands and only allows for port forwarding.