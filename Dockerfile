FROM timveil/docker-hadoop-core:3.1.x

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:9870/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# namenode ui
EXPOSE 9870

CMD ["/run.sh"]
