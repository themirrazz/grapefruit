#!/bin/sh
rm -rf dist/Grapefruit-linux-x64
npx electron-packager . --arch=x64 --platform=linux --out=dist
mv "dist/AJ Classic-linux-x64" dist/Grapefruit-linux-x64
rm -rf dist/Grapefruit-linux-x64/resources/app
mkdir dist/Grapefruit-linux-x64/resources/app
cp package.json dist/Grapefruit-linux-x64/resources/app/package.json
cp index.js dist/Grapefruit-linux-x64/resources/app/index.js

if [ -f libdir.js ]; then
    cp libdir.js dist/Grapefruit-linux-x64/resources/app/libdir.js
fi

if [ -f everyUpdater.js ]; then
    cp everyUpdater.js dist/Grapefruit-linux-x64/resources/app/everyUpdater.js
fi

if [ -f libinstall.js ]; then
    cp libdir.js dist/Grapefruit-linux-x64/resources/app/libinstall.js
fi