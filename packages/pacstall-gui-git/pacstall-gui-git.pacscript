name="pacstall-gui-git"
pacdeps=("yad")
depends=("sed" "adwaita-icon-theme" "policykit-1" "desktop-file-utils")
url="https://github.com/cat-master21/pacstall-gui.git"
pkgver="0.0.1"
breaks=("${gives}" "${gives}-bin" "${gives}-deb")
gives="pacstall-gui"
pkgdesc="A gui for Pacstall written in bash."
maintainer="cat-master21 <96554164+cat-master21@users.noreply.github.com>"
pkgver() {
  git ls-remote "${url}" master | cut -f1 | cut -c1-8
}

prepare() {
  sudo mkdir -p "${pkgdir}/usr/bin" "${pkgdir}/usr/lib/pacstall-gui" "${pkgdir}/usr/share/applications"
}

package() {
  sudo install -Dm755 pacstall-gui "${pkgdir}/usr/bin/pacstall-gui"
  sudo mv -f ./settings.sh "${pkgdir}/usr/lib/pacstall-gui"
  sudo install -Dm755 LICENSE "${pkgdir}/usr/share/licenses/pacstall-gui/LICENSE"
  sudo mv -f ./pacstall-gui.desktop "${pkgdir}/usr/share/applications"
}

post_install() {
  sudo chmod -R a+w "${pkgdir}/usr/lib/pacstall-gui"
  sudo update-desktop-database -q
}
