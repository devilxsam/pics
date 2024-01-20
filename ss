1

2
Here are the steps to install Docker on Kali Linux:

1. Update package lists:

Bash
sudo apt update
Use code with caution. Learn more
2. Install Docker:

Choose one of the following options based on your preference:

Option A: Install from Kali repositories (for a stable version):

Bash
sudo apt install docker.io
Use code with caution. Learn more
Option B: Install from Docker's repositories (for the latest version):

Add Docker's GPG key:
Bash
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
Use code with caution. Learn more
2. Set up the Docker repository:

Bash
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
Use code with caution. Learn more
Update package lists again:
Bash
sudo apt update
Use code with caution. Learn more
Install Docker:
Bash
sudo apt install docker-ce docker-ce-cli containerd.io
Use code with caution. Learn more
3. Start and enable Docker:

Bash
sudo systemctl start docker
sudo systemctl enable docker
Use code with caution. Learn more
4. Add your user to the Docker group (optional, but recommended):

Bash
sudo usermod -aG docker $USER
Use code with caution. Learn more
5. Log out and log back in for the group changes to take effect.

6. Verify the installation:

Bash
docker --version
Use code with caution. Learn more
This should display the installed Docker version.
