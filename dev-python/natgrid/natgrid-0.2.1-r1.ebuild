# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/natgrid/natgrid-0.2.1-r1.ebuild,v 1.5 2015/04/08 08:05:05 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Matplotlib toolkit for gridding irreguraly spaced data"
HOMEPAGE="http://matplotlib.sourceforge.net/users/toolkits.html"
SRC_URI="mirror://sourceforge/matplotlib/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

DEPEND=">=dev-python/matplotlib-0.98[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_install_all() {
	insinto /usr/share/doc/${PF}
	doins test.py || die "doins failed"
	distutils-r1_python_install_all
}

python_install() {
	# Fix collision with dev-python/matplotlib.
	rm -f "${D}$(python_get_sitedir)/mpl_toolkits/__init__.py" || die
	distutils-r1_python_install
}
