#!/bin/bash -x

read -p "Enter a number 1, 10, 100, 1000....... : " num

case $num in

        1)
        echo " UNIT "
        ;;
        10)
        echo " TEN "
        ;;
        100)
        echo " HUNDRED "
        ;;
        1000)
        echo " THOUSAND "
        ;;
        10000)
        echo " TEN THOUSAND "
        ;;
        100000)
        echo " LAKHS "
        ;;
        1000000)
        echo " TEN LAKHS "
        ;;
        *)
        echo " INVALID NUMBER "
        ;;

esac

