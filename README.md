# RabbitMQ Mock Demonstration

This is a mock demonstration of how the RabbitMQ message exchange system works. It simulates the communication between a server and client without requiring a full RabbitMQ setup.

## What This Demonstrates

The mock shows:
1. Server starting up and waiting for messages
2. Client sending a message
3. Server receiving and processing the message
4. Server sending a response
5. Client receiving the response

## How to Run the Mock

1. Make sure you have PHP installed:
   ```bash
   # On Ubuntu/Debian
   sudo apt-get install php-cli

   # On macOS with Homebrew
   brew install php

   # On Windows
   # Download and install PHP from php.net
   ```

2. Run the mock demonstration:
   ```bash
   php mock_demo.php
   ```

## Expected Output

You should see something like this:
```
=== RabbitMQ Mock Demonstration ===

Server: Starting up...
Server: Waiting for messages...

Client: Sending message...
Client: {"message":"test message","type":"echo"}

Server: Received message!
Server: Processing message...
Server: Message type: echo
Server: Message content: test message

Server: Sending response...
Server: {"return_code":"0","message":"Echo: test message"}

Client: Received response!
Client: {"return_code":"0","message":"Echo: test message"}

=== Demonstration Complete ===
```

## Real System vs Mock

In the real system:
- Messages are sent through RabbitMQ server
- Communication is asynchronous
- Multiple clients can connect
- Messages are queued and processed in order

This mock demonstrates the same message flow but in a simplified, synchronous way.

## Next Steps

To set up the real system:
1. Install Ubuntu Server
2. Set up RabbitMQ
3. Configure PHP
4. Run the actual server and client scripts

See the setup.sh script for complete installation instructions. 