if [ ! -e sources ]; then
	mkdir sources
fi

cd sources

git clone -b $1 git://git.yoctoproject.org/poky.git
git clone -b $1 git://git.openembedded.org/meta-openembedded
git clone -b $1 git://github.com/meta-qt5/meta-qt5.git
git clone -b $1 git://git.yoctoproject.org/meta-raspberrypi

