###############################################################
# External package: quickjs
#
# Environment variables:  MAKE_OPTS
###############################################################

# Download
# QJSVER=2021-03-27
QJSVER="$(grep 'quickjs,' <<< "$LP_VERSION_TABLE" | head -n1 | cut -d, -f2)"

echo "Download quickjs source code..."
DOWNLOAD -O "https://bellard.org/quickjs/quickjs-$QJSVER.tar.xz"
tar -pxf quickjs-$QJSVER.tar.xz

echo "Download quickjs extrat supports..."
DOWNLOAD -O "https://bellard.org/quickjs/quickjs-extras-$QJSVER.tar.xz"
tar -pxf quickjs-extras-$QJSVER.tar.xz

# Build & install
echo "Start build and install into rootfs"
cd quickjs-$QJSVER
make $MAKE_OPTS all
DESTDIR=$ROOTFS make $MAKE_OPTS install
