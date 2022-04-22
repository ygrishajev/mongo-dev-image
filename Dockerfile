FROM mongo:5.0

COPY initial-user.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/initial-user.sh

RUN apt-get update \
    && apt-get install -y iputils-ping

CMD ["mongod", "--nojournal"]
