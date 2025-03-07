# configure_snort.sh - Configures Snort rules and services

echo "Configuring Snort rules..."
echo 'alert icmp any any -> any any ( msg:"ICMP Traffic Detected"; sid:10000001; metadata:policy security-ips alert;)' | sudo tee /usr/local/etc/rules/local.rules

# Create ethtool service for network configuration
echo "Setting up ethtool service..."
sudo tee /lib/systemd/system/ethtool.service > /dev/null <<EOL
[Unit]
Description=Ethtool Configuration for Network Interface

[Service]
Requires=network.target
Type=oneshot
ExecStart=/sbin/ethtool -K eth0 gro off
ExecStart=/sbin/ethtool -K eth0 lro off

[Install]
WantedBy=multi-user.target
EOL

sudo systemctl enable ethtool
sudo service ethtool start
