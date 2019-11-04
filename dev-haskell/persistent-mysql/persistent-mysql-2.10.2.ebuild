# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using MySQL database server"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-1.2.12:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	>=dev-haskell/mysql-0.1.4:=[profile?] <dev-haskell/mysql-0.2:=[profile?]
	>=dev-haskell/mysql-simple-0.4.4:=[profile?] <dev-haskell/mysql-simple-0.5:=[profile?]
	>=dev-haskell/persistent-2.10.0:=[profile?] <dev-haskell/persistent-3:=[profile?]
	dev-haskell/resource-pool:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/fast-logger
		>=dev-haskell/hspec-2.4
		dev-haskell/hunit
		dev-haskell/persistent-qq
		dev-haskell/persistent-template
		dev-haskell/persistent-test
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances )
"
