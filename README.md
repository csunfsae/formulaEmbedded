# Ros Docker container
The catkin workspace is packaged along with a docker config to avoid dependency issues across systems.

**Install tutorial requires Ubuntu**

1. Install Docker-CE: https://docs.docker.com/install/linux/docker-ce/ubuntu/

2. Install Docker-Compose: https://docs.docker.com/compose/install/#install-compose

3. Verify installation is active: systemctl show --property ActiveState docker

4. Pull package: git clone https://github.com/csunfsae/jetsonTx2.git

5. Unzip package: unzip jetsonTx2-master.zip 

5. Change directory to jetsonTx2-master: cd jetsonTx2-master

6. Build Docker environment: sudo docker-compose up --build

7. Run Docker environment: sudo docker run -it jetsontx2-master_ros
  
8. Edit files locally && run catkin workspace commands via terminal/docker
