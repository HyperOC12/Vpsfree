while true
do
# Get a list of all the containers
containers=$(pct list | grep -Eo "^[0-9]+")

# Set the name server for each container
for container in $containers; do
  pct set $container --nameserver "2a01:cb0c:83f7:5300::121"
done
done
