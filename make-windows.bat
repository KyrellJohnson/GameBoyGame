:: This script compiles the Gameboy Game
@echo off
mkdir build
cd build

echo Deleting .gb file
del *.gb
cd ..

:: Compile .c files into .o files
cd src
lcc -c -o *.o *.c
cd ..

:: Compile a .gb file from the compiled .o files
lcc -o build/game.gb src/*.o

:: Delete temp files
del src/*.asm
del src/*.lst
del src/*.ihx
del src/*.o
del build/*.ihx