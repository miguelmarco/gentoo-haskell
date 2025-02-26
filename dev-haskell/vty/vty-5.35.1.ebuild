# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple terminal UI library"
HOMEPAGE="https://github.com/jtdaugherty/vty"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/ansi-terminal-0.10.3:=[profile?]
	>=dev-haskell/blaze-builder-0.3.3.2:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?]
	<dev-haskell/microlens-0.4.13:=[profile?]
	dev-haskell/microlens-mtl:=[profile?]
	dev-haskell/microlens-th:=[profile?]
	>=dev-haskell/parallel-2.2:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hunit
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-assertions-0.1.1
		>=dev-haskell/random-1.0 <dev-haskell/random-1.3
		>=dev-haskell/smallcheck-1 <dev-haskell/smallcheck-2
		dev-haskell/string-qq
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		dev-haskell/test-framework-hunit
		>=dev-haskell/test-framework-smallcheck-0.2 <dev-haskell/test-framework-smallcheck-0.3 )
"
