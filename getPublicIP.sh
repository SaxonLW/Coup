#!/bin/bash
PublicIP=`curl ipinfo.io/ip -s`
IzzyIP="$PublicIP:25565"
BoizIP="$PublicIP:25566"
TimeStamp=`date +%s`
epochLink="[html]<a href=""[html]https://www.epochconverter.com/?q=$TimeStamp"">$TimeStamp</a>"

echo "$PublicIP" > Coup.ip
echo "$IzzyIP" > IzzyMinecraft.ip
echo "$BoizIP" > BoizMinecraft.ip
echo "$epochLink" > LastRunAt.html

git add --all
git commit -m "$PublicIP" --quiet
git push --quiet
