#!/bin/bash

echo "=====SERVER HEALTH====="
echo "Hopst name; $(hostname)"
echo "Uptime:"

uptime -p

echo "Disk Usage:"
df -h /

echo "Memory :"
free -m
