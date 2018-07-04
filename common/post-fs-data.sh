#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# Prepare mount point
mkdir -p "$MODDIR/system/etc/bluetooth"

# Create modified copy of the config file
sed '
  /^BtSnoopConfigFromFile=/ s/false/true/
  /^BtSnoopLogOutput=/ s/true/false/
  /^BtSnoopExtDump=/ s/true/false/
  ' /system/etc/bluetooth/bt_stack.conf \
  >"$MODDIR/system/etc/bluetooth/bt_stack.conf"
