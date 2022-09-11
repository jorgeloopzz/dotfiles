#!/bin/sh

kernel=`uname -r`

kernel=${kernel:: 6}

echo -n "$kernel"

