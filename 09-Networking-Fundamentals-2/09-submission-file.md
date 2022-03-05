## 09 Networking Homework 2

### Mission 1

Using nslookup -type=mx, the email servers for starwars.com appear as:
          
            starwars.com	mail exchanger = 10 aspmx2.googlemail.com.
            starwars.com	mail exchanger = 5 alt1.aspx.l.google.com.
            starwars.com	mail exchanger = 10 aspmx3.googlemail.com.
            starwars.com	mail exchanger = 5 alt2.aspmx.l.google.com.
            starwars.com	mail exchanger = 1 aspmx.l.google.com.

The resistance isn't receiving any emails, because neither asltx.l.google.com nor asltx.2.google.com appear in the mx record for starwars.com. It is being sent to mail servers that are identified by aspmx, rather than asltx. 

A corrected DNS record would show something like:

          starwars.com        mail exchanger = 1 asltx.l.google.com.
          starwars.com        mail exchanger = 5 asltx.2.google.com

### Mission 2

nslookup -type=spf1 theforce.net shows:

          Non-authoritative answer:
          Name:	theforce.net
          Address: 104.156.250.80

This would explain why emails from theforce.net are often going to spam. The new mail server's ip (which is 45.23.176.21) does not appear in the spf record. Thus, the mail server is not authorized to send emails on behalf of the domain, making it appear to be false or spam.

A corrected DNS record would show something like:

          Non-authoritative answer:
          Name:	theforce.net
          Address: 45.23.176.21

### Mission 3

nslookup -type=CNAME www.theforce.net shows:

          www.theforce.net	canonical name = theforce.net.

This is what a CNAME record should look like. nslookup -type=CNAME resistance.theforce.net shows:

          ** server can't find resistance.theforce.net: NXDOMAIN

This would explain why the redirect isn't occuring, as it seems that the CNAME record for resistance.theforce.net currently does not exist. If it did, what it should show is:

          resistance.theforce.net       canonical name = theforce.net

### Mission 4

I used the command nslookup -type=ns princessleia.site to confirm the DNS records. It showed me:

          Non-authoritative answer:
          princessleia.site	nameserver = ns25.domaincontrol.com.
          princessleia.site	nameserver = ns26.domaincontrol.com.

This proves that the DNS servers are back online. In order to help prevent the issue from occuring again, ns2.galaxybackup.com would have to be added to the DNS record as well. (However, without knowing how the DNS servers were brought down in the first place, it is hard to completely prevent the attack from occurring again.

### Mission 5

The Empire's attack on planet N certainly makes a link state style route more difficult, as before, the quickest path was through planet N. (It used to be: Batuu-DCEFJKNORQTV-Jedha, with a time of 20.) Now, it appears that there are two routes that don't pass through N that are tied for fastest. With a speed of 23, the two next fastest routes are Batuu-DCEFJILQTV-Jedha, and Batuu-DGORQTV-Jedha. Turning one, or both of these into static routes should help speed up the network traffic.

### Mission 6

aircrack-ng output that the SSID of the network was linksys, while the wireless key was dictionary. This allows us to see the encrypted traffic captured in the pcap.

Through the decrypted ARP traffic, two different machines are mentioned. Firsthas a MAC address of 00:13:ce:55:98:ef and an IP address of 172.16.0.101. The 2nd has MAC of 00:0f:66:e3:e4:01 and IP of 172.16.0.1

## Mission 7

Secret message found! Uploading results:

![Capture2](https://user-images.githubusercontent.com/73720578/156902866-daba446d-882c-45fc-81ca-226b050fb90e.PNG)
![Capture3](https://user-images.githubusercontent.com/73720578/156902869-652a546e-9550-4dd5-ba59-bc64d5148bf7.PNG)
![Capture](https://user-images.githubusercontent.com/73720578/156902870-6e1f039a-6408-458b-aef4-f55316c84e43.PNG)

