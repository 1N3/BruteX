# BruteX v1.2 by 1N3 @ CrowdShield
# https://crowdshield.com
#

Automatically brute force all services running on a target including:

- Open ports
- DNS domains
- Usernames
- Passwords

USAGE:
./brutex target <port>

DEPENDENCIES:

- NMap
- Hydra
- SNMPWalk
- DNSEnum

CHANGELOG:
- 20150915 - v1.2 adds dnsenum / removes DNSDict6 as no longer supported on Kali 2.0
- 20150904 - v1.2 removed wfuzz web file brute forcing as it was too error prone and noisy
- 20150904 - v1.2 adds the ability to specify a port to target (ie. 23 for telnet) to automatically brute force
- 20150904 - v1.2 added additional ports to scan and brute force
- 20150904 - v1.2 added additional default users to brute force

To brute force multiple hosts, use brutex-massscan and include the IP's/hostnames to scan in the targets.txt file.

All feedback, questions, comments, send to @CrowdShield on Twitter
