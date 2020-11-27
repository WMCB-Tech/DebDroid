% DebDroid(1)
% WMCB Tech
% DebDroid User Documentation

# NAME
DebDroid - Debian for Android Devices

# DESCRIPTION
**DebDroid** an easy to use Debian Installer Without root, DebDroid allows you to run Linux applications on Android without root on Termux

DebDroid will work fine on any stock unrooted ROM's and does not require root access \
Essentially DebDroid does not work if running as root and should work if you have custom ROM or Kernel

## Features
 * Support for root and non-rooted user accounts
 * Audio Output Support
 * Supports Device Architectures (ARM, i386, AMD64, ARM64)
 * Backup and Restore Feature
 * Run your Local Servers easily using SSH, Node, FTP, and more


Of course you may face some limitations when running DebDroid

## Limitations
 * Flatpaks, Snaps, Appimages may not work on PRoot
 * Containers (Docker, LXC) will not work
 * You can't run Virtualbox, libvirt or any advanced virtualization methods than QEMU
 * You can't root your Device and you won't be able to abuse filesystem permissions


These restrictions may vary if you have custom rom or custom kernel

# OPTIONS
Here are common options used to manage the Debian Container,

## Launch Options
**---launch**
: Launches the Debian Container

**---launch-su**
: Launches the Debian Container as root (aka. Maintenance Mode)

**---isolated**
: Launches the Debian Container in an Isolated Instance

To Pass commands with DebDroid, you can use '---' option

Examples: \
**debdroid --- sudo apt install vim** \
This should install vim without dropping to bash shell

**debdroid ---- sh evilscript.sh** \
Same as above but this will launch in an isolated Instance

## Container Options
**---install**
: Installs the Debian Container (By Default, this will install Debian Stable)

To install other suite (unstable, oldstable, testing) You can specify it by typing: \
**debdroid ---install [suite]**

**---uninstall**
: Uninstalls the Debian Container

**---reinstall**
: Reinstalls the Debian Container

## File Sharing Options
**---share [directory],**
: Shares the directory through '/mnt/shared'

**---unshare**
: Unshares the shared directory

**---send [file], ---push [file]**
: Sends the file through your home directory

**---recieve [file], ---pull [file]**
: Gets the file from your container

## Miscellaneous Options
**---import**
: Imports the exported container

**---export**
: Exports the container

**---cleanup-tmp**
: Cleans up downloaded cache directory

**--h, ---help**
: Shows help

# BUGS
If you encounter bugs to this project, you can file a bug report to: \
https://github.com/WMCB-Tech/DebDroid/issues

# SEE ALSO
proot(1), pulseaudio(1)
