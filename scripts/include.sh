#!/bin/sh
# get *.dot files (or any pattern you like) into one place
ls ../2017AGs/*.dot > files.txt
# bring them into a format m4 likes
awk '{print "include(" $1 ")" "dnl"}' files.txt > includes.txt
#done