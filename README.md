It is bluetooth patch for tinkerboard on rockchip kernel/rootfs.

First, you should do deploy wifi/bt patch for tinkerboard, please check following the link:

https://github.com/masafumiohta/kernel/blob/release-4.4/README-tinkerboard

Once set those usr and lib file to /usr and /lib in rockchip rootfs then make a symbolic link,

ln -s /lib/systemd/system/hciuart.service /etc/systemd/system/multi-user.target.wants/hciuart.service
 
It works good checking on bluez with bluetoothctl, please check bt_rootfs_overlay.sh how to deploy the patch
