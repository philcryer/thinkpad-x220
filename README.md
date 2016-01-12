# x220

<div align="center"><img src="/imgs/ThinkPadX220.png" alt="ThinkPadX220" border="0"></div>

## About

This project documents discoveries, settings, tweaks, etc for running Linux on the Lenovo ThinkPad x220. My specific versions specs are:

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

### Xorg

## Resources

* [ThinkWiki](www.thinkwiki.org/wiki/Category:X220) page for the x220
* [Debian Wiki](https://wiki.debian.org/InstallingDebianOn/Thinkpad/X220/squeeze) page on installing Debian GNU/Linux (sqeeze) on x220
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
