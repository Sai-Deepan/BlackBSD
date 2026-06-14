#!/bin/sh

set -e

pkg update

while read pkgname
do
    pkg install -y "$pkgname"
done < packages.txt

echo "BlackBSD installation complete."
