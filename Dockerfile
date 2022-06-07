FROM rasa/rasa:3.1.0

COPY app /app
COPY server.sh /app/server.sh

USER root
RUN chmod -R 777 /app
USER 1001

RUN rasa train nlu

ENTRYPOINT ["/app/server.sh"]