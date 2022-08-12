#!/usr/bin/env sh

KSS2VGM=../../../dsa/kss2vgm/build/kss2vgm

for N in `seq -f '%02g' 1 29` ; do
  mgsc-js -o mgs/ys1ex_${N}.mgs mml/ys1ex_${N}.mml 
  $KSS2VGM -l2 -p300 -ovgm/ys1ex_${N}.vgm mgs/ys1ex_${N}.mgs
  gzip -n --stdout vgm/ys1ex_${N}.vgm > vgm/ys1ex_${N}.vgz
done

for N in `seq -f '%02g' 0 30` ; do
  mgsc-js -o mgs/ys2ex_${N}.mgs mml/ys2ex_${N}.mml 
  $KSS2VGM -l2 -p300 -ovgm/ys2ex_${N}.vgm mgs/ys2ex_${N}.mgs
  gzip -n --stdout vgm/ys2ex_${N}.vgm > vgm/ys2ex_${N}.vgz
done

for N in 02 17 21 29 ; do
  mgsc-js -o mgs/ys368_${N}.mgs mml/ys368_${N}.mml 
  $KSS2VGM -l2 -p300 -ovgm/ys368_${N}.vgm mgs/ys368_${N}.mgs
  gzip -n --stdout vgm/ys368_${N}.vgm > vgm/ys368_${N}.vgz
done
