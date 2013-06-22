# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

#hackport: ignore-cabal-feature profile
CABAL_FEATURES="lib haddock hoogle hscolour" #profile
inherit haskell-cabal

DESCRIPTION="Extract the heap representation of Haskell values and thunks"
HOMEPAGE="http://hackage.haskell.org/package/ghc-heap-view"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="prim-supports-any"

RDEPEND="dev-haskell/binary:=
		dev-haskell/transformers:=
		>=dev-lang/ghc-7.6.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.14"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag prim-supports-any prim-supports-any)
}
