#!/bin/bash

cd /home/PublicIP/Coup/

PublicIP=`curl ipinfo.io/ip -s`
IzzyIP="$PublicIP:25565"
BoizIP="$PublicIP:25566"
TimeStamp=`date --iso-8601=seconds`
READMEmsg="# Coup Public IP List
Last Refreshed : $TimeStamp"

echo "$PublicIP" > Coup.ip
echo "$IzzyIP" > IzzyMinecraft.ip
echo "$BoizIP" > BoizMinecraft.ip
echo "$READMEmsg" > README.md

git add --all
git commit -m "$PublicIP" --quiet
git push --quiet
