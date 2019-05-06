#!/usr/bin/env bash

set -e

env

./autogen.sh
./configure --prefix=$PREFIX
make install
