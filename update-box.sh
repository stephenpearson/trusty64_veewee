#!/bin/bash

NAME="ubuntu-14.04-server-amd64"
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

rm -f $DIR/$NAME.box
veewee kvm build $NAME
veewee kvm export $NAME
vagrant box remove $NAME
vagrant box add "$NAME" "$DIR/$NAME.box"
