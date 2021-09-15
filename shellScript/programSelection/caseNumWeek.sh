#!/bin/bash -x

read -p "Enter the Number between 1 - 7 : " num

case $num in

        1)
        echo " SUNDAY "
        ;;
        2)
        echo " MONDAY "
        ;;
        3)
        echo " TUESDAY "
        ;;
        4)
        echo " WEDNESDAY "
        ;;
        5)
        echo " THURSDAY "
        ;;
        6)
        echo " FRIDAY "
        ;;
        7)
        echo " SATURDAY "
        ;;
        *)
        echo " INVALID NUMBER "
        ;;
esac

