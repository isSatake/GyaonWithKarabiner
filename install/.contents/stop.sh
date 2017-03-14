#!/bin/sh

export PATH="/bin:/usr/bin:/usr/local/bin"

IDSTR=$(cat "$HOME"/.gyaon/gyaonid.txt)
SERVERSTR=$(cat "$HOME"/.gyaon/server.txt)

GYAONID=${IDSTR:-"masuilab"}
SERVER=${SERVERSTR:-"https://gyaon.herokuapp.com"}

kill $(cat "$HOME"/.gyaon/rec.pid) 
lame "$HOME"/.gyaon/tmp.wav "$HOME"/.gyaon/out.mp3
curl -F file=@"$HOME"/.gyaon/out.mp3 "$SERVER"/upload
