FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

RDEPENDS_${PN}_append = " vlan-4004"

EXTRA_OECONF_append = " --enable-sync-mac "
SRC_URI_append = " file://config.json "
FILES_${PN} += "${datadir}/network/*.json"

do_install_append() {
    install -d ${D}${datadir}/network/
    install -m 0644 ${WORKDIR}/config.json ${D}${datadir}/network/
}
