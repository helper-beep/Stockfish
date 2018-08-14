#!/bin/sh

export PATH=.:/mingw64/bin:/usr/local/bin:/mingw/bin:/bin
export

cd src

make clean
make profile-build COMP=mingw ARCH=x86-64
strip McBrain-961.exe
