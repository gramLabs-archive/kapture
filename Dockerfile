FROM gcr.io/google_samples/k8skafka:v1

RUN apt-get update -y
RUN apt-get install inotify-tools python3 python3-pip redis-server redis-sentinel -y
RUN pip3 install kubernetes prometheus_client psycopg2-binary
RUN ["mkdir", "-p", "/opt/kapture"]

ADD ./scripts/container/dispatch-messages.sh /opt
ADD ./scripts/container/generate-topics.sh /opt
ADD ./scripts/container/redis-connector.sh /opt
ADD ./scripts/container/kafka-metrics.py /opt
ADD ./scripts/container/postgres-connector.py /opt
ADD ./scripts/container/postgres-connector.sh /opt

ADD ./scripts/control/*.py /opt/kapture/
ADD ./scripts/control/*.yml /opt/kapture/

WORKDIR /opt

CMD [ "sleep", "1" ]
