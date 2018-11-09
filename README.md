# Ros Docker container

The catkin workspace is packaged along with a docker config to avoid dependency issues across systems.

Commands
```bash
# Install Docker-CE 
https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Install Docker-Compose 
https://docs.docker.com/compose/install/#install-compose

# Verify docker service is running
systemctl show --property ActiveState docker

# clone repo
git clone https://github.com/csunfsae/jetsonTx2.git

# Change directory to repo
cd jetsonTx2-master

# Build Docker container (YOU ONLY NEED TO DO THIS ONCE)
sh createImage.sh

# Spin up docker container (RUN THIS EVERYTIME YOU NEED TO WORK)
sh runContainer.sh
'''
