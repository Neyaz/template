#!/bin/bash
path=""
if [ -z "$1" ];then 
    path=$(dirname $(readlink -f $0));
else
    path=$(readlink -f $1);
fi

mkdir -p bin

export GOPATH=$GOPATH:$path/vendor
export GOPATH=$GOPATH:$path
export PATH=$PATH:$GOPATH/bin
PS1="go"$PS1