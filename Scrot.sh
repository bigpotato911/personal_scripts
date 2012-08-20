#!/bin/sh
scrot -s '%Y-%m-%d_%T.png' -e 'mv $f ~/Pictures/'
exit 0
