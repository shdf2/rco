#!/bin/bash

echo "on-bt-download-complete=./on-complete.sh" >> aria2c.conf
chmod +x on-complete.sh

echo "rpc-secret=$ARIA2C_SECRET" >> aria2c.conf
aria2c --conf-path=aria2c.conf&
yarn start
