#!/bin/sh
rm -rf dist/Grapefruit-linux-armv7l
npx electron-packager . --arch=armv7l --platform=linux --out=dist
mv "dist/AJ Classic-linux-armv7l" dist/Grapefruit-linux-armv7l
rm -rf dist/Grapefruit-linux-armv7l/resources/app
mkdir dist/Grapefruit-linux-armv7l/resources/app
cp package.json dist/Grapefruit-linux-armv7l/resources/app/package.json
cp index.js dist/Grapefruit-linux-armv7l/resources/app/index.js

if [ -f libdir.js ]; then
    cp libdir.js dist/Grapefruit-linux-armv7l/resources/app/libdir.js
fi

if [ -f everyUpdater.js ]; then
    cp everyUpdater.js dist/Grapefruit-linux-armv7l/resources/app/everyUpdater.js
fi

if [ -f libinstall.js ]; then
    cp libdir.js dist/Grapefruit-linux-armv7l/resources/app/libinstall.js
fi