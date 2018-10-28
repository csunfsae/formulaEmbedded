# Ros Docker container
The catkin workspace is packaged along with a docker config to avoid dependency issues across systems.

**Install tutorial requires ubuntu**

1. Install Docker-CE
  Follow the following: https://docs.docker.com/install/linux/docker-ce/ubuntu/

2. Install Docker-Compose
  Follow the following: https://docs.docker.com/compose/install/#install-compose

3. Verify installation is active
  systemctl show --property ActiveState docker

3. Build Docker environment
  sudo docker-compose up --build

4. Run Docker environment 
  sudo docker run -it jetsontx2_ros
  
5. Edit files locally && run catkin workspace commands via terminal/docker
