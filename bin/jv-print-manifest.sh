#!/bin/sh
# -*- shell-mode -*-

for i in $*
do
    echo $i
    unzip -c $i META-INF/MANIFEST.MF | perl -0777 -pe 's/\r?\n //msg;'
done
