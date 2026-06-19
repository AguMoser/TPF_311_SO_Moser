#!/bin/bash

fdisk /dev/sdc << EOF
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
+2666M
n
l
+2666M
n
l
+2666M
w
EOF
mkfs.ext4 /dev/sdc1
mkfs.ext4 /dev/sdc2
mkfs.ext4 /dev/sdc5
mkfs.ext4 /dev/sdc6
mkfs.ext4 /dev/sdc7

