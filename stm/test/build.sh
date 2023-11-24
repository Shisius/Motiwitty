#!/bin/bash
# tmp dir
if [ ! -d "tmp" ]
then
	echo "Creating tmp dir"
	mkdir tmp
fi
cd tmp/
# run cmake
cmake ../ 
make -j4
echo "Project built"

arm-none-eabi-objcopy -O binary motiwitty.elf motiwitty.bin
dfu-suffix -a motiwitty.bin
