package:
	tar -czvf terminal.tar.gz terminal/

build:
	make package
	makepkg -si

clean:
	rm -rf src
	rm -rf pkg
	rm *.tar.*
