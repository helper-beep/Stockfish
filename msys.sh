#!/bin/sh

export PATH=.:/mingw64/bin:/usr/local/bin:/mingw/bin:/bin
export

cd src

make clean
make profile-build COMP=mingw ARCH=x86-64
strip McB-96.exe
mv McB-96.exe "../C:/Projects/stockfish/McB-96_x86_64.exe"

make clean
make profile-build COMP=mingw ARCH=x86-64-modern
strip McB-96.exe
mv McB-96.exe "../C:/Projects/stockfish/McB-96_x86_64-modern.exe"

make clean
make profile-build COMP=mingw ARCH=x86-64-bmi2
strip McB-96.exe
mv McB-96.exe "../C:/Projects/stockfish/McB-96-x86_64-bmi2.exe"

cd ..
