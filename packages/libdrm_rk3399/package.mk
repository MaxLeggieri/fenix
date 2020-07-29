PKG_NAME="libdrm_rk3399"
PKG_VERSION="d918e9665bf1e6eb63c960bce3c9b10b46e83e23"
PKG_SHA256="18772031c72204c3965e06f6483f2a0af65a5dc9767ea38ecb774c7d11d3286e"
PKG_SOURCE_DIR="libdrm_rk3399-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/libdrm_rk3399"
PKG_URL="https://github.com/numbqq/libdrm_rk3399/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm64 armhf"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Rockchip Userspace Library for DRM RGA device deb packages for RK3399"
PKG_SOURCE_NAME="libdrm_rk3399-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/libdrm
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/libdrm/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/libdrm
}

