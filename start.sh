#!/bin/bash

echo -e "[gdrive]\ntype = drive\nscope = drive\ntoken = {"access_token":"ya29.ImG9B_FSnbJKpaP4sgnUdKp9xy0aWknOoq6sSqn8KfKf2_RX1qwR73S8JC3sa-ngXIAmb8pKD7CoLR1qcAu8miKeGiBtReLo48hvFfEb1CpttIfxdy63O8W2kIkiyuGYzBWA","token_type":"Bearer","refresh_token":"1//0gUmEnSK1OpktCgYIARAAGBASNwF-L9Irc-pz6taCJNd0GGBwqKUmCX2iBgD41pcfTSH8MhG5gkHGGI3MB1ExsNm7G_lie-OHOCg","expiry":"2020-02-12T04:14:41.401225515+08:00"}\nteam_drive = 0AFL_s6Qe4_w9Uk9PVA" > rclone.conf
echo "on-bt-download-complete=./on-complete.sh" >> aria2c.conf
chmod +x on-complete.sh

echo "rpc-secret=$ARIA2C_SECRET" >> aria2c.conf
aria2c --conf-path=aria2c.conf&
yarn start
