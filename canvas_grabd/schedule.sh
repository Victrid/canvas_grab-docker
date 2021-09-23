#/bin/bash
echo "$SCHEDULE /canvas/download.sh 2>&1" > /etc/cron.d/canvas
crontab /etc/cron.d/canvas

