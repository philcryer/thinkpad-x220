# ThinkPad x220

<div align="center"><img src="/imgs/thinkpad-x220.png" alt="ThinkPadX220" border="0"></div>

## About

This project documents discoveries, settings, tweaks, etc for running Linux, and other open source operating systems, on the Lenovo ThinkPad x220. My device specs are:

* Lenovo Thinkpad x220 (4291-DE9)
* Intel Core i5 2nd Generation (2.60GHz)
* 2 x 4GB DDR3 Dual Channel RAM
* Integrated/On-Board Graphics (Intel 3000?)
* 12.5" HD+ Premium IPS display
* 320GB 7200 RPM HDD
* 720p HD WebCamera
* Wireless (Intel 6205?)
* FingerPrint Reader
* Bluetooth
* 6 cell battery

## Settings

### GRUB

* GRUB config from [troshlyak](https://troshlyak.wordpress.com/2011/11/18/thinkpad-x220-the-almost-perfect-setup-fedora-16/)

```
GRUB_CMDLINE_LINUX="quiet rhgb threadirqs pcie_aspm=force i915.i915_enable_rc6=1 i915.i915_enable_fbc=1 i915.lvds_downclock=1 iwlagn.power_save=1 iwlagn.power_level=5"
```

### Power

* [Energy Management in Linux](http://itgen.blogspot.com/2009/03/energy-management-in-linux.html) 
* [Power tweaks](https://www.phoronix.com/scan.php?page=article&item=intel_i915_power&num=1)

### Xorg

* [ThinkPad tweak](https://gist.github.com/Koronen/f95ff48d26f6d0c26023)

```
# /usr/share/X11/xorg.conf.d/20-thinkpad.conf
Section "InputClass"
    Identifier "Trackpoint Wheel Emulation"
    MatchProduct       "TPPS/2 IBM TrackPoint|DualPoint Stick|Synaptics Inc. Composite TouchPad / TrackPoint|ThinkPad USB Keyboard with TrackPoint|ThinkPad Compact USB Keyboard with TrackPoint|USB Trackpoint pointing device"
    MatchDevicePath    "/dev/input/event*"
    Option             "EmulateWheel"          "true"
    Option             "EmulateWheelButton"    "2"
    Option             "Emulate3Buttons"       "false"
    Option             "XAxisMapping"          "6 7"
    Option             "YAxisMapping"          "4 5"
EndSection
```

## Resources

* [ThinkWiki](www.thinkwiki.org/wiki/Category:X220) page for the x220
* [ThinkWiki](http://www.thinkwiki.org/wiki/Installing_Gentoo_on_a_ThinkPad_X220) installing Gentoo on a x220 (looks like tons of tips)
* [Debian Wiki](https://wiki.debian.org/InstallingDebianOn/Thinkpad/X220/squeeze) page on installing Debian GNU/Linux (sqeeze) on x220
* [FreeBSD Wiki](https://forums.freebsd.org/threads/best-laptop-for-freebsd.50847/#post-284582) notes about working wifi, suspend/resume, etc on FreeBSD
* [j4/x220](https://github.com/j4/x220) an amazing collection of configs, notes on getting the x220 running OpenBSD, NetBSD, even NixOS!
* [Koronen](https://gist.github.com/Koronen/f95ff48d26f6d0c26023) more tweaks and gists
* [eBay](http://www.ebay.com/sch/i.html?x220+%2Bips+-tablet.TRS1&_nkw=x220+%2Bips+-tablet&_sacat=0) search results page for `x220 +ips -tablet`


## License

```
The MIT License (MIT)

Copyright (c) 2016 philcryer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### Thanks
