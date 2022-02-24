## Networking Fundamentals Homework

### Phase 1: Ping

 - The Ip ranges for the Hollywood office were: 15.199.95.91/28, 11.199.158.91/28, and 167.172.144.11/32 (aka 167.172.144.11). Therefore, the fping commands we used were:

        fping -g 15.199.95.91/28
        fping -g 11.199.158.91/28
        fping 167.172.144.11
        
 - From the listed ip ranges, only 1 responded that it was alive. That one was 167.172.144.11. This is a potential vulnerability, as Rockstar 
corp doesn't want any of its servers to be resopnding to requests.
 - It is recommended that Rockstar Corp restricts allowing ICMP echo requests against IP 167.172.144.11 to prevent it from responding to ping requests.
 - This occurred on the network layer (layer 3). Ping uses IP addresses and IPs are part of the Network Layer.

### Phase 2: Syn scan

 - We wish to run a Syn scan on IP 167.172.144.11. The command to do so is:

        sudo nmap -sS 167.172.144.11
        
 - We used sudo because the nmap command asked for root privileges.
 - The Syn scan returned that 999 of the 1000 ports that it checked were closed. The only port open was 22/tcp, which is used for ssh. This poses a potential vulnerability, as ssh can be used for command line access or running commands on the computer, granting an attacker a very large amount of access to the server's contents and abilities.
 - The Syn scan occurred on the Transport layer (layer 4), as the transport layer is the layer in which tcp communications occur, which is what the Syn scan uses.

### Phase 3: DNS

 - First, we must log in to the server using rockstar's default credentials. We connect with ssh, then say yes to the connection, and finally, enter the password to finish connecting.

         ssh jimi@167.172.144.11
         yes
         hendrix
         
 - We are now logged into the server. In order to check and see why rollingstone.com sends to a different ip, we must check the DNS cache (/etc/hosts). To do this, I used the command:

        grep "rollingstone.com" /etc/hosts
        
 - This grabs the line for rollingstone.com from the DNS cache. It returned:
        
         98.137.246.8 rollingstone.com

 - Then I used nslookup on a different terminal not connected to the server to see what rollingstone.com's ip actually should be. 

         nslookup rollingstone.com

 - It returned that rollingstone.com's address is 151.101.0.69
 - Meanwhile, we looked up the IP in the cache using:

         nslookup 98.137.246.8
         
 - The name of this ip address is unknown.yahoo.com
 - The address in the cache does not match the address from nslookup. This means that the hollywood server has likely been the victim of a DNS hijacking attack. A malicious user or a hacker likely edited the DNS cache to send anyone going to rollingstone.com to the other ip.
 - In order to mitigate, I recommend editing the cache to remove this malicious re-direction. Additionally, we may wish to look at any logging tools we had going at the time to see which user made the original edits to the cache. That user account has likely been compromised, and at the very least needs a new password.
 - The OSI layer that these DNS cache activities take place is on layer 7, the application layer. This is because DNS is an application that translates a human readable URL into an IP address that the computer can use (by trying to find what ip that URL fits.
