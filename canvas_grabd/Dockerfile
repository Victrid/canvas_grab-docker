FROM victrid/canvas_grab
WORKDIR /canvas
ENV SCHEDULE "30 * * * *"
COPY schedule.sh schedule.sh
RUN apt-get update \
    && apt-get install --no-install-recommends -y cron \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x schedule.sh \
    && touch /var/log/cron.log
ENTRYPOINT /canvas/schedule.sh
