#!/bin/sh

export PATH=.:/mingw64/bin:/usr/local/bin:/mingw/bin:/bin
export

cd src

make clean
make profile-build COMP=mingw ARCH=x86-64
strip McB-96.exe
mv McB-96.exe "../C:/Projects/stockfish/"

make clean
make profile-build COMP=mingw ARCH=x86-64-modern
strip McB-96.exe
mv McB-96.exe "../C:/Projects/stockfish/"

make clean
make profile-build COMP=mingw ARCH=x86-64-bmi2
strip McB-96.exe
mv McB-96.exe "../C:/Projects/stockfish/"

cd ..
