It is bluetooth patch for tinkerboard on rockchip kernel/rootfs.
Once set those usr and lib file to /usr and /lib in rockchip rootfs then make a symbolic link,

ln -s /lib/systemd/system/hciuart.service /etc/systemd/system/multi-user.target.wants/hciuart.service
 
it works good checking on bluez with bluetoothctl