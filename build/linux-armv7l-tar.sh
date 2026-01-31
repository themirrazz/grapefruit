if [ ! -e dist/Grapefruit-linux-armv7l ]; then
    sh build/linux-armv7l.sh
fi

mkdir -p bin
tar -cvzf bin/Grapefruit-linux-armv7l.tar.gz dist/Grapefruit-linux-armv7l/*