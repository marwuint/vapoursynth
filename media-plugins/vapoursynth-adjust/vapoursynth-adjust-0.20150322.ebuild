# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python3_4 )

inherit python-utils-r1 python-single-r1 git-r3

DESCRIPTION="This is a very basic port of the built-in Avisynth filter Tweak"
HOMEPAGE="https://github.com/dubhater/vapoursynth-adjust"
EGIT_REPO_URI="https://github.com/dubhater/vapoursynth-adjust.git"
EGIT_COMMIT="737057778a7da02cf686d9aeaf667610cedd3907"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND+="
	media-libs/vapoursynth
"
DEPEND="${RDEPEND}
"

src_install(){
	insinto "$(python_get_sitedir)"
	doins adjust.py
	dodoc readme.rst
}
