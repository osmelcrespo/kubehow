# Update package lists
sudo apt-get update

# Install OpenJDK 8
sudo apt-get install openjdk-17-jre-headless -y

# Install unzip utility
sudo apt install unzip -y

# Download Gradle
wget https://services.gradle.org/distributions/gradle-7.5.1-bin.zip -P /tmp

# Install Git
sudo apt install git-all -y

# Disable UFW (Uncomplicated Firewall)
sudo ufw disable

# Disable swap
sudo swapoff -a

# Update package lists and install HTTPS transport for APT
sudo apt-get update && apt-get install -y apt-transport-https

# Navigate to /opt directory
cd /opt

# Create a directory for Nexus
mkdir nexus && cd nexus

# Download Nexus
wget https://download.sonatype.com/nexus/3/nexus-3.77.2-02-unix.tar.gz

# Extract the Nexus tarball
tar xf nexus-3.77.2-02-unix.tar.gz

# Navigate to the Nexus directory
cd nexus-3.77.2-02

# Run Nexus
./bin/nexus run

./bin/nexus start