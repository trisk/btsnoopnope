# **Disable Bluetooth HCI snoop log**
## Description
Some device ROMs ship with the Bluetooth HCI log enabled; this captures HCI packets to a file (typically `/sdcard/btsnoop_hci.log`) and quickly drains the battery when Bluetooth is enabled.

The "Bluetooth HCI snoop log" setting in Developer options can be used to temporarily disable the HCI log, but the only permanent solution is to modify the configuration file `/system/etc/bluetooth/bt_stack.conf`. This module replaces the file without modifying the the system partition.
## Changelog
v1.1:
- Support `BtSnoopConfigFromFile` for Nextbit Robin and other devices
- Update minimum Magisk version to v15
## Requirements
- Magisk v15+
## Instructions
Download the module and install it with Magisk Manager.
## Links
[Module XDA Forum Thread](https://forum.xda-developers.com/apps/magisk/module-disable-bluetooth-hci-snoop-log-t3680223 "Module official XDA thread")

[Module GitHub repository](https://github.com/trisk/btsnoopnope)

[Latest stable Magisk](http://www.tiny.cc/latestmagisk)
