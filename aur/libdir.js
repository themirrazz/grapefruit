module.exports = {
    // Files
    gameAsar: path.join(__dirname, 'game.asar'),
    gameLock: path.join(__dirname, 'game-version.lock'),
    pepperFlash: '/lib/PepperFlash/libpepflashplayer.so',
    // Optional modules
    libinstall: './libinstall.js',
    everyUpdater: './everyUpdater.js',
    electronUpdater: './game.asar/node_modules/electron-updater',
    gameConfig: './game.asar/config.js',
    gameEntry: './game.asar/index.js',
};