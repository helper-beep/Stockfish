#!/bin/sh

export PATH=.:/mingw64/bin:/usr/local/bin:/mingw/bin:/bin
export

cd src

make clean
make profile-build COMP=mingw ARCH=x86-64
strip McB-96.exe
mv McB-96.exe "../$APPVEYOR_BUILD_FOLDER/McB-96.exe"

make clean
make profile-build COMP=mingw ARCH=x86-64-modern
strip McB-96.exe
mv McB-96.exe "../$APPVEYOR_BUILD_FOLDER/McB-96-m.exe"

make clean
make profile-build COMP=mingw ARCH=x86-64-bmi2
strip McB-96.exe
mv McB-96.exe "../$APPVEYOR_BUILD_FOLDER/McB-96-b.exe"

cd ..
