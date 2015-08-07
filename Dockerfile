FROM cpelka/cassandra-lucene:2.1.8

COPY cassandra.yaml $CASSANDRA_CONFIG/cassandra.yaml
