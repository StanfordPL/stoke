#!/bin/bash

ls -1 */notcs_result.s

for F in optimize-*; do 

  echo $F;
  cd $F; 
  stoke replace --rewrite notcs_result.s -i binary -o notcs_bin; 
  cd ..; 

done
