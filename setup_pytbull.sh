# setup_pytbull.sh - Installs Docker and pytbull-ng
echo "Installing Docker for pytbull-ng..."
sudo apt install -y docker.io
sudo docker pull efigo/pytbull-ng:latest

echo "Verifying Docker image installation..."
sudo docker images | grep efigo/pytbull-ng
