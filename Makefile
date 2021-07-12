# file: Makefile
# author: Josue Teodoro Moreira <teodoro.josue@protonmail.ch>
# date: Jul 12, 2021

all:
	! [[ -f bin ]]; \
	mkdir -p bin; \
	cd bin; \
	pyinstaller --onefile ../src/jendar.py;
	sudo mkdir -p /etc/jendar/
	sudo touch /etc/jendar/jendar.db
	sudo cp bin/dist/jendar /bin/jendar

clean:
	[[ -f bin ]]; rm -rf bin
