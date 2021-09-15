#!/bin/bash -x

echo 1 ft = 12 in

inches=42
val=12

feet=$( echo $inches | awk '{printf $inches/12}')

