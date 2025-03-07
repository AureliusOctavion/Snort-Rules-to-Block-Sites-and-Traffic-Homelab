# install_snort.sh - Installs Snort and necessary directories
sudo apt-get update
sudo apt-get install -y snort

# Create necessary directories for Snort
sudo mkdir -p /usr/local/etc/rules
sudo mkdir -p /usr/local/etc/so_rules/
sudo mkdir -p /usr/local/etc/lists/
sudo touch /usr/local/etc/rules/local.rules
sudo touch /usr/local/etc/lists/default.blocklist
sudo mkdir -p /var/log/snort
