The warehouse contains a Dockerfile file and a mirror source file of Ubuntu 20.04. 

The instructions for using these two files are as follows:

- First make sure that docker is installed on your computer. If not installed, please refer to the instructions on Tsinghua source: `https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/`
- Start docker
- Put these two files in the same directory
- Start the terminal (Linux) or command line (Windows) in this directory, type in the command to create a local mirror named epics `docker build -t epics:v1 .` 
    Among them: `epics:v1` is the newly created image and its label, you can do it at will Change, but be sure to use ":" to separate; don’t forget the "." at the end
- At this point, check the current docker image, type the command: `docker images` in the terminal or command line, you can see the image generated just after the run is completed
- Type the command in the terminal or command line to create a container named epics: ` docker run -it --name epics -v /host/path:/docker/path epics:v1 /bin/bash `
    where: The parameter after --name is The name of the container, `-v `is to mount the host directory to the container directory, `epics:v1 `is the name and tag of the image just created, and `/bin/bash` is the default terminal using bash. Each parameter should be followed by a space. The default login user for this container is epics, the password is epics, and it has root privileges

I wish you a happy game!