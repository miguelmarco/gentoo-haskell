# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A more progressive alternative to the \"base\" package"
HOMEPAGE="https://github.com/nikita-volkov/rebase"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/bifunctors-5.5:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-haskell/comonad-5:=[profile?] <dev-haskell/comonad-5.1:=[profile?]
	>=dev-haskell/contravariant-1.5:=[profile?] <dev-haskell/contravariant-1.6:=[profile?]
	>=dev-haskell/dlist-0.8:=[profile?] <dev-haskell/dlist-1.1:=[profile?]
	>=dev-haskell/either-5:=[profile?] <dev-haskell/either-5.1:=[profile?]
	>=dev-haskell/groups-0.5.3:=[profile?] <dev-haskell/groups-0.6:=[profile?]
	>=dev-haskell/hashable-1.3:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/invariant-0.5.5:=[profile?] <dev-haskell/invariant-0.6:=[profile?]
	>=dev-haskell/profunctors-5.6:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/selective-0.5:=[profile?] <dev-haskell/selective-0.6:=[profile?]
	>=dev-haskell/semigroupoids-5.3:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	>=dev-haskell/stm-2.5:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/time-compat-1.9.6.1:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/unordered-containers-0.2.13:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/vector-instances-3.4:=[profile?] <dev-haskell/vector-instances-3.5:=[profile?]
	>=dev-haskell/void-0.7:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
