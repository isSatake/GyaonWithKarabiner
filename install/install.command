#!/bin/sh

which lame 1>/dev/null || brew install lame
which sox 1>/dev/null || brew install sox

mkdir $HOME/.gyaon 
cd $(dirname $0)
cp .contents/* $HOME/.gyaon
