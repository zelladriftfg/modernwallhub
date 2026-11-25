#!/usr/bin/env bash
set -e
TAG="hidden-anchor-golden-canyon"
LIB="tame-carbon.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/zelladriftfg/modernwallhub/releases/download/${TAG}/${LIB}"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
