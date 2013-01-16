#!/bin/zsh
while read data; do
    echo $data >> /tmp/plot
done
printf "set terminal dumb;\n unset key; plot '/tmp/plot';\n" | gnuplot
rm /tmp/plot
