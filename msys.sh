#!/bin/sh

export PATH=.:/mingw64/bin:/usr/local/bin:/mingw/bin:/bin
export
mkdir "$APPVEYOR_REPO_BRANCH"

cd src

make clean
make profile-build COMP=mingw ARCH=x86-64
strip stockfish.exe
mv McB-96.exe.exe "../$APPVEYOR_REPO_BRANCH/mcbrain_x86_64.exe"

make clean
make profile-build COMP=mingw ARCH=x86-64-modern
strip stockfish.exe
mv McB-96.exe.exe "../$APPVEYOR_REPO_BRANCH/McB-96_x86_64-modern.exe"

make clean
make profile-build COMP=mingw ARCH=x86-64-bmi2
strip stockfish.exe
mv McB-96.exe "../$APPVEYOR_REPO_BRANCH/McB-96.exe-x86_64-bmi2.exe"

cd ..
