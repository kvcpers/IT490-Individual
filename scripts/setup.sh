#!/bin/bash

# Exit on error
set -e

# This script sets up everything we need to run the message system

# Step 1: Update the computer (like updating your phone)
echo "Step 1: Updating the computer..."
sudo apt-get update
sudo apt-get upgrade -y

# Step 2: Install all the programs we need (like installing apps on your phone)
echo "Step 2: Installing programs..."
sudo apt-get install -y \
    php \           # The main programming language we need
    php-cli \       # Lets us run PHP from the command line
    php-common \    # Basic PHP stuff
    php-curl \      # Lets PHP talk to the internet
    php-mbstring \  # Helps PHP work with text
    php-xml \       # Helps PHP read XML files
    rabbitmq-server \ # The message system we need
    git \           # To get code from GitHub
    composer        # To get extra PHP tools

# Step 3: Turn on the message system (like turning on your phone's messaging app)
echo "Step 3: Starting the message system..."
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server

# Step 4: Create your account (like creating a profile on your phone)
echo "Step 4: Creating your account..."
sudo useradd -m -s /bin/bash kp784
echo "kp784:your_password" | sudo chpasswd
sudo usermod -aG sudo kp784

# Step 5: Get the example code (like downloading an app)
echo "Step 5: Getting the example code..."
cd /home/kp784
git clone https://github.com/MattToegel/IT490.git
cd IT490

# Step 6: Get extra PHP tools (like getting app add-ons)
echo "Step 6: Getting extra tools..."
composer install

# Step 7: Make sure you own all the files (like having access to your own files)
echo "Step 7: Setting up file permissions..."
sudo chown -R kp784:kp784 /home/kp784/IT490

# Step 8: Tell you everything is ready
echo "Step 8: All done! Here's how to test it:"
echo "1. Open two terminal windows"
echo "2. In the first window, type: php RabbitMQServerSample.php"
echo "3. In the second window, type: php RabbitMQClientSample.php"
echo "If you see messages going back and forth, it's working!"

echo "Setup completed successfully!"
echo "To test the setup:"
echo "1. Open two terminal windows"
echo "2. In the first terminal, run: php RabbitMQServerSample.php"
echo "3. In the second terminal, run: php RabbitMQClientSample.php" 