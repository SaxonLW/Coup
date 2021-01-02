#!/bin/bash
PublicIP=`curl ipinfo.io/ip -s`
IzzyIP="$PublicIP:25565"
BoizIP="$PublicIP:25566"
TimeStamp=`date +%s`

echo "$PublicIP" > Coup.ip
echo "$IzzyIP" > IzzyMinecraft.ip
echo "$BoizIP" > BoizMinecraft.ip
echo "$TimeStamp" > LastRunAt.iso8601

git add --all
git commit -m "$PublicIP" --quiet
git push --quiet
