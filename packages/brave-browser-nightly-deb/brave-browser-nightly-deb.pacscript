name="brave-browser-nightly-deb"
pkgver="1.59.29"
gives="brave-browser-nightly"
breaks=("${gives}-bin" "${gives}-app" "${gives}-git")
replace=("${gives}")
pacdeps=("brave-keyring-deb")
url="https://github.com/brave/brave-browser/releases/download/v${pkgver}/${gives}_${pkgver}_amd64.deb"
homepage='https://brave.com/'
pkgdesc="The Brave browser is a fast, private and secure web browser for PC, Mac and mobile - Nightly channel"
hash="7659a36ced45fd01054b768521ccab2b578b43627cf537440c7d81d5e78e9ef7"
arch=('amd64')
repology=("project: brave" "visiblename: brave-nightly")
maintainer="Elsie19 <hwengerstickel@pm.me>"
