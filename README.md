# BruteX v1.4 by 1N3 @ CrowdShield
https://crowdshield.com 

##Automatically brute force all services running on a target

* Open ports
* DNS domains
* Usernames
* Passwords

##USAGE:
```
./brutex target <port>
```

##DEPENDENCIES:
```
* NMap
* Hydra
* SNMPWalk
* DNSEnum
```

##CHANGELOG:
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

To brute force multiple hosts, use brutex-massscan and include the IP's/hostnames to scan in the targets.txt file.

All feedback, questions, comments, send to @CrowdShield on Twitter
