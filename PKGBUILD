# Maintainer: Itamar ion606@protonmail.com

pkgname=ion-terminal-config
pkgver=1.0
pkgrel=1
pkgdesc="A custom terminal configuration with Alacritty, Starship, and Fish!"
arch=('any')
url="https://github.com/ION606/fish-config"
license=('MIT')
depends=('alacritty' 'starship' 'fish' 'glow')
source=('install.sh' 'terminal.tar.gz')
sha256sums=('SKIP' 'SKIP')

prepare() {
    # Extract the terminal.tar.gz archive
    tar -xzf terminal.tar.gz
}

package() {
    # Install the system-wide configurations if needed (optional)
    install -Dm644 terminal/alacritty.toml "$pkgdir/etc/terminal/alacritty.toml"
    install -Dm644 terminal/starship.toml "$pkgdir/etc/terminal/starship.toml"

    # Provide a user-specific installation script
    install -Dm755 install.sh "$pkgdir/usr/bin/apply-terminal-config"
}
