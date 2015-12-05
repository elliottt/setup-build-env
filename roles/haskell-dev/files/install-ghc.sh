#!/bin/bash

set -e

(
	cd $HOME/local/ghc/
	tar -xvf ghc-$1-x86_64-unknown-linux-deb7.tar.xz
	cd ghc-$1
	./configure --prefix=$HOME/local/ghc/$1
	make install
)

if [ "$2" = "default" ]; then
	(
		cd $HOME/local/ghc
		ln -s $1 current
	)
fi
