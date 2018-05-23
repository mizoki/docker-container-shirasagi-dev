FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.9
MAINTAINER Hiroto MIZOKI <h.mizoki@gmail.com>

RUN bin/elasticsearch-plugin remove x-pack
RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install analysis-kuromoji
RUN bin/elasticsearch-plugin install ingest-attachment
# RUN ES_JAVA_OPTS="-Dhttp.proxyHost=proxy_host -Dhttp.proxyPort=port_number -Dhttps.proxyHost=proxy_host -Dhttps.proxyPort=port_number" bin/elasticsearch-plugin install analysis-icu
# RUN ES_JAVA_OPTS="-Dhttp.proxyHost=proxy_host -Dhttp.proxyPort=port_number -Dhttps.proxyHost=proxy_host -Dhttps.proxyPort=port_number" bin/elasticsearch-plugin install analysis-kuromoji
# RUN ES_JAVA_OPTS="-Dhttp.proxyHost=proxy_host -Dhttp.proxyPort=port_number -Dhttps.proxyHost=proxy_host -Dhttps.proxyPort=port_number" bin/elasticsearch-plugin install ingest-attachment
