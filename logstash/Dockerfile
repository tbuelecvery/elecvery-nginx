FROM ubuntu:18.04
FROM logstash:7.16.1

# application logs pipeline
COPY ./application-logs.conf /usr/share/logstash/pipeline/logstash.conf

ENV LOG_LEVEL=info
ENV XPACK_MONITORING_ENABLED=false

EXPOSE 5044