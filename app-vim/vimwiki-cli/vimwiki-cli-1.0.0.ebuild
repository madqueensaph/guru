# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Command-line interface for Vimwiki"
HOMEPAGE="https://github.com/sstallion/vimwiki-cli"
SRC_URI="https://github.com/sstallion/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"

RDEPEND="
	>=dev-python/click-7.1[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
