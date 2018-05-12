#!/bin/sh
# patch-add script from bt_rootfs_overlay repo
# Usage: bt_rootfs_overlay.sh $ROOTFS_MOUNT_DIR
cat <<EOF | sudo chroot $1
apt-get update && apt-get install -y git
git clone https://github.com/masafumiohta/bt_rootfs_overlay.git
cp -r bt_rootfs_overlay/usr/* /usr/
cp -r bt_rootfs_overlay/lib/* /lib/ 
ln -s /lib/systemd/system/hciuart.service /etc/systemd/system/multi-user.target.wants/hciuart.service
rm -rf bt_rootfs_overlay/
EOF
