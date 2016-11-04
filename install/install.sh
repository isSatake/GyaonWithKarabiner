#!/bin/sh

which lame 1>/dev/null || brew install lame
which sox 1>/dev/null || brew install sox

mkdir $HOME/.gyaon 
cp .contents/* $HOME/.gyaon
