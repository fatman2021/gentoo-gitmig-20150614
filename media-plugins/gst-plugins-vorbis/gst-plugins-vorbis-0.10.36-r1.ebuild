# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-vorbis/gst-plugins-vorbis-0.10.36-r1.ebuild,v 1.11 2014/10/11 13:30:40 maekke Exp $

EAPI="5"

GST_ORG_MODULE=gst-plugins-base
inherit gstreamer libtool

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 ~sh sparc x86 ~amd64-fbsd ~x86-fbsd ~x64-macos"
IUSE=""

RDEPEND=">=media-libs/libvorbis-1.3.3-r1[${MULTILIB_USEDEP}]
	>=media-libs/libogg-1.3.0[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"

src_prepare() {
	gstreamer_system_link \
		gst-libs/gst/tag:gstreamer-tag \
		gst-libs/gst/audio:gstreamer-audio

	elibtoolize  # for Darwin bundles
}
