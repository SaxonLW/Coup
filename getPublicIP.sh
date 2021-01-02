#!/bin/bash
PublicIP=`curl ipinfo.io/ip -s`
IzzyIP="$PublicIP:25565"
BoizIP="$PublicIP:25566"
TimeStamp=`date +%s`
EpochLink="<html><a href=""https://www.epochconverter.com/?q=$TimeStamp"">$TimeStamp</a></html>"
READMEmsg="# Coup Public IP List
[Last Refreshed : $TimeStamp]($EpochLink)"

echo "$PublicIP" > Coup.ip
echo "$IzzyIP" > IzzyMinecraft.ip
echo "$BoizIP" > BoizMinecraft.ip
echo "$READMEmsg" > README.md

git add --all
git commit -m "$PublicIP" --quiet
git push --quiet
