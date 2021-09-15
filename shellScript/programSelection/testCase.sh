#! /bin/bash -x

read -p " 1. Add 2. Sub 3. Mul : " choice

a=10
b=6

# case expression in pattern1) activities;; pattern2) activities;; esac

case $choice in
	1) echo add=$((a+b)) ;;
	2) echo sub=$((a-b)) ;;
	3) echo mul=$((a*b)) ;;
	8) echo "plz choose an correct option " ;;
esac
