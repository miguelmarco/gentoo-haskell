# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: +network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversion between math formats"
HOMEPAGE="https://github.com/jgm/texmath"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/pandoc-types-1.20:=[profile?] <dev-haskell/pandoc-types-1.23:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/syb-0.4.2:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/xml:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	executable? ( dev-haskell/aeson:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/temporary
		dev-haskell/utf8-string )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		--flag=network-uri
}
