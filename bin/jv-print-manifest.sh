#!/bin/sh
unzip -c $* META-INF/MANIFEST.MF | perl -0777 -pe 's/\r?\n //msg;'
