#!/bin/bash

qemu-system-x86_64 \
    -m 8G \                   # RAM 8GB
    -smp 4 \                   # 4 CPU cores
    -cpu host \
    -enable-kvm \
    -hda /windows/Win11.qcow2 \
    -cdrom /windows/Win11.iso \
    -boot d \
    -vga virtio \
    -net nic -net user,hostfwd=tcp::3389-:3389 \
    -fda /Autounattend.xml
