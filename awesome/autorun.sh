#!/usr/bin/env bash

run(){
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

# firefox --new-window
run nm-applet --no-agent
run pasystray
run cbatticon -u 120
run redshift
