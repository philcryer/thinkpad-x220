# Linux

<div align="center"><img src="../imgs/tux.png" alt="Linux" border="0"></div>

## Setup

I installed Debian Jessie netinstall (2016-01), enabling the XFCE desktop to get started. Here are the things I did after the first boot.

### Wifi

Drivers for the wifi are not open source (boo!) so you need to enable `non-free` in the `sources.list` file. After this install is as simple as:

```
apt-get update; apt-get install firmware-iwlwifi
```

*NOTE* other howtos say to install `firmware-realtek` so do a `dmesg | grep foo` to see which you have.

### PowerTOP

```
apt-get install powertop
```

Then run it and check the tunables section

```
powertop
```

It only recommended one change, so I dropped that into `/etc/rc.local`

```
echo "echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';" >> /etc/rc.local
```

### TLP

Next up I installed/configured [TLP](http://linrunner.de/en/tlp/tlp.html) to get a handle on power usage.

```
echo "deb http://repo.linrunner.de/debian jessie main" >> /etc/sources.list.d/tlp.list
```

Installed their signing key

```
apt-key adv --keyserver pool.sks-keyservers.net --recv-keys CD4E8809 
```

And then updated apt and installed

```
apt-get update
apt-get install tlp tlp-rdw 
```

Since I'm rocking a ThinkPad I installed the specific packages to target the hardware 

```
apt-get install tp-smapi-dkms acpi-call-dkms 
```

That's it, TLP is setup to start automatically, otherwise you can start it (as root) with `tlp start`. It doesn't show up in `ps`, so to check that it's enabled you can run:

```
tlp-stat | grep "TLP power save"
...
TLP power save = enabled
```

There lots more to read up in their [docs](http://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html), but for now I'm just going with defaults.

### More power tips

More things to study for more power savings

* [Energy Management in Linux](http://itgen.blogspot.com/2009/03/energy-management-in-linux.html) 
* [Power tweaks](https://www.phoronix.com/scan.php?page=article&item=intel_i915_power&num=1)

### kupfer

I hate having to click on things, so the more I can use something like Quicksilver the better. I use kupfer as a launcher in Linux

```
apt-get install kupfer
```

### i3

I hate having to click on things, so the more I can use a tiling window manager like i3, the better! :)

```
 apt-get install i3 i3-wm i3blocks i3lock i3status
```

*TODO* config, tweak, save conf file

### Slack

I've been using slack quite a bit recently, it's taking over where IRC should have... regardless, I get a lot done with it, and they now have a [Linux beta](https://slack.com/downloads). To install it in a base Debian I had to install some packages that they didn't list. Download the `deb`, install the deps and then install it:

```
apt-get install gvfs-bin apt-transport-https libxss1
dpkg -i slack*.deb
```

### Telegram

Not everyone uses Slack, so I rock Telegram too, they have a nice [linux client](https://desktop.telegram.org) so let's get that and installed

```
xz -d tsetup.0.9.18.tar.xz 
tar -xf tsetup.0.9.18.tar 
``` 

It doesn't have an installer yet, so I just throw it into `~/bin`, which is in my $PATH and the kupfer catalog

```
cp Telegram/* ~/bin/
```

## TODO

### .dotfile

* https://github.com/philcryer/basejump

### Iceweasel // firefox extentions

* https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
* https://www.eff.org/https-everywhere
* https://www.eff.org/privacybadger

### GRUB

* GRUB config from [troshlyak](https://troshlyak.wordpress.com/2011/11/18/thinkpad-x220-the-almost-perfect-setup-fedora-16/)

```
GRUB_CMDLINE_LINUX="quiet rhgb threadirqs pcie_aspm=force i915.i915_enable_rc6=1 i915.i915_enable_fbc=1 i915.lvds_downclock=1 iwlagn.power_save=1 iwlagn.power_level=5"
```

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
