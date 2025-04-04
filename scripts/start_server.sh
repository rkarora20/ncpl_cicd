#!/bin/bash
# Start the Node.js application (replace with your start command)
cd /var/www/html
npm install
pm2 start app.js -f

