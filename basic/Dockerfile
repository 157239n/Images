FROM ubuntu:latest
LABEL maintainer="157239q@gmail.com"
# this is to prevent interaction with apt so that the build can happen automatically
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
	apt-get install -y vim \
	curl \
	wget \
	git \ 
	&& curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
	&& echo export TERM=xterm-256color >>/root/.bashrc
COPY ./startup /startup
RUN mv /startup/.vimrc /root/.vimrc \
	&& vim +'PlugInstall --sync' +qa \
	&& echo "colorscheme space-vim-dark" >>/root/.vimrc \
