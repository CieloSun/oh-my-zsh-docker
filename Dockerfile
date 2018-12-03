# You can login the server with account root whose psw is "root".
FROM rastasheep/ubuntu-sshd
# set ports
EXPOSE 22 80 443 1433 3306 6579 8080 8888 40000 40001 40002 40003 40004 40005 40006 40007 40008 40009
# use own apt sources
COPY sources.list /etc/apt/sources.list
# apt update and install
RUN apt update && apt install -y nano git wget zsh
# install oh-my-zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
# install z
WORKDIR /root
RUN git clone --depth 1 https://github.com/rupa/z.git
# change bashrc
COPY .bashrc /root/.bashrc
