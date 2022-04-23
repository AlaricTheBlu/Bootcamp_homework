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
  - Shodan found that the ports 80, 443, and 8080 were open. Port 80 and 8080 are running http, while 443 is running https.

#### Step 4: Recon-ng

- Install the Recon module `xssed`. 
  - recon-ng
  - marketplace install xssed
- Set the source to `demo.testfire.net`. 
  - modules load recon/domains-vulnerabilities/xssed
  - options set SOURCE demo.testfire.net
- Run the module. 
  - run

Is Altoro Mutual vulnerable to XSS: 
- The xssed module for Recon-ng found 1 vulnerability. The Altoro Mutual website is indeed vulnerable to XSS. 

### Step 5: Zenmap

Your client has asked that you help identify any vulnerabilities with their file-sharing server. Using the Metasploitable machine to act as your client's server, complete the following:

- Command for Zenmap to run a service scan against the Metasploitable machine: 
  - nmap -sV 192.168.0.10
 
- Bonus command to output results into a new text file named `zenmapscan.txt`:
  - nmap -sV -oN zenmapscan.txt 192.168.0.10

- Zenmap vulnerability script command: 
  - I experienced issues figuring out which vulnerability it was. From The last part, I know that those ports were using Samba, particularly smbd 3.x - 4.x. While there appear to be a number of scripts to detecting vulnerabilities in Samba, none of them seemed to work, with many of them not even having an output. So, for this and the final question, I'll simply select one of them. This way I can get the experience of answering these questions atleast. I selected cve-2017-7494. The command for that one's zenmap script is:
  - nmap --script smb-vuln-cve-2017-7494 -p 445 192.168.0.10

- Once you have identified this vulnerability, answer the following questions for your client:
  1. What is the vulnerability: cve-2017-7494 is a vulnerability with unpatched versions of Samba between 3.5.0 to 4.6.4 where attackers can upload a shared library containing malicious code, and then make the server load and execute that code. 

  2. Why is it dangerous: It allows an attacker to execute code remotely on another's computer. This could grant an attacker access to confidential files, and potentially even edit files.

  3. What mitigation strategies can you recommendations for the client to protect their server: Update their version of Samba to the newest version where this vulnerability has been patched.

References for cve-2017-7494

https://nvd.nist.gov/vuln/detail/CVE-2017-7494

https://nmap.org/nsedoc/scripts/smb-vuln-cve-2017-7494.html

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  

