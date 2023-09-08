# Week 1: Kickoff Meeting and Cloud Computing Introduction

## Overview

Welcome to Week 1 of the UMass Lowell Cloud Computing Club! This week serves as our kickoff meeting where we introduce the club, its mission, and delve into the basics of cloud computing and Amazon Web Services (AWS).

## Objectives

- Introduce the club and its mission.
- Provide an overview of cloud computing.
- Introduce Amazon Web Services (AWS).
- Guide members through AWS & GitHub account registration/setup.

## Resources

What is Cloud Computing?
- Amazon AWS: https://aws.amazon.com/what-is-cloud-computing/
- Microsoft Azure: https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-cloud-computing
- Google Cloud: https://cloud.google.com/learn/what-is-cloud-computing
- Oracle Cloud: https://www.oracle.com/cloud/what-is-cloud-computing/
- IBM Cloud: https://www.ibm.com/topics/cloud-computing

## Agenda

1. **Introduction (10 minutes)**
    - Welcome and introductions
    - Ice breaker
    - Club mission and semester overview
    - Briefly discuss the club's mission to explore cloud computing and its applications using Amazon Web Services (AWS) and related technologies.

2. **What is Cloud Computing? (15 minutes)**
    - Definition and importance
    - Types of cloud services: IaaS, PaaS, SaaS
    - Discuss the significance of cloud computing in modern technology and business.
    - Explain the different types of cloud services and their applications.

3. **Introduction to AWS (20 minutes)**
    - AWS services overview
    - Why AWS?
    - Provide an overview of popular AWS services like EC2, S3, and Lambda.
    - Discuss why AWS is a leading cloud service provider and its advantages.

4. **GitHub Account & SSH Key Setup (15 minutes)**
    - Go to [GitHub](https://github.com/) and click "Sign Up"
    - Follow the on-screen instructions to create an account
    - Verify your email address
    - **Setting up SSH keys:** ([Doc](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
        1. Open your terminal
        2. Run `ssh-keygen -t ed25519 -C "your_email@example.com"`
        3. Press Enter to save the key to the default location
        4. Run `cat ~/.ssh/id_rsa.pub` and copy the output
        5. Go to GitHub > Settings > SSH and GPG keys > New SSH key
        6. Paste the copied SSH key and save
    - Git installation [documentation](https://github.com/git-guides/install-git)

5. **AWS Account & Access Keys Setup (20 minutes)**
    - **Club AWS Account:**
        - Members' AWS accounts have been created under the club's root AWS account.
        - Log in via [UML Cloud Computing AWS Console](https://uml-cloud-computing.signin.aws.amazon.com/console?region=us-east-1). Good idea to bookmark this link. 
        - Username: Your student email address
        - Default Password: `VF#2vc3PmPL|Vje[`
        - **Note**: If your account doesn't exist, please contact the club leaders on [Discord](https://discord.gg/WC2NdqYtDt).
    - **Setting up Access Keys:**
        1. Go to AWS Management Console > IAM > Users
        2. Select your user name > Security credentials tab
        3. Choose "Create access key" and download the CSV file
    - **Setting up Key Pairs:**
        1. Go to AWS Management Console > EC2 > Key Pairs
        2. Click "Create key pair" and download the PEM file
    - **Documentation Example**: [AWS Account and Access Keys](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html)

6. **Hands-On Activity: Create/Delete EC2 Instance (25 minutes)**
    - **Using Web Console:**
        1. Go to AWS Management Console > EC2 > Launch Instance
        2. Follow the setup wizard and click "Launch"
        3. To delete, select the instance and click "Terminate"
    - **Install AWS CLI**
        - Follow this [documentation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
    - **Using CLI:**
        1. Open your terminal
        2. Run `aws ec2 run-instances --image-id ami-XXXXXXX --count 1 --instance-type t2.micro`
        3. To delete, run `aws ec2 terminate-instances --instance-ids i-XXXXXXXXXXXXX`
    - **SSH into EC2 Instance:**
        1. Open your terminal
        2. Run `ssh -i "your-key-pair.pem" ec2-user@your-ec2-instance-ip`
           1. If you run into a permission issue run the following command `chmod 400 your-key-pair.pem`
    - **Documentation Example**: [AWS EC2 Tutorial](https://medium.com/edureka/aws-ec2-tutorial-16583cc7798e)


## Homework

- Complete AWS account setup if not done in the meeting.
- Sign up for a GitHub account if you don't have one.
- Go through the "Introduction to Cloud Computing" resource linked above.

## Next Week Preview

Next week, we will dive into Project Planning, Software Engineering Practices, and DevOps. Make sure to review the resources provided to get the most out of next week's meeting.

Feel free to reach out on our [Discord server](https://discord.gg/WC2NdqYtDt) if you have any questions or need further clarification.

See you next week!
