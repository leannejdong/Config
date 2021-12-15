# update
sudo pacman -Syy

# install docker
sudo pacman -S docker

# now we start the docker service
sudo systemctl start docker.service

# run docker without root we need to add docker to root group 
sudo usermod -aG docker $USER

# Log out linux and login again

exit

reboot

# run docker without root

If daemon is running for docker containers, 
`docker run hello-world`

Otherwise
`systemctl start docker`
