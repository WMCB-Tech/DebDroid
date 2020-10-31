# DebDroid
An Easy to use Debian Installer for Termux on Android without root

[![Discord](https://img.shields.io/discord/591914197219016707.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://bit.ly/WMCBDiscord)

Learn more about DebDroid with this [wiki](https://github.com/WMCB-Tech/DebDroid/wiki) \
***Updates in DebDroid are Frequent and it's recommended to watch this repo to get latest updates. We provide pre-releases but it's intended for Developers only. pre-releases can be deleted anytime***

# What is DebDroid?
Well it's a little brush off to other proot methods out there like andronix which it's good but poorly aware of the fact of Android Restrictions.
DebDroid makes Linux Software integration to Android possible we made linux software work pre-fixed without patches and makes the containerization secure and
well-integrated as possible

# Features
* Support for Root and Non-root User Accounts
* Run your Favorite Linux IDE's, Apps, Utilities
* Full Debian Environment in your Pocket
* No Rooting Required
* Supports Desktop Environment (LXDE, LXQT, Mate, XFCE)
* Test Harmful packages sandboxed without interfering of your Phone
* Portability with Snapshots and Exports for your Development

# Installation
Installation is quite easy. follow the steps shown below:

**Requirements:**
* 1.2gb of free space
* Stable Internet Connection (The installation is sensitive to network failures)
* Termux (Latest Version is recommended)
* Root Disabled (Running as root will fail)

1.) On termux, Type the following: \
`pkg update -y`

2.) Download the [file](https://github.com/WMCB-Tech/DebDroid/releases/download/v2.17-R2/debdroid-2.17-R2.deb) and place it to sdcard.

3.) Install the package by typing: \
`apt install ./path/to/debdroid.deb` \
I assume that you placed the downloaded file to downloads folder \
and the `./path/to` is where the location of your file. copy-pasting steps is not cool

# Preparing The Container
After all packages is installed. you can install it by typing: \
```debdroid --install```

The Installation will take several minutes depending on your network connection

If it asks you to enter your UNIX Username. you can type your own username to add it to sudoers \
to gain access via sudo.

***Note:***
* Names should not contain any Capital Letters and special characters including spaces
* Names should not be used: \
 root, proc, dev, mail, sys and other linux reserved names as if the installation is sensitive,
 
 # Starting The Container
 You can start the container by typing: \
 ```debdroid --launch``` or ```debdroid --launch-su``` (as root user)
 
 and it should drop you to debian shell
 
 To Shutdown the linux environment. simply type `exit` to debian shell \
 Note that it will kill all processes at exit to prevent battery drainage
 
 # Uninstalling the Container
 Uninstalling is simple. simply type: \
 `debdroid --uninstall`
 
 Note that instead of asking you to delete it. you have 15 seconds before the removal so better to hit Ctrl-C before it's too late

# Alternate OS Images
Since DebDroid can run other distributions. i have provided a 2 images. for now we are using a Free of Service so google drive has limits and soon i may setup GIT LFS and we only rely on ARM64 Architectures
* Arch Linux (ARM64): \
https://drive.google.com/file/d/1-bESv0kJvOCwYeUZ6Y3FXPpWh62Xb_U5/view?usp=sharing
* Fedora (ARM64): \
https://drive.google.com/file/d/1ccPeOmSrfaqZQwcSSohZkHudg7AqLGX-/view?usp=sharing

Username: user \
Password: password

If you're running Android 5-6. you may encounter problems \
For more information click [here](https://github.com/WMCB-Tech/DebDroid/wiki/Using-%22.export%22-files)

# Credits
[PRoot](https://proot-me.github.io/) \
[Termux](https://termux.com/)


# Stay In Touched?
[Discord](http://bit.ly/WMCBDiscord) \
[Twitter](http://twitter.com/wmcbtech30)\
[YouTube](https://www.youtube.com/wmcbtech) 

Make an issue if you have problems regarding with this problems
