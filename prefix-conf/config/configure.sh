#!/data/data/com.termux/files/usr/bin/bash
### Configure Script for Debian System after Postinstall
### Runs in proot. Essential Bindings only
unset LD_PRELOAD
proot --link2symlink --kill-on-exit \
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
 PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/games:/usr/local/bin:/usr/local/sbin:/usr/local/games:/opt \
 LANG=C.UTF-8 \
 /opt/distro-config.sh
