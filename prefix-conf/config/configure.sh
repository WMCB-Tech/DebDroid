#!/data/data/com.termux/files/usr/bin/bash
### Configure Script for Debian System after Postinstall
### Runs in proot. Essential Bindings only
unset LD_PRELOAD
proot --link2symlink --kill-on-exit -k 4.14.206 \
 -0 -r $PREFIX/share/debdroid/rootfs \
 -b /dev \
 -b /proc \
 -b /sys \
 -b $PREFIX/tmp:/dev/shm \
 -w /root \
 /usr/bin/env -i \
 TERM=$TERM \
 USER=root \
 HOME=/root \
 PATH=/usr/local/bin:/usr/local/sbin:/usr/local/games:/usr/bin:/usr/sbin:/usr/games:/bin:/sbin:/opt \
 LANG=C.UTF-8 \
 /opt/distro-config.sh
