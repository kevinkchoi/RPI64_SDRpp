# RPI64_SDRpp
An installer script to compile SDR++ for RTL-SDR on the Raspberry Pi 4B with arm64.
I found that 32bit RaspiOS is slower than 64bit one (although it's still not recommended for most of the applications).

It's based on the excellent SDR++ program by Alexandre Rouma, which can run on several platform, including Raspberry Pi.
This version compiles on RPI 64 bit version.

(1) In your home directory, just create a sub-directory [RTL-SDR] and copy this shell script as your XXX.sh file.

(2) Change its mod: chmod +x XXX.sh

(3) run your shell script: ./XXX.sh

Hope it works for you as well.
