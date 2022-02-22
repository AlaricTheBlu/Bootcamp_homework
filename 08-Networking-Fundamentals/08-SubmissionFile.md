## Networking Fundamentals Homework

### Phase 1: Ping

 - The Ip ranges for the Hollywood office were: 15.199.95.91/28, 11.199.158.91/28, and 167.172.144.11/32 (aka 167.172.144.11). Therefore, the fping commands we used were:

        fping -g 15.199.95.91/28
        fping -g 11.199.158.91/28
        fping 167.172.144.11
        
 - From the listed ip ranges, only 1 responded that it was alive. That one was 167.172.144.11. This is a potential vulnerability, as Rockstar 
