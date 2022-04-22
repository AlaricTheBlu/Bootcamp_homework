## Week 16 Homework Submission File: Penetration Testing 1

#### Step 1: Google Dorking


- Using Google, can you identify who the Chief Executive Officer of Altoro Mutual is:
  - The Chief Executive Officer is Karl Fitzgerald.
  - Source: https://demo.testfire.net/index.jsp?content=inside_executives.htm

- How can this information be helpful to an attacker:
  - This info could be useful to an attacker, as it gives them info on a valuable target for phishing, and could also be used to make phishing emails appear more legitimate.


#### Step 2: DNS and Domain Discovery

Enter the IP address for `demo.testfire.net` into Domain Dossier and answer the following questions based on the results:

  1. Where is the company located:

    - According to the Domain Whois record, the company appears to be located in Sunnyvale California.

  2. What is the NetRange IP address: 

    - According to the Network Whois record, their Netrange IP addresses are 65.61.137.64 - 65.61.137.127.

  3. What is the company they use to store their infrastructure: 

    - According to the Network whois record, their network infrastructure is managed by the company called Rackspace.

  4. What is the IP address of the DNS server: 

    - 65.61.137.117

#### Step 3: Shodan

- What open ports and running services did Shodan find:
  - Shodan found that the ports 80, 443, and 8080 were open.

#### Step 4: Recon-ng

- Install the Recon module `xssed`. 
- Set the source to `demo.testfire.net`. 
- Run the module. 

Is Altoro Mutual vulnerable to XSS: 

### Step 5: Zenmap

Your client has asked that you help identify any vulnerabilities with their file-sharing server. Using the Metasploitable machine to act as your client's server, complete the following:

- Command for Zenmap to run a service scan against the Metasploitable machine: 
 
- Bonus command to output results into a new text file named `zenmapscan.txt`:

- Zenmap vulnerability script command: 

- Once you have identified this vulnerability, answer the following questions for your client:
  1. What is the vulnerability:

  2. Why is it dangerous:

  3. What mitigation strategies can you recommendations for the client to protect their server:

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  

