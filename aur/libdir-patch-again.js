const path = require('path');
module.exports = {
    // Files
    gameAsar: '/usr/lib/ajclassic-grapefruit/game.asar',
    gameLock: '/usr/lib/ajclassic-grapefruit/game-verison.lock',
    pepperFlash: '/lib/PepperFlash/libpepflashplayer.so',
    // Optional modules
    libinstall: './libinstall.js',
    everyUpdater: './everyUpdater.js',
    electronUpdater: './game.asar/node_modules/electron-updater',
    gameConfig: './game.asar/config.js',
    gameEntry: './game.asar/index.js',
};