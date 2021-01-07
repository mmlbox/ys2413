#!/usr/bin/env sh

for N in 10 21 ; do
  mgsc-js -o mgs/ys1_${N}.mgs mml/ys1_${N}.mml 
  ../../kss2vgm/build/kss2vgm -p150 -ovgm/ys1_${N}.vgm mgs/ys1_${N}.mgs
  gzip --stdout vgm/ys1_${N}.vgm > vgm/ys1_${N}.vgz
done

for N in 01 02 03 04 05 06 07 08 09 10 11 13 14 15 16 17 18 19 20 21 22 23 24 26 27 28 29 30 ; do
  mgsc-js -o mgs/ys2_${N}.mgs mml/ys2_${N}.mml 
  ../../kss2vgm/build/kss2vgm -p150 -ovgm/ys2_${N}.vgm mgs/ys2_${N}.mgs
  gzip --stdout vgm/ys2_${N}.vgm > vgm/ys2_${N}.vgz
done