#!/bin/bash

# Exit on error
set -e

# Update system
echo "Updating system..."
sudo apt-get update
sudo apt-get upgrade -y

# Install required packages
echo "Installing required packages..."
sudo apt-get install -y \
    php \
    php-cli \
    php-common \
    php-curl \
    php-mbstring \
    php-xml \
    rabbitmq-server \
    git

# Start and enable RabbitMQ service
echo "Starting RabbitMQ service..."
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server

# Create user with UCID (replace 'your_ucid' with actual UCID)
echo "Creating user..."
sudo useradd -m -s /bin/bash your_ucid
echo "your_ucid:your_password" | sudo chpasswd
sudo usermod -aG sudo your_ucid

# Set up example code
echo "Setting up example code..."
cd /home/your_ucid
git clone https://github.com/MattToegel/IT490.git
cd IT490

# Set proper permissions
echo "Setting permissions..."
sudo chown -R your_ucid:your_ucid /home/your_ucid/IT490

echo "Setup completed successfully!"
echo "To test the setup:"
echo "1. Open two terminal windows"
echo "2. In the first terminal, run: php RabbitMQServerSample.php"
echo "3. In the second terminal, run: php RabbitMQClientSample.php" 