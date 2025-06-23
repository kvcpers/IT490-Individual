#!/bin/bash

# Exit on any error
set -e

echo "Checking and completing remaining setup tasks..."

# Check if Composer is installed
if ! command -v composer &> /dev/null; then
    echo "Installing Composer..."
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
else
    echo "Composer is already installed"
fi

# Create composer.json if it doesn't exist
if [ ! -f "composer.json" ]; then
    echo "Creating composer.json..."
    cat > composer.json << EOL
{
    "name": "it490/rabbitmq-test",
    "description": "IT490 RabbitMQ Test",
    "require": {
        "php": ">=7.4",
        "php-amqplib/php-amqplib": "^3.0"
    }
}
EOL
fi

# Check if vendor directory exists
if [ ! -d "vendor" ]; then
    echo "Installing PHP dependencies..."
    composer install
else
    echo "PHP dependencies are already installed"
fi

# Create test message file if it doesn't exist
if [ ! -f "test_message.txt" ]; then
    echo "Creating test message file..."
    cat > test_message.txt << EOL
{
    "type": "test",
    "message": "Hello from setup script!"
}
EOL
else
    echo "Test message file already exists"
fi

echo "Setup completed successfully!"
echo ""
echo "To test the setup:"
echo "1. Connect with two separate SSH sessions"
echo "2. In the first session, run: php RabbitMQServerSample.php"
echo "3. In the second session, run: php RabbitMQClientSample.php" 