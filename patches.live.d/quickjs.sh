# Download
local QJSVER=2021-03-27
DOWNLOAD -O "https://bellard.org/quickjs/quickjs-$QJSVER.tar.xz"
DOWNLOAD -O "https://bellard.org/quickjs/quickjs-extras-$QJSVER.tar.xz"
tar -pxvf quickjs-$QJSVER.tar.xz
tar -pxvf quickjs-extras-$QJSVER.tar.xz

# Build & install
cd quickjs-$QJSVER
make $MAKE_OPTS all
DESTDIR=$ROOTFS make $MAKE_OPTS install
