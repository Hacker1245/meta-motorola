FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PACKAGE_ARCH_athene = "${MACHINE_ARCH}"
PACKAGE_ARCH_cedric = "${MACHINE_ARCH}"

SRC_URI_append_athene = " file://70-athene.rules"
SRC_URI_append_cedric = " file://70-cedric.rules"

do_install_append_athene() {
    install -m 0644 ${WORKDIR}/70-athene.rules ${D}${sysconfdir}/udev/rules.d/70-athene.rules
}

do_install_append_cedric() {
    install -m 0644 ${WORKDIR}/70-cedric.rules ${D}${sysconfdir}/udev/rules.d/70-cedric.rules
}
