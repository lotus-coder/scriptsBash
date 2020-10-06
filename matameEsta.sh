#!/bin/bash
echo "Escribe el nombre del proceso que quieres matar"
read proceso
MIPIDS=$( sudo ps -aux | grep "${proceso}" | awk '{ print $2}' )
list=( $MIPIDS )
for i in "${list[@]}"
do
	echo $i
	kill $i
done
