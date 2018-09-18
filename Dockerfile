FROM timveil/docker-hadoop-base:2.8.x

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:50070/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# namenode ui
EXPOSE 50070

CMD ["/run.sh"]
