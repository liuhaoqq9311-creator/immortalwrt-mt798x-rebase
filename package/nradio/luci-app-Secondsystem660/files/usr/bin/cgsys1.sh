#!/bin/sh
# Switch the NRadio C8-660 back to the first/OEM system.
TARGET_DIR="/mnt/app_data"
DEVICE="ubi1_0"

if [ ! -d "$TARGET_DIR" ]; then
	echo "The target directory does not exist, creating $TARGET_DIR ..."
	mkdir "$TARGET_DIR" || {
		echo "Failed to create directory, exiting script..."
		exit 1
	}
else
	echo "The target directory already exists, skipping the creation step..."
fi

if mount | grep "on $TARGET_DIR " >/dev/null; then
	echo "$TARGET_DIR mounted, skipping step..."
else
	echo "try to mount $DEVICE to $TARGET_DIR ..."
	ubiattach -m 7 /dev/ubi_ctrl
	mount -t ubifs "$DEVICE" "$TARGET_DIR" || {
		echo "mount error, exiting..."
		exit 2
	}
	echo "complete."
fi

sleep 1

BOOT_2ND_FLAG_FILE="/mnt/app_data/boot_2nd_flag"
if [ -f "$BOOT_2ND_FLAG_FILE" ]; then
	echo "Removing $BOOT_2ND_FLAG_FILE ..."
	rm "$BOOT_2ND_FLAG_FILE" || {
		echo "Removing file failed, exiting..."
		exit 3
	}
	echo "Removing completed."
else
	echo "File $BOOT_2ND_FLAG_FILE does not exist, skip."
	echo "Switch to OEM system failed, exiting..."
	exit 4
fi

echo "Switch to OEM system succeeded, rebooting..."
reboot
exit 0
