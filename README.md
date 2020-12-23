# DebDroid
An Easy to use Debian Installer for Termux on Android without root

[![Discord](https://img.shields.io/discord/591914197219016707.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://bit.ly/WMCBDiscord) [![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/) [![made-for-VSCode](https://img.shields.io/badge/Made%20for-VSCode-1f425f.svg)](https://code.visualstudio.com/) 


# What is DebDroid?
A Debian Installer for Android Supporting (Sid, Testing, Stable, Oldstable) flavours And No Rooting Required \
Unleash your Android Device's power and Expand the Packages you need for your Device with Limitations Guaranteed 

Learn more about DebDroid with this [wiki](https://github.com/WMCB-Tech/DebDroid/wiki)

> There's innovation in Linux. There are some really good technical features that I'm proud of. There are capabilities in Linux that aren't in other operating systems \
 -- Linus Torvalds


# Features
* Support for Root and Non-root User Accounts
* Run your Favorite Linux IDE's, Apps, Utilities Easily and Seamlessly
* Run your Local Servers easily using SSH, Node, FTP, and more
* Backup and Restore Feature
* Supports Desktop Environments (LXDE, LXQT, Mate, XFCE)
* Supports Device Architectures (ARM, i386, AMD64, ARM64)
* Sounds Support with PulseAudio

# Installation
Installation is quite easy. follow the steps shown below:

**Requirements:**
* 1.1gb of free space
* Stable Internet Connection
* Termux (duh)
* Root Disabled (Running as root will fail)

1.) On termux, Type the following: \
`pkg update -y`

2.) Download the [DebDroid Debian Package file](https://github.com/WMCB-Tech/DebDroid/releases/tag/v3.06-r2) \
Older Releases can be found [here](https://github.com/WMCB-Tech/debdroid-archives)

3.) Install the package by typing: \
`apt install ./path/to/debdroid.deb` \
I assume that you placed the downloaded file to downloads folder \
and the `./path/to` is where the location of your file.

# Preparing The Container
After all packages is installed. you can install it by typing: \
```debdroid --install```

I assume you're installing stable

By default. it will install a fresh stable version of Debian if no other arguments is specified

You can install other than stable by typing: \
`debdroid --install <suite>`

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

More information can be Accessed [Here](https://github.com/WMCB-Tech/DebDroid/wiki#unsupported-suitesflavors)

Ubuntu/Kali is unsupported

The Installation will take several minutes depending on your network connection

If it asks you to enter your UNIX Username. you can type your own username to add it to sudoers \
to gain access via sudo.
 
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

More Information: \
https://github.com/WMCB-Tech/DebDroid/wiki/Development

# Contributing
You can help this project by contributing. (if you have bash scripting skills) and help DebDroid Strong 

You can help by: 
* Forking DebDroid and creating pull requests
* Being a Contributor

If you don't have coding skills. you can file or submit bug reports to help improve this project

# Credits
[PRoot](https://proot-me.github.io/) \
[Termux](https://termux.com/) \
[PulseAudio](https://pulseaudio.org)

# Similar Projects
[termux/proot-distro](https://github.com/termux/proot-distro) \
[YadominJinta/atilo](https://github.com/YadominJinta/atilo) \
[SDRausty/TermuxArch](https://github.com/SDRausty/TermuxArch) \
[Hax4us/TermuxAlpine](https://github.com/Hax4us/TermuxAlpine) \
[Hax4us/Nethunter-In-Termux](https://github.com/Hax4us/Nethunter-In-Termux) \
[nmilosev/termux-fedora](https://github.com/nmilosev/termux-fedora) \
[Neo-Oli/Termux-Ubuntu](https://github.com/Neo-Oli/termux-ubuntu) \
[gwenhael-le-moine/TermuxSlack](https://github.com/gwenhael-le-moine/TermuxSlack)

# Stay In Touched.
[Discord](http://bit.ly/WMCBDiscord) \
[Twitter](http://twitter.com/wmcbtech30)\
[YouTube](https://www.youtube.com/wmcbtech) 

Make an issue if you have problems regarding with this problems
