#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
I3DIR=$HOME/.i3
FNTDIR=$HOME/.local/share/fonts

mkdir -p $I3DIR
mkdir -p $FNTDIR

if [ -e "$I3DIR" ]; then 
    unlink $I3DIR/config
fi
ln -s $DIR/config $I3DIR/config

if [ -e "$I3DIR/i3blocks.conf" ]; then
    unlink $I3DIR/i3blocks.conf
fi
ln -s $DIR/i3blocks.conf $I3DIR/i3blocks.conf

if [ -e "$I3DIR/compton.conf" ]; then
    unlink $I3DIR/compton.conf
fi
ln -s $DIR/compton.conf $I3DIR/compton.conf

if [ -e "$I3DIR/weather.sh" ]; then
    unlink $I3DIR/weather.sh
fi
ln -s $DIR/weather.sh $I3DIR/weather.sh

FONTS="icons aicons fontawesome"
for f in $FONTS; do
    if [ -e "$FNTDIR" ]; then
        unlink $FNTDIR/$f.ttf
    fi
    ln -s $DIR/fonts/$f.ttf $FNTDIR/$f.ttf
done


