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
