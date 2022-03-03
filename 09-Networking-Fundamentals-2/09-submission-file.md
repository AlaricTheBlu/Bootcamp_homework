## 09 Networking Homework 2

### Mission 1

Using nslookup -type=mx, the email servers for starwars.com appear as:
          
            starwars.com	mail exchanger = 10 aspmx2.googlemail.com.
            starwars.com	mail exchanger = 5 alt1.aspx.l.google.com.
            starwars.com	mail exchanger = 10 aspmx3.googlemail.com.
            starwars.com	mail exchanger = 5 alt2.aspmx.l.google.com.
            starwars.com	mail exchanger = 1 aspmx.l.google.com.

The resistance isn't receiving any emails, because neither asltx.l.google.com nor asltx.2.google.com appear in the mx record for starwars.com. It is being sent to mail servers that are identified by aspmx, rather than asltx. 
A corrected DNS would show something like:

          starwars.com        mail exchanger = 1 asltx.l.google.com.
          starwars.com        mail exchanger = 5 asltx.2.google.com

### Mission 2

