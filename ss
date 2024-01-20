Update Package Lists:
Open a terminal window and update the package lists:

sudo apt update
sudo apt upgrade

Install Dependencies:
Install the necessary dependencies:


sudo apt install apt-transport-https ca-certificates curl software-properties-common

Add Docker GPG Key:
Add Docker's official GPG key:

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

Set up Docker Repository:
Set up the stable Docker repository:

echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Update Package Lists Again:
Update the package lists once more:

sudo apt update

Install Docker:
Now, you can install Docker:


sudo apt install docker-ce docker-ce-cli containerd.io

Verify Docker Installation:
Check if Docker has been installed successfully by running:

sudo docker --version

You can also run a test container:

sudo docker run hello-world
If everything is set up correctly, you should see a message indicating that your Docker installation is working.
