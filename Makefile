package:
	tar -czvf terminal.tar.gz terminal/
	makepkg -si

clean:
	rm -rf src
	rm -rf pkg
	rm *.tar.*
