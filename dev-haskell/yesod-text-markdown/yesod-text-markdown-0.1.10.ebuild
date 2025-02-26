# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Yesod support for Text.Markdown"
HOMEPAGE="https://hackage.haskell.org/package/yesod-text-markdown"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-2.0:=[profile?]
	>=dev-haskell/markdown-0.1:=[profile?] <dev-haskell/markdown-2.0:=[profile?]
	>=dev-haskell/persistent-1.2:=[profile?] <dev-haskell/persistent-3.0:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?] <dev-haskell/shakespeare-3.0:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/yesod-core-1.2:=[profile?] <dev-haskell/yesod-core-2.0:=[profile?]
	>=dev-haskell/yesod-form-1.3:=[profile?] <dev-haskell/yesod-form-2.0:=[profile?]
	>=dev-haskell/yesod-persistent-1.2:=[profile?] <dev-haskell/yesod-persistent-2.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
