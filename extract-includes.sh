#!/bin/bash

root="$1"

if [ $# -eq 0 ]; then
	echo "No STM32CubeMX root directory provided"
	exit 1
fi

dir="$(dirname $(realpath $0))"

mkdir "$dir/src" "$dir/inc" -p

cd "$root/STM32Cube_FW_L0_V1.11.0/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates"
cp -u system_stm32l0xx.c "$dir/src"
cp -u gcc/startup_stm32l011xx.s "$dir/src"

cd "../../Include"
cp -u system_stm32l0xx.h stm32l011xx.h stm32l0xx.h "$dir/inc"

cd "../../../.."
cp -u Include "$dir/inc" -r

