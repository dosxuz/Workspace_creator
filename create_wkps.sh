#!/bin/bash

read -p "Enter the number of workspaces to create : " n
for i in $(seq 1 $n)
do
	echo "Creating workspace $i"
	read -p "Enter the name of the first workspace : " name
	mkdir $name
	cd $name
	mkdir notes/ notes/Pictures nmap
	filename="${name}.md"
	cd notes/
	touch $filename
	cp -r ~/.obsidian .
	cd ../../
done
