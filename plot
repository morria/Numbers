#!/bin/zsh
while read data; do
    echo $data >> /tmp/plot
done
printf "set terminal dumb;\n plot '/tmp/plot' title 'data';\n" | gnuplot
rm /tmp/plot
