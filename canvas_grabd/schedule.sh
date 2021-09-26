#!/bin/bash
STDOUT=/proc/1/fd/1
STDERR=/proc/1/fd/2
echo " ┌────────────────────────────────┐" > $STDOUT 
echo " │     Canvas grabd  v2.2.0       │" > $STDOUT 
echo " │                                │" > $STDOUT 
echo " │      Visit GitHub repo:        │" > $STDOUT 
echo " │  github.com/skyzh/canvas_grab  │" > $STDOUT 
echo " │       for instructions         │" > $STDOUT 
echo " │                                │" > $STDOUT 
echo " │  This image is not official    │" > $STDOUT 
echo " │  Visit Docker hub for usage    │" > $STDOUT 
echo " │     victrid/canvas_grabd       │" > $STDOUT 
echo " └────────────────────────────────┘" > $STDOUT 
echo "Exporting env variables..." > $STDOUT
printenv | sed 's/^\(.*\)$/export \1/g' > /etc/profile
echo "Scheduler settings: $SCHEDULE" > $STDOUT
echo "$SCHEDULE /bin/sh -c 'source /etc/profile && /canvas/download.sh'" > $STDOUT 2>$STDERR" > /etc/cron.d/canvas
echo "Applying crontab..." > $STDOUT
crontab /etc/cron.d/canvas
echo "Current crontab:" > $STDOUT
crontab -l > $STDOUT 2>$STDERR
cron -f > $STDOUT 2>$STDERR

