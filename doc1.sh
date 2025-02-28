#!/bin/bash

############################################################################################################################################################
###########Name:KARTHIK V T######## 
###########Date:29/1/25############
###########Title:SCRIPT TO SETUP AUTOMATIC INFRASTRUCTURE USING DOCKER#
###########################################################################################################################################################

# Define variables
CONTAINER_NAME="nginx-container"
IMAGE_NAME="custom-nginx"
NETWORK_NAME="custom-network"
PORT=80

# Update system and install Docker (if not installed)
echo "Checking if Docker is installed..."
if ! command -v docker &> /dev/null; then
    echo "Docker not found. Installing..."
    sudo apt update && sudo apt install -y docker.io
    sudo systemctl enable docker
    sudo systemctl start docker
else
    echo "Docker is already installed."
fi

# Create a custom Docker network
echo "Creating Docker network: $NETWORK_NAME"
docker network create $NETWORK_NAME || echo "Network already exists. Skipping."

# Create a Dockerfile
echo "Creating Dockerfile..."
cat <<EOF > Dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EOF

# Create a simple index.html file
echo "Creating index.html..."
cat <<EOF > index.html
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Nginx</title>
</head>
<body>
    <h1>Hello from your automated infrastructure setup!</h1>
</body>
</html>
EOF

# Build the Docker image
echo "Building Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME .

# Run the container
echo "Running container: $CONTAINER_NAME"
docker run -d --name $CONTAINER_NAME --network $NETWORK_NAME -p $PORT:80 $IMAGE_NAME

# Configure firewall rules
echo "Setting up firewall rules to allow HTTP traffic..."
sudo ufw allow $PORT/tcp

# Display container status
echo "Checking container status..."
docker ps
iuhdeiwuhfuygfbfiufejflieufbyfbwjbuin iue euhewuew rhriewfnew fiuerfrer
# Display access information
echo "Setup complete! Access the web server at http://localhost:$PORT"

