# `doc1.sh` Script Guide

## Overview
This repository contains a shell script named `doc1.sh`, which automates certain tasks and processes. The script is designed to simplify operations that would otherwise require manual intervention. This document provides an overview of how to use the script, along with possible errors and troubleshooting steps.

## Prerequisites
Before running the script, ensure that you meet the following requirements:
- You have a Unix-based system (Linux or macOS).
- You have bash shell installed.
- You have the necessary permissions to execute the script.

## How to Run the Script

### Step 1: Download the Script
Ensure that the `doc1.sh` script is available in your system. You can download or clone the repository containing the script:
Check out the project repository here: [Docker Automated Infra Setup](https://github.com/karthikvt22/Docker-automated-infra-setup)


### Step 2: Grant Execution Permission
Make the script executable by running the following command in the terminal:
```bash
chmod +x doc1.sh


## Step 3: Run the Script
Execute the script by typing the following command:
./doc1.sh

##Verifying Infrastructure Setup

To ensure that the infrastructure is set up and running properly, you should permit inbound traffic on port 80 (HTTP) if not already done. This is important for confirming that the HTTP server or service is reachable and functioning.

-AWS EC2 (Elastic Compute Cloud)

If your infrastructure is hosted on AWS EC2, you will need to adjust the security group to allow inbound traffic on port 80. Follow these steps:

1.Log in to AWS Management Console and navigate to the EC2 Dashboard.
2.Under the Network & Security section on the left-hand side, click on Security Groups.
3.Find the security group associated with your EC2 instance, and click on it.
4.Click the Inbound rules tab, then click on Edit inbound rules.
5.Click on Add Rule.
6.Select HTTP from the list of predefined rules (this will automatically set the port to 80).
7.Click Save rules.

After following the above steps execute the code by ./doc1.sh , confirm the infrastructure creation by docker ps then head over to chrome search http://localhost. This should print the message in the script displaying script hosted successfully.
