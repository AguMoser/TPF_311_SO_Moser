#!/bin/bash

DISCO="/dev/sdb"

fdisk $DISCO << EOF
o
n
p
1

+1G
n
p
2

+1G
n
e
3


n
l

+3G
n
l

+3G
n
l

+3G
w
EOF

partprobe $DISCO

mkfs.ext4 ${DISCO}1
mkfs.ext4 ${DISCO}2
mkfs.ext4 ${DISCO}5
mkfs.ext4 ${DISCO}6
mkfs.ext4 ${DISCO}7

