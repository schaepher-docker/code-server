FROM codercom/code-server

ENV TZ=Asia/Shanghai

ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update \
	&& apt-get install nodejs npm -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& npm install -g hexo-cli

USER coder