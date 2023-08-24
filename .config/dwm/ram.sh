#!/bin/sh

ram=`free -h | awk '/^Mem:/ {print $3}'`

echo -n "$ram"

