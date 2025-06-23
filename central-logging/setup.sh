#!/bin/bash

set -e

echo "🔧 Starting setup..."

# 1. Set hostname
echo "📛 Setting hostname..."
sudo hostnamectl set-hostname kp123-node-A

# 2. Add users (one line per group member UCID)
echo "👥 Adding users..."
sudo adduser --disabled-password --gecos "" kp123
sudo adduser --disabled-password --gecos "" kp784

# 3. Install packages
echo "📦 Installing required packages..."
sudo apt update
sudo apt install -y rsyslog ufw curl

# 4. Configure firewall
echo "🔥 Configuring UFW..."
sudo ufw allow ssh
sudo ufw --force enable

# 5. Install Tailscale
echo "🌐 Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up

# 6. Configure rsyslog to forward logs to central rsyslog server (adjust IP)
echo "📝 Configuring rsyslog client..."
cat <<EOF | sudo tee /etc/rsyslog.d/90-central-logging.conf
*.* @100.93.223.65:514
EOF

# Restart rsyslog to apply changes
echo "🔁 Restarting rsyslog..."
sudo systemctl restart rsyslog

echo "✅ Setup complete!" 