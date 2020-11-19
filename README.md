# DebDroid
An Easy to use Debian Installer for Termux on Android without root

[![Discord](https://img.shields.io/discord/591914197219016707.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://bit.ly/WMCBDiscord)

Learn more about DebDroid with this [wiki](https://github.com/WMCB-Tech/DebDroid/wiki) \
***Updates in DebDroid are Frequent and it's recommended to watch this repo to get latest updates. We provide pre-releases but it's intended for Developers only. pre-releases can be deleted anytime***

# What is DebDroid?
Well it's a little brush off to other proot methods out there like andronix which it's good but poorly aware of the fact of Android Restrictions.
DebDroid makes Linux Software integration to Android possible we made linux software work pre-fixed without patches and makes the containerization secure and
well-integrated as possible. although this might be a messy technique but it makes the work done easily

# Features
* Support for Root and Non-root User Accounts
* Run your Favorite Linux IDE's, Apps, Utilities Easily
* Run your Local Servers easily using SSH, Node, FTP, and more
* Backup and Restore Feature
* Supports Desktop Environments (LXDE, LXQT, Mate, XFCE)
* Supports Device Architectures (ARM, i386, AMD64, ARM64)
* Sounds Support with PulseAudio

# Installation
Installation is quite easy. follow the steps shown below:

**Requirements:**
* 1.2gb of free space
* Stable Internet Connection (The installation is sensitive to network failures)
* Termux (Latest Version is recommended)
* Root Disabled (Running as root will fail)

1.) On termux, Type the following: \
`pkg update -y`

2.) Download the [DebDroid Debian Package file](https://github.com/WMCB-Tech/DebDroid/releases/tag/v2.20)

3.) Install the package by typing: \
`apt install ./path/to/debdroid.deb` \
I assume that you placed the downloaded file to downloads folder \
and the `./path/to` is where the location of your file. copy-pasting steps is not cool

# Preparing The Container
After all packages is installed. you can install it by typing: \
```debdroid --install```

By default. it will install a fresh stable version of Debian if no other arguments is specified

### Supported Debian Suite
* `unstable`/`sid`
* `testing`/`bullseye`
* `stable`/`buster`
* `oldstable`/`stretch`
### Unsupported Debian Suite
Unsupported Debian Versions (Here are the debian versions that can cause problems and never be added)
* `oldoldstable`/`jessie`
* `wheezy`
* `squeeze`
* `lenny` \
And so on

Ubuntu/Kali is unsupported

You can install other than stable by typing: \
`debdroid --install <suite>`

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
 
 Note that instead of asking you to delete it. you have 10 seconds before the removal so better to hit Ctrl-C before it's too late

# Development
On the Releases page. you will see some tarballs can be packaged with `dpkg-deb` which it designed to make your own DebDroid-Based projects

**Can i use git clone?** \
Yes. it would be useful for pull-requests, submitting bug reports, opening new branches \
You can use this for using Git version of DebDroid but the dependencies would not be managed so it's recommended to use the source package tarball useful for creating your own DebDroid-based Projects 

**Packaging** \
To package your own debdroid. simply package the directory with `dpkg-deb`

P.S. Used VS Code for development

# Contributing
You can help this project by contributing. (if you have bash scripting skills) and help DebDroid Strong 

You can help by: 
* Forking DebDroid and creating pull requests
* Being a Contributor

If you don't have coding skills. you can file or submit bug reports to help improve this project

# Credits
[PRoot](https://proot-me.github.io/) \
[Termux](https://termux.com/)


# Stay In Touched.
[Discord](http://bit.ly/WMCBDiscord) \
[Twitter](http://twitter.com/wmcbtech30)\
[YouTube](https://www.youtube.com/wmcbtech) 

Make an issue if you have problems regarding with this problems
