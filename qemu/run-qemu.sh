MEMSIZE=512

if [ ! -e $1 ]; then
	echo ""
	echo ""
	echo "### error ###"
	echo "   image file doesn't exist"
	echo "   path : \"$1\""
	echo ""
	echo ""
	exit
fi

qemu-system-arm -kernel kernel-qemu -cpu arm1176 -m $MEMSIZE -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda $1

