#!/bin/bash
echo "==> canvas_grab starts."
for filename in /config/*.conf; do
    [ -e "$filename" ] || continue
    echo " -> Loading $filename ..."
    python /canvas/main.py -Ikc $filename
    echo " -> $filename finished."
done 
echo "==> canvas_grab stops."
