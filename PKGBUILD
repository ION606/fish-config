# Maintainer: Your Name <your.email@example.com>

pkgname=ion-terminal-config
pkgver=1.0
pkgrel=1
pkgdesc="A custom terminal configuration with Alacritty, Starship, and Fish!"
arch=('any')
url="https://github.com/ION606/fish-config"
license=('MIT')
depends=('alacritty' 'starship' 'fish' 'glow')
source=('install.sh' 'terminal/')
sha256sums=('SKIP' 'SKIP')

package() {
    install -Dm644 terminal/alacritty.toml "$pkgdir/etc/terminal/alacritty.toml"
    install -Dm644 terminal/starship.toml "$pkgdir/etc/terminal/starship.toml"

    # Fish config
    install -Dm644 terminal/fish/config.fish "$pkgdir/etc/fish/config.fish"
    install -Dm644 terminal/fish/fish_variables "$pkgdir/etc/fish/fish_variables"
    install -Dm644 terminal/fish/completions/glow.fish "$pkgdir/etc/fish/completions/glow.fish"
    install -Dm644 terminal/fish/conf.d/colors.fish "$pkgdir/etc/fish/conf.d/colors.fish"
    install -Dm644 terminal/fish/functions/builtins.fish "$pkgdir/etc/fish/functions/builtins.fish"
    install -Dm644 terminal/fish/functions/commands.fish "$pkgdir/etc/fish/functions/commands.fish"

    # Post-install script
    install -Dm755 install.sh "$pkgdir/usr/bin/apply-terminal-config"
}
