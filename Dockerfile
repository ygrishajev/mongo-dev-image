FROM mongo:4.2.1

COPY initial-user.sh /docker-entrypoint-initdb.d/

CMD ["mongod", "--nojournal"]
