# Ros Docker container
The catkin workspace is packaged along with a docker config to avoid dependency issues across systems.

**Install tutorial requires Ubuntu**

## Running Locally
Commands
```bash
# Install Docker-CE 
https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Install Docker-Compose 
https://docs.docker.com/compose/install/#install-compose

# Verify installation is active 
systemctl show --property ActiveState docker

# Pull package 
git clone https://github.com/csunfsae/jetsonTx2.git

# Unzip package 
unzip jetsonTx2-master.zip  

# Change directory to jetsonTx2-master
cd jetsonTx2-master

# Build and run Docker environment
sudo docker-compose up --build

#Run Docker environment 
sudo docker run -it jetsontx2-master_ros

```
**Now we can capable of editing files locally & running catkin workspace commands via terminal/docker**
