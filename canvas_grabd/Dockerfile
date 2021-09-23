FROM docker.io/victrid/canvas_grab
WORKDIR /canvas
ENV SCHEDULE "30 * * * *"
COPY schedule.sh schedule.sh
RUN apt-get update && apt-get install -y cron && chmod +x schedule.sh && touch /var/log/cron.log
ENTRYPOINT /canvas/schedule.sh && cron && tail -f /var/log/cron.log
