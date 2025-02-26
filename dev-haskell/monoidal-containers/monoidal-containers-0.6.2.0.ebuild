# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: +split-these

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Containers with monoidal accumulation"
HOMEPAGE="https://github.com/bgamari/monoidal-containers"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/lens-4.4:=[profile?] <dev-haskell/lens-5.2:=[profile?]
	>=dev-haskell/newtype-0.2:=[profile?] <dev-haskell/newtype-0.3:=[profile?]
	>=dev-haskell/semialign-1:=[profile?] <dev-haskell/semialign-1.3:=[profile?]
	>=dev-haskell/these-1:=[profile?] <dev-haskell/these-1.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/witherable-0.4:=[profile?] <dev-haskell/witherable-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=split-these
}
