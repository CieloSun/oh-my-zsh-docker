# You can login the server with account root whose psw is "root".
FROM rastasheep/ubuntu-sshd
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
RUN echo -e "exec zsh\nsource /root/.zshrc">>/root/.bashrc
# config z
RUN echo -e ". /root/z/z.sh">>/root/.zshrc
# set ports
EXPOSE 80 443 6579 8080 8888 22122 23000 40000 40001 40002 40003 40004 40005