#!/bin/sh
rm -rf dist/Grapefruit-win32-ia32
npx electron-packager . --arch=ia32 --platform=win32 --out=dist
mv "dist/AJ Classic-win32-ia32" dist/Grapefruit-win32-ia32
rm -rf dist/Grapefruit-win32-ia32/resources/app
mkdir dist/Grapefruit-win32-ia32/resources/app
cp package.json dist/Grapefruit-win32-ia32/resources/app/package.json
cp index.js dist/Grapefruit-win32-ia32/resources/app/index.js

if [ -f libdir.js ]; then
    cp libdir.js dist/Grapefruit-win32-ia32/resources/app/libdir.js
fi

if [ -f everyUpdater.js ]; then
    cp everyUpdater.js dist/Grapefruit-win32-ia32/resources/app/everyUpdater.js
fi

if [ -f libinstall.js ]; then
    cp libdir.js dist/Grapefruit-win32-ia32/resources/app/libinstall.js
fi