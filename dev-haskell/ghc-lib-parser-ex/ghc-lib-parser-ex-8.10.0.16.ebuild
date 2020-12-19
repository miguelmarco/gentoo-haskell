# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Algorithms on GHC parse trees"
HOMEPAGE="https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/uniplate-1.5:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	=dev-haskell/ghc-lib-parser-8.10*:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( >=dev-haskell/extra-1.6
			>=dev-haskell/tasty-1.2
			>=dev-haskell/tasty-hunit-0.10.0 )
"

src_configure() {
	haskell-cabal_src_configure --flags=-no-ghc-lib
}
