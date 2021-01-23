# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell implementation of the Google Protocol Buffer specification"
HOMEPAGE="https://github.com/k-bx/protocol-buffers"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/1.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="~dev-haskell/protocol-buffers-2.4.17:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_prepare() {
	default

	# ghc-8.10 uses huge amount of RAM on instances:
	#     https://gitlab.haskell.org/ghc/ghc/-/issues/19121
	[[ $(ghc-version) == 8.10.* ]] && HCFLAGS="${HCFLAGS} -O0"

	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die
}
