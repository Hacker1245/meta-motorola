FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PACKAGE_ARCH_cedric = "${MACHINE_ARCH}"

SRC_URI_append_cedric = " file://70-cedric.rules"

do_install_append_cedric() {
    install -m 0644 ${WORKDIR}/70-cedric.rules ${D}${sysconfdir}/udev/rules.d/70-cedric.rules
}
