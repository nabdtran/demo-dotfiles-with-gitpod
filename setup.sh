#!/bin/bash

gp timeout set 24h & disown

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR
