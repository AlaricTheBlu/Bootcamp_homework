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

 - first, we must log in to the server using rockstar's default credentials. First we connect with ssh, then say yes to the connection, and finally, enter the password to finish connecting.

         ssh jimi@167.172.144.11
         yes
         hendrix
