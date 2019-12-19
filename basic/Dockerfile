FROM ubuntu:latest
LABEL maintainer="157239q@gmail.com"
LABEL vendor="157239n"
# this is to prevent interaction with apt so that the build can happen automatically
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
	apt-get install -y vim \
	curl \
	wget \
	git \ 
    && curl vim.kelvinho.org | bash
