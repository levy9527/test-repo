#!/bin/sh
version=`sed -n 3p package.json | cut -d\" -f 4`
git commit -m 'chore(release): $version'
