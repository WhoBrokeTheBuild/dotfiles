#!/bin/sh

type yaourt &> /dev/null && exit

git clone https://aur.archlinux.org/package-query.git /tmp
cd /tmp/package-query
makepkg -si

git clone https://aur.archlinux.org/yaourt.git /tmp
cd /tmp/yaourt
makepkg -si
cd ..
