FROM codercom/code-server

ENV TZ=Asia/Shanghai

ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get update \
	&& apt-get install tzdata nodejs npm supervisor -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& npm install -g hexo-cli \
	&& chown -R coder:coder /var/log/supervisor

COPY --chown=coder:coder ./entrypoint.sh /entrypoint.sh
COPY ./supervisor /etc/supervisor

RUN chmod a+x /entrypoint.sh && \
	mkdir -p /var/run/supervisor && \
	chown coder:coder /var/run/supervisor

USER coder

ENTRYPOINT ["/entrypoint.sh"]
