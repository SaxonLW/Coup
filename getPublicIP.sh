#!/bin/bash
PublicIP=`curl ipinfo.io/ip -s`
IzzyIP="$PublicIP:25565"
BoizIP="$PublicIP:25566"
TimeStamp=`date +%s`

echo "$PublicIP" > Coup.ip
echo "$IzzyIP" > IzzyMinecraft.ip
echo "$BoizIP" > BoizMinecraft.ip
echo "https://www.epochconverter.com/?q=$TimeStamp" > LastRunAt.epoch

git add --all
git commit -m "$PublicIP" --quiet
git push --quiet
