#!/bin/sh

export PATH="/bin:/usr/bin:/usr/local/bin"

mkdir $HOME/.gyaon 2>/dev/null
rec -r 44100 -b 16 $HOME/.gyaon/tmp.wav &
echo $! > $HOME/.gyaon/rec.pid
