ystem
sudo yum update -y

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker Engine
sudo yum install -y docker-ce

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Verify Docker installation with a test container
sudo docker run hello-world

# Optionally, add your user to the docker group to run Docker without sudo
# Replace 'your_username' with your actual username
# sudo usermod -aG docker your_username

echo "Docker installation completed."

