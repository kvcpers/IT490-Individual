#!/bin/bash

set -e

echo "Updating system..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Installing required packages..."
sudo apt-get install -y \
    php \
    php-cli \
    php-common \
    php-curl \
    php-mbstring \
    php-xml \
    rabbitmq-server \
    git \
    composer

echo "Starting RabbitMQ service..."
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server

echo "Creating user..."
sudo useradd -m -s /bin/bash kp784
echo "kp784:your_password" | sudo chpasswd
sudo usermod -aG sudo kp784

echo "Setting up example code..."
cd /home/kp784
git clone https://github.com/MattToegel/IT490.git
cd IT490

echo "Installing PHP dependencies..."
composer install

echo "Setting permissions..."
sudo chown -R kp784:kp784 /home/kp784/IT490

echo "Setup completed successfully!"
echo "To test the setup:"
echo "1. Open two terminal windows"
echo "2. In the first terminal, run: php RabbitMQServerSample.php"
echo "3. In the second terminal, run: php RabbitMQClientSample.php"