PKG_NAME="xserver_rk3399"
PKG_VERSION="c4f17932e3b21415acd15d72de0cee75c9441df8"
PKG_SHA256="548a41141a5fbd869eff54e4a783d730da81f15e068b070eed9f387061231f4a"
PKG_SOURCE_DIR="xserver_rk3399-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/xserver_rk3399"
PKG_URL="https://github.com/numbqq/xserver_rk3399/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm64 armhf"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Rockchip xserver deb packages for RK3399"
PKG_SOURCE_NAME="xserver_rk3399-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/xserver
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/xserver/*
	if [ -d ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/ ]; then
		cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/xserver
	fi
}

