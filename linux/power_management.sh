POWER SCRIPT
		<p>Indeed I&#8217;ve done what I&#8217;ve could to get down the power consumption, but it was not related with controlling the fans &#8230;</p>
<p>I plan to write about what I&#8217;ve done, but as I don&#8217;t have the time to do it now I&#8217;ll just post the script with all settings:</p>

```
#!/bin/bash

# Enable USB autosuspend
for i in /sys/bus/usb/devices/*/power/autosuspend; do echo 1 &gt; $i; done

# Enable SATA Power Management
for h in /sys/class/scsi_host/*/link_power_management_policy; do echo min_power &gt; $h; done

# Disable WOL 
ethtool -s em1 wol 

# Enable Power Aware CPU scheduler 
echo 1 &gt; /sys/devices/system/cpu/sched_mc_power_savings

# Enable Audio codec power management
echo 1 &gt; /sys/module/snd_hda_intel/parameters/power_save
echo Y &gt; /sys/module/snd_hda_intel/parameters/power_save_controller

# Enable power management for all PCI devices
for c in  /sys/bus/pci/devices/*/power/control; do echo auto &gt; $c; done

# Extend VM writeback timeout
echo 1500 &gt; /proc/sys/vm/dirty_writeback_centisecs

# Disable NMI watchdog
echo 0 &gt; /proc/sys/kernel/nmi_watchdog
echo 0 &gt; /proc/sys/kernel/watchdog
```

<p>Also I&#8217;ve added this to my /etc/default/grub</p>
GRUB_CMDLINE_LINUX=&quot;quiet rhgb threadirqs pcie_aspm=force i915.i915_enable_rc6=1 i915.i915_enable_fbc=1 i915.lvds_downclock=1 iwlagn.power_save=1 iwlagn.power_level=5

<p>And that gives me usually consumption around 10W with WiFi ON. Regarding the temperature I&#8217;ve never worried about it, but it seems that I have similar values &#8211; 45-50C, which I think is OK.</p>

https://troshlyak.wordpress.com/2011/11/18/thinkpad-x220-the-almost-perfect-setup-fedora-16/
