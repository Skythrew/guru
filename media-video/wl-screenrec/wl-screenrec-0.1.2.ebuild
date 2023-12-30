# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	aho-corasick@1.1.2
	anstream@0.6.4
	anstyle@1.0.4
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anyhow@1.0.75
	autocfg@1.1.0
	bindgen@0.64.0
	bitflags@1.3.2
	bitflags@2.4.1
	cc@1.0.83
	cexpr@0.6.0
	cfg-if@1.0.0
	clang-sys@1.6.1
	clap@4.4.10
	clap_builder@4.4.9
	clap_derive@4.4.7
	clap_lex@0.6.0
	colorchoice@1.0.0
	dlib@0.5.2
	downcast-rs@1.2.0
	drm-fourcc@2.2.0
	ffmpeg-next@6.1.0
	ffmpeg-sys-next@6.1.0
	glob@0.3.1
	heck@0.4.1
	hermit-abi@0.3.3
	human-size@0.4.3
	itoa@1.0.9
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.150
	libloading@0.7.4
	libloading@0.8.1
	log@0.4.20
	memchr@2.6.4
	memoffset@0.7.1
	minimal-lexical@0.2.1
	nix@0.26.4
	nix@0.27.1
	nom@7.1.3
	num_cpus@1.16.0
	peeking_take_while@0.1.2
	pkg-config@0.3.27
	proc-macro2@1.0.70
	quick-xml@0.30.0
	quote@1.0.33
	regex@1.10.2
	regex-automata@0.4.3
	regex-syntax@0.8.2
	rustc-hash@1.1.0
	ryu@1.0.15
	scoped-tls@1.0.1
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.108
	shlex@1.2.0
	signal-hook@0.3.17
	signal-hook-registry@1.4.1
	smallvec@1.11.2
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.39
	thiserror@1.0.50
	thiserror-impl@1.0.50
	unicode-ident@1.0.12
	utf8parse@0.2.1
	vcpkg@0.2.15
	wayland-backend@0.3.2
	wayland-client@0.31.1
	wayland-protocols@0.31.0
	wayland-protocols-wlr@0.2.0
	wayland-scanner@0.31.0
	wayland-sys@0.31.1
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.48.0
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.48.5
"

inherit cargo

DESCRIPTION="High performance screen/audio recorder for wlroots"
HOMEPAGE="https://github.com/russelltg/wl-screenrec"
SRC_URI="
	https://github.com/russelltg/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0 BSD Boost-1.0 ISC MIT Unicode-DFS-2016 Unlicense WTFPL-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	media-video/ffmpeg
	sys-devel/clang
	x11-libs/libdrm
"
RDEPEND="${BDEPEND}"
DEPEND="${RDEPEND}"

QA_FLAGS_IGNORED="usr/bin/${PN}"

pkg_postinst() {
	elog "To use this software, you need vaapi encoding support."
	elog "You also need a wayland compositor that supports the"
	elog "following unstable protocols:"
	elog "  - wlr-output-management-unstable-v1"
	elog "  - wlr-screencopy-unstable-v1"
}