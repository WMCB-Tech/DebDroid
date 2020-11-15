#!/bin/sh
### DebDroid Git Automatic Build Script
### Automatically Builds files from git to deb
NOIPC_BUILD=""
PREFIXROOT="${HOME}/debdroid-build/data/data/com.termux/files/usr/share/debdroid"
PREFIXBIN="${HOME}/debdroid-build/data/data/com.termux/files/usr/share/debdroid"
CONTROL=${HOME}/debdroid-build/DEBIAN
SPATH="${HOME}/debdroid-build/data/data/com.termux/files/usr/bin"
UPATH="${HOME}/debdroid-build/data/data/com.termux/files/usr/share/debdroid"

if ! which dpkg-deb >/dev/null 2>&1; then
    echo "Cannot start the Build Process: dpkg isn't installed"
    exit 2
fi

### Check for On-Device Build
if [ $(pwd) = /sdcard ]; then
    echo "Cannot start Build Process: Running on sdcard which isn't supported "
    exit 2
fi

### BEGIN
if [ -e $HOME/debdroid-build ]; then
    echo "Cannot start Build Process: Please Delete the directory first"
    exit 2
fi

mkdir -p $CONTROL
mkdir -p $PREFIXROOT
mkdir -p $PREFIXBIN

if [ "$NOIPC_BUILD" = "y*" ]; then
    install -m 777 prefix-bin/debdroid-noipc $SPATH/debdroid
else
    install -m 777 prefix-bin/debdroid $SPATH/debdroid
fi

cp -rf prefix-conf/{config,lib} $UPATH
chmod 777 $UPATH/configure.sh
chmod 777 $UPATH/distro-config.sh
chmod 777 $UPATH/lib/lib*
mkdir -p $UPATH/rootfs

install -m 755 deb-package-info/postinst $CONTROL
install -m 755 deb-package-info/control $CONTROL

while true; do
    read -p "Do you want to edit the Debian Control File?. This allows you to change dependencies, maintainer name, package name [Y/n] " yn
    case $yn in
        [Yy]* ) nano $CONTROL/control; break;;
        [Nn]* ) true;;
        * ) nano $CONTROL/control";;
    esac
done

while true; do
    read -p "Do you want to edit the Debian Postinst file? (E). This allows you to execute scripts while apt installation. or delete it (d) [E/d/n] " edn
    case $edn in
        [Ee]* ) nano $CONTROL/postinst; break;;
        [Dd]* ) rm $CONTROL/postinst; break;;
        [Nn]* ) true;;
        * ) nano $CONTROL/control";;
    esac
done

chmod 755 $CONTROL -R
rm -rf $HOME/debdroid-build.deb >/dev/null 2>&1 || true
dpkg-deb --build $HOME/debdroid-build

echo "Package successfully generated and built onto:"
echo ""
echo "$HOME/debdroid-build.deb"
echo ""
