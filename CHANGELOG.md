## CHANGELOG:
* v2.3 Updated default credentials for Rasberry Pi/Kali
* v2.2 Added CVE-2020-29583 Zyxel SSH Hardcoded Credentials
* v2.1 Added Kali XFCE4 start menu application
* v2.1 Added 0day vulnerability (backdoor) in firmware for HiSilicon-based DVRs, NVRs and IP cameras
* v2.0 Fixed issue with VNC port
* v1.9 Updated default credential lists for each service
* v1.8 Added improved default credential list for each service
* v1.7 Removed DNS brute forcing
* v1.7 Added -P0 to NMap scan options
* v1.6 Removed HTTP/HTTPS basic auth checks to normal scans. Use brutex <IP> port <80/443> to scan with that option... 
* v1.5b Fixed issue with dirb
* v1.5a Removed clear command
* v1.5 Added install.sh
* v1.5 Fixed SNMP brute force options
* v1.5 Fixed http/https brute force options
* v1.4 Removed dirb web directory brute forcing
* v1.3d Added Fortinet user/pass 
* v1.3d Added DirBuster for web brute forcing
* v1.3c Fixed error with DNS namelist.txt
* v1.3b Fixed brutex global DIR issue
* v1.3a Fixed HTTP proxy brute force options
* v1.3 added faster scan options for nmap
* v1.3 revised password brute force lists for more efficient service brute forcing
* v1.3 added wordlist directory with new wordlist selections
* v1.2 adds dnsenum / removes DNSDict6 as no longer supported on Kali 2.0
* v1.2 removed wfuzz web file brute forcing as it was too error prone and noisy
* v1.2 adds the ability to specify a port to target (ie. 23 for telnet) to automatically brute force
* v1.2 added additional ports to scan and brute force
* v1.2 added additional default users to brute force
