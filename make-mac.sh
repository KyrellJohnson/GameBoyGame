# delete previous files
mkdir build
cd build
rm *.gb
cd ..

# Compile .c files into .o files
cd src
lcc -debug -c -o *.o *.c
cd ..

# Compile a GB file from the compiled .o files
lcc -debug -o build/game.gb src/*.o #src/main.o src/player.o

# Delete intermediate files
rm src/*.asm
rm src/*.lst
rm src/*.ihx
rm src/*.sym
rm src/*.o
rm build/*.ihx

# run the game in the emulator
# snap run sameboy "${PWD}/build/game.gb"
