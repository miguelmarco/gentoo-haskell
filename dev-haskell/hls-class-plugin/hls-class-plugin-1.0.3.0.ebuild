# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Class/instance management plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	>=dev-haskell/ghc-exactprint-0.6.4:=[profile?]
	>=dev-haskell/ghcide-1.7:=[profile?] <dev-haskell/ghcide-1.8:=[profile?]
	>=dev-haskell/hls-plugin-api-1.4:=[profile?] <dev-haskell/hls-plugin-api-1.5:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.3 <dev-haskell/hls-test-utils-1.4
		dev-haskell/lsp-types
	)
"
