FROM timveil/docker-hadoop-base

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:50070/ || exit 1

#todo can this ENV and volume definition be moved to compose?
ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# namenode ui
EXPOSE 50070

CMD ["/run.sh"]
