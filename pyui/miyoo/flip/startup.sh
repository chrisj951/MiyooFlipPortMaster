#!/bin/sh

if [ ! -d /mnt/SDCARD/Saves/userdata-flip ]; then
    mkdir /mnt/SDCARD/Saves/userdata-flip
    cp -R /userdata/* /mnt/SDCARD/Saves/userdata-flip
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/bin
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/bluetooth
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/cfg
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/localtime
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/timezone
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/lib
    mkdir -p /mnt/SDCARD/Saves/userdata-flip/lib/bluetooth
fi


mount --bind /mnt/SDCARD/Saves/userdata-flip/ /userdata
mkdir -p /run/bluetooth_fix
mount --bind /run/bluetooth_fix /userdata/bluetooth

/mnt/SDCARD/pyui/miyoo/flip/recombine_large_files.sh > /mnt/SDCARD/pyui/logs/recombine_large_files.log  2>&1
/mnt/SDCARD/pyui/miyoo/flip/mount_32bit_libs.sh > /mnt/SDCARD/pyui/logs/mount_32bit_libs.log  2>&1
/mnt/SDCARD/pyui/common/mount_libs.sh > /mnt/SDCARD/pyui/logs/mount_libs.log  2>&1
/mnt/SDCARD/pyui/miyoo/flip/setup_32bit_libs.sh > /mnt/SDCARD/pyui/logs/setup_32bit_libs.log  2>&1
/mnt/SDCARD/pyui/miyoo/flip/bind_glibc.sh > /mnt/SDCARD/pyui/logs/bind_glibc.log  2>&1

# PortMaster ports location
mkdir -p /mnt/SDCARD/Roms/PM/ports/ 
mount --bind /mnt/SDCARD/Roms/PM/ /mnt/SDCARD/Roms/PM/ports/
	
# PortMaster looks here for config information which is device specific
mount --bind /mnt/SDCARD/pyui/miyoo/flip/root/ /root 

cd /usr/miyoo/bin/
/usr/miyoo/bin/runmiyoo-original.sh
