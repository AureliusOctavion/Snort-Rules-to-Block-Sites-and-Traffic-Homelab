# run_snort.sh - Runs Snort in detection mode
echo "Validating Snort configuration..."
snort -c /usr/local/etc/snort/snort.lua -R /usr/local/etc/rules/local.rules

echo "Running Snort in detection mode..."
sudo snort -c /usr/local/etc/snort/snort.lua -i eth0 -A alert_fast -s 65535 -k none
