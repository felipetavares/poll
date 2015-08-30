#!/bin/bash

if [ ! -d /usr/local/share/poll/ ]; then
	mkdir /usr/local/share/poll/
fi
cp vote /usr/local/share/poll/vote
cp .make_webpage /usr/local/share/poll/.make_webpage
cp poll /usr/local/bin/poll
