# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-sidplay/gst-plugins-sidplay-1.4.5.ebuild,v 1.5 2015/03/15 13:40:14 pacho Exp $

EAPI="5"
GST_ORG_MODULE=gst-plugins-ugly

inherit gstreamer

KEYWORDS="~alpha amd64 ppc ppc64 ~sparc x86"
IUSE=""

RDEPEND=">=media-libs/libsidplay-1.36.59-r1:1[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"
