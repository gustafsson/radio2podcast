#!/bin/bash

# Based on an article at
# http://www.linuxjournal.com/article/8171

playlist=http://www.2600.com/wbai/wbai.m3u
playlist=http://sverigesradio.se/topsy/direkt/164-hi-mp3.m3u
dumpfile=`date "+radiodump %Y-%m-%d %H%M%S.mp3"`

echo "----------------------------"
echo "Hit Ctrl-C to stop recording"
echo "----------------------------"

mplayer -cache 128 \
  -playlist $playlist \
  -dumpaudio -dumpfile "$dumpfile" 2> /dev/null
