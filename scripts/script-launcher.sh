#!/bin/bash

function main() {
	cmd="$(grep '^function' "$0" | 
		grep -v "function main" | 
		awk '{print $2}' | 
		cut -d\( -f1|fzf --prompt "Plase select an option")"
	$cmd
	exit 0
}

function EXIT() {
	echo "bye!"
	exit
}

function Hello() {
	echo "Hello world"
}

main
