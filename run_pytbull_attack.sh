# run_pytbull_attack.sh - Runs pytbull-ng attack simulation
HOST_IP=$(sudo docker run --rm -it efigo/pytbull-ng -m victim | grep 'Host IP:' | awk '{print $NF}')

echo "Starting attack simulation on $HOST_IP..."
sudo docker run --rm -it efigo/pytbull-ng -m attacker -t "$HOST_IP"
