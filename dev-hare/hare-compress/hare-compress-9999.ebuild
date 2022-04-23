# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Compression algorithms for Hare"
HOMEPAGE="https://git.sr.ht/~sircmpwn/hare-compress"
EGIT_REPO_URI="https://git.sr.ht/~sircmpwn/hare-compress"
LICENSE="MPL-2.0"
SLOT="0"

DEPEND="dev-lang/hare"
RDEPEND="${DEPEND}"

src_prepare() {
	default

	sed -i 's;^PREFIX=.*;PREFIX=/usr;' Makefile || die
}
