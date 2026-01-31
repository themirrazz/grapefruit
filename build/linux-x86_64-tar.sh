if [ ! -e dist/Grapefruit-linux-x64 ]; then
    sh build/linux-x86_64.sh
fi

mkdir -p bin
tar -cvzf bin/Grapefruit-linux-x64.tar.gz dist/Grapefruit-linux-x64/*