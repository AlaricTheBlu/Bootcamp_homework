
## Cybersecurity Bootcamp Chapter 18 Homework

### Part 1: The Need for Speed

Below is a picture of the search conducted for evaluation of the download and upload speedtest.

![Speed Test Table](./Pictures/Step-1.PNG)

#### Questions

 - The approximate time of the attack would be when we had the lowest download and upload speeds. That would be on the 23rd of February, 2020, at 14:30, or 2:30 p.m.
 - Download and upload speeds remained very low until about 20:30 (8:30 p.m.), at which it went to about half of our baseline speeds. We made a full recovery by 23:30 (11:30 pm). 

### Part 2: Are We Vulnerable?

Below are pictures of the report and the alert created for these Nessus scans.


![Nessus scan report](./Pictures/Step-2-report.PNG)

![Nessus scan critical alert](./Pictures/Step-2-alert.PNG)

### Part 3: Drawing the (base)line

The brute force attack started a little before 9 AM on February 21st, 2020, and ended a bit after 2 PM on the same day. 

For our baseline, it appears that the average number of failed log-ins on the accounts lies somewhere aroudn 10 to 14 failed log-ins per hour.  In order to avoid false positives, our threshold for the alert would need to be a good bit higher. It seems that the highest it reached when we weren't experiencing a brute force attack was 23. 

I suggest that the threshold for our alert should be 35 failed logins in one hour, as it will lower the number false positives, while still showing when a brute force attack is occuring.

Below is a picture of the created alert.

![Brute force alert](./Pictures/Step-3.PNG)
