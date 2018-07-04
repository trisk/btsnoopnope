#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# Prepare mount point and copy original config file
mkdir -p $MODDIR/system/etc/bluetooth
cp /system/etc/bluetooth/bt_stack.conf $MODDIR/system/etc/bluetooth/bt_stack.conf

# Modify the config file
cd  $MODDIR/system/etc/bluetooth/
sed -i '/BtSnoopExtDump/ s/true/false/' bt_stack.conf
sed -i '/BtSnoopLogOutput/ s/true/false/' bt_stack.conf
