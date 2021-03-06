#!/bin/bash -e

install -v -m 644 files/autologin.conf "${ROOTFS_DIR}/etc/lightdm/lightdm.conf.d/"

sed -i "s|USERNAME|${FIRST_USER_NAME}|" "${ROOTFS_DIR}/etc/lightdm/lightdm.conf.d/autologin.conf"

install -v -m 644 files/leo-mars-wallpaper.jpg "${ROOTFS_DIR}/usr/share/lubuntu/wallpapers/"
