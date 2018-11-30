一个装有[zsh](http://www.zsh.org/)，[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)，[z.sh](https://github.com/rupa/z)的ubuntu 18.04 LTS 环境。
安装了nano,wget,curl,gcc,zsh,openssh等应用。
使用方法：
```
# 克隆项目及子模块
git clone https://github.com/CieloSun/oh-my-zsh-docker.git
# 进入项目
cd oh-my-zsh-docker
# 编译项目
docker build -t <build_name>:<build_tag> .
# 如果编译失败应是网络问题，请重试，或自己替换项目中的sources.list后，使用"docker build --no-cache -t <build_name>:<build_tag> . "重试
# 以后台运行方式部署，并暴露端口
docker run -d -P --name <host_name> <build_name>:<build_tag>
# 获取ssh端口
docker port <host_name> 22
# 使用ssh端口登录，密码为root
ssh root@localhost -p <port>
```
