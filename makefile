linux:
	sh ./build/linux-x86_64.sh
linux-x86_64:
	sh ./build/linux-x86_64.sh
armhf:
	sh ./build/linux-armv7l.sh
armv7l:
	sh ./build/linux-armv7l.sh
linux-armhf:
	sh ./build/linux-armv7l.sh
linux-armv7l:
	sh ./build/linux-armv7l.sh
win:
	sh ./build/win-ia32.sh
win32:
	sh ./build/win-ia32.sh
win64:
	sh ./build/win-x64.sh
tgz:
	bash ./build/linux-x86_64-tar.sh
armhf-tgz:
	bash ./build/linux-armv7l-tar.sh
armv7l-tgz:
	bash ./build/linux-armv7l-tar.sh
linux-tgz:
	bash ./build/linux-x86_64-tar.sh
linux-x86_64-tgz:
	bash ./build/linux-x86_64-tar.sh
linux-armhf-tgz:
	bash ./build/linux-armv7l-tar.sh
linux-armv7l-tgz:
	bash ./build/linux-armv7l-tar.sh
win-tgz:
	bash ./build/win-ia32-tar.sh
win32-tgz:
	bash ./build/win-ia32-tar.sh
win64-tgz:
	bash ./build/win-x64-tar.sh