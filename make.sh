# delete previous files
mkdir build
cd build
rm *.gb
cd ..

# Compile .c files into .o files
cd resources
/home/kyrell/sdks/gbdk/bin/lcc -c -o *.o *.c
cd ..

cd src
/home/kyrell/sdks/gbdk/bin/lcc -c -o *.o *.c
cd ..
# Compile a GB file from the compiled .o files
/home/kyrell/sdks/gbdk/bin/lcc -o build/game.gb resources/*.o src/*.o #src/main.o src/player.o
echo 2

# Delete intermediate files
rm **/*.asm
rm **/*.lst
rm **/*.ihx
rm **/*.sym
rm **/*.o
rm build/*.ihx

# run the game in the emulator
# snap run sameboy "${PWD}/build/game.gb"
