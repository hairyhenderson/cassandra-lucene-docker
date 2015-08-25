FROM cassandra:2.1.8
MAINTAINER Dave Henderson <david.henderson@qlik.com>

ENV PLUGIN_VERSION $CASSANDRA_VERSION.3

# For Consul to pick up
ENV SERVICE_NAME cassandra
ENV SERVICE_VERSION $CASSANDRA_VERSION

ENV PLUGIN_GROUP_ID com/stratio/cassandra
ENV PLUGIN_ARTIFACT_ID cassandra-lucene-index-plugin

ADD http://search.maven.org/remotecontent?filepath=$PLUGIN_GROUP_ID/$PLUGIN_ARTIFACT_ID/$PLUGIN_VERSION/$PLUGIN_ARTIFACT_ID-$PLUGIN_VERSION.jar /usr/share/cassandra/lib/$PLUGIN_ARTIFACT_ID-$PLUGIN_VERSION.jar
RUN chmod 644 /usr/share/cassandra/lib/$PLUGIN_ARTIFACT_ID-$PLUGIN_VERSION.jar

COPY cassandra.yaml $CASSANDRA_CONFIG/cassandra.yaml
