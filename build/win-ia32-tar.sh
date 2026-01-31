if [ ! -e dist/Grapefruit-win32-ia32 ]; then
    sh build/win32-ia32.sh
fi

mkdir -p bin
tar -cvzf bin/Grapefruit-win32-ia32.tar.gz dist/Grapefruit-win32-ia32/*