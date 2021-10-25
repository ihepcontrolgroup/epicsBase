# epicsBase
该仓库收录了一个Dockerfile文件，以及一个Ubuntu20.04的镜像源文件。
此二文件的使用说明如下：
- 首先确保自己的电脑上安装了docker。
  若未安装，请参考清华源上的说明：`https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/`
- 启动docker
- 将这两个文件放在同一个目录下
- 在该目录下启动终端（Linux）或命令行（Windows），键入命令，创建名为epics的本地镜像`docker build -t epics:v1` .
  其中：epics:v1，是新建的镜像和其标签，可以随意更改，但一定要用":"隔开；末尾的"."不要忘了
- 此时查看一下当前的docker镜像，在终端或命令行键入命令：`docker images`，即可看到刚刚运行完成后生成的镜像
- 在终端或命令行键入命令，创建名为epics的容器：`docker run -it --name epics -v /host/path:/docker/path epics:v1 /bin/bash`
  其中： --name 后的参数是容器名，-v 是将宿主机目录挂载到容器目录下，epics:v1 是刚才创建的镜像名及tag，/bin/bash 是默认终端使用bash
  每个参数后都应该跟有空格。该容器默认登录的用户为epics，密码为epics，其具有root权限。

祝您游戏happy！

