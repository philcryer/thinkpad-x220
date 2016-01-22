# ThinkPad x220

<div align="center"><img src="/imgs/thinkpad-x220.png" alt="ThinkPadX220" border="0"></div>

>"Successor to the X60-series, the ThinkPad X200 laptop leverages the new technology from the X300, including the options of a solid-state drive (SSD), an optional integrated camera, 12.1" widescreen display, optional 3G WWAN, a new 9-cell battery for extended running time up to 9.8 hours, weight as low as 2.95 lb (1.34 kg), and CPU up to 2.66 GHz Intel Core 2 Duo. The X200s is a newer model of the X200 which is lighter and thinner, and has the option of a WXGA+ screen with LED Backlighting for increased battery performance. The X200 series included Tablet PC models, designated by the usage of the "t" suffix." (source [Wikipedia](https://en.wikipedia.org/wiki/ThinkPad#ThinkPad_X200.2FX200s.2C_X201.2FX201s.2C_X220.2C_X230.2C_X240.2C_X250)

## About

This project documents discoveries, settings, tweaks, etc for running Linux, and other open source operating systems, on the Lenovo ThinkPad x220. My device specs are:

* Lenovo Thinkpad x220 (4291-DE9)
* Intel Core i5 2nd Generation (2.60GHz)
* 2 x 4GB PC3-8500 Non-Parity (NP) Double Data Rate Two (DDR3) SO-DIMM
* Intel HD Graphics 3000 Integrated/On-Board Graphics
* 12.5" HD+ Premium IPS display
* 320GB 7200 RPM HDD
* Intel Centrino Advanced-N 6205 AGN Wi-Fi adapter 
* 720p HD WebCamera
* 6-CELL High-Capacity Lenovo Li-ion Battery
* 3 USB (2.0) Ports, one powered
* Wired networking 1x 10/100/1000
* FingerPrint Reader
* Bluetooth
* Other Ports
    * Docking - Port Replicator
    * VGA out
    * Display Port
    * Ethernet (RJ45)
    * Audio Combo - Headphone/Mic
    * 3 in 1 SD card reader. SDXC Support
    * 1 Full (WWAN or m-SATA)
    * 1 Half (WLAN)
    * 1 Express Card 54mm.
    * 1 54-mm ExpressCard slot or 3-in-1 Media Card Reader slot (MMC, Memory Stick, Mem Stick Pro, SD, SDHC)

## Operating systems

These are the operating systems I'm going to target, for now, this list may change going forward.

* [Linux](linux.md)
* [OpenBSD](openbsd.md)
* [FreeBSD](freebsd.md)
* [NixOS](nixos.md)


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
