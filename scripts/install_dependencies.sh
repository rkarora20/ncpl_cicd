#!/bin/bash
# Update system packages and install necessary dependencies
sudo yum update -y
sudo yum install -y nodejs npm
npm install -g pm2
