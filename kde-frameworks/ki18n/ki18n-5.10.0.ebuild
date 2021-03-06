# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-frameworks/ki18n/ki18n-5.10.0.ebuild,v 1.1 2015/05/09 10:36:08 mrueg Exp $

EAPI=5

inherit kde5

DESCRIPTION="Framework based on Gettext for internationalizing user interface text"
LICENSE="LGPL-2+"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-qt/qtscript:5
"
DEPEND="${RDEPEND}
	virtual/libintl
	test? ( dev-qt/qtconcurrent:5 )
"
