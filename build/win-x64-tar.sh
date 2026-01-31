if [ ! -e dist/Grapefruit-win32-x64 ]; then
    sh build/win32-x64.sh
fi

mkdir -p bin
tar -cvzf bin/Grapefruit-win32-x64.tar.gz dist/Grapefruit-win32-x64/*