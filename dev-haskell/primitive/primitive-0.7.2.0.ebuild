# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite": circular depends
inherit haskell-cabal
RESTRICT=test # circular depends: primitive[test]->tasty->wcwidth->attoparsec->scientific->primitive

DESCRIPTION="Primitive memory-related operations"
HOMEPAGE="https://github.com/haskell/primitive"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~x86-solaris"

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
#	test? ( dev-haskell/base-orphans
#		>=dev-haskell/quickcheck-2.13 <dev-haskell/quickcheck-2.15
#		>=dev-haskell/quickcheck-classes-base-0.6 <dev-haskell/quickcheck-classes-base-0.7
#		dev-haskell/tagged
#		dev-haskell/tasty-quickcheck
#		dev-haskell/transformers-compat
#		|| ( ( >=dev-haskell/tasty-1.2 <dev-haskell/tasty-1.3 )
#			|| ( ( >=dev-haskell/tasty-1.3 <dev-haskell/tasty-1.4 )
#				( >=dev-haskell/tasty-1.4 <dev-haskell/tasty-1.5 ) ) ) )
