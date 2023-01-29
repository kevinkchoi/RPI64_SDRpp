#!/bin/sh
set -e
[ $(id -u) = 0 ] && echo "Please do not run this script as root" && exit 100

echo "Installing dependencies"
sudo apt update
sudo apt upgrade
sudo apt install -y build-essential cmake git libfftw3-dev libglfw3-dev libglew-dev libvolk2-dev
sudo apt install -y libzstd-dev libzstd1 libsoapysdr-dev libairspyhf-dev libairspy-dev libiio-dev
sudo apt install -y libad9361-dev librtaudio-dev libhackrf-dev librtlsdr-dev libbladerf-dev
sudo apt install -y libairspy-dev librtlsdr-dev portaudio19-dev liblimesuite-dev p7zip-full wget

git clone https://github.com/AlexandreRouma/SDRPlusPlus
cd SDRPlusPlus

echo "Preparing build"

mkdir -p build
cd build

## original version from AlexandreRouma indicated its build for LimeSDR. Now for RTL-SDR dongle.
mkdir -p CMakeFiles
cmake .. -DOPT_BUILD_RTL_SDR_SOURCE=ON

echo "Building"
make

echo "Installing"
sudo make install

echo "Done!"

### modified by kevinkchoi 29/01/2023
