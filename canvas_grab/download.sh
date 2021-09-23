#!/bin/bash
echo "==> canvas_grab starts."
for filename in /config/*.conf; do
    [ -e "$filename" ] || continue
    echo " -> Loading $filename ..."
    /canvas/main.py -Ikc $filename
    echo " -> $filename finished."
done 
echo "==> canvas_grab stops."
