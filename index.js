// Required modules
const fs = require('original-fs');
const path = require('path');
const os = require('os');
const { session, app, dialog } = require('electron'); 
const pkginfo = require('./package.json');

// Loader for optional modules
const tryquire = (m) => {
    try {
        return require(m);
    } catch (error) {
        return null;
    }
};

// Cross-platform plugin names
const plugin = {
    win: 'pepflashplayer.dll',
    win32: 'pepflashplayer.dll',
    linux: 'libpepflashplayer.so',
    darwin: 'PepperFlashPlayer.plugin'
};

// Get libdirs
const lbd = {
    gameAsar: (tryquire('libdir')||{}).gameAsar || path.join(__dirname, 'game.asar'),
    gameLock: (tryquire('libdir')||{}).gameLock || path.join(__dirname, 'game-version.lock'),
};

lbd.gameConfig = lbd.gameAsar + '/config.js';
lbd.gameEntry = lbd.gameAsar + '/index.js';
lbd.electronUpdater = lbd.gameAsar + '/game.asar/node_modules/electron-updater';

// Check game files
const gameExists = fs.existsSync(lbd.gameAsar);
const vLockExists = fs.existsSync(lbd.gameLock);

if(tryquire('rmsandbox') || true)
    app.commandLine.appendSwitch('no-sandbox');

app.commandLine.appendSwitch('ppapi-flash-path', (tryquire('libdir')||{}).pepperFlash || path.join(__dirname, plugin[os.platform()]));

// Main logic
(async () => {
    await app.whenReady();
    // Check to see if the game files exist
    if(!(gameExists&&vLockExists)) {
        // Try to install the game files
        if(!tryquire('libinstall')) {
            // There isn't an installer
            // Tell the user that the game files are missing
            dialog.showErrorBox("Grapefruit", "The game package could not be found. Your installation\n may be corrupted. Try reinstalling AJClassic/Grapefruit\nto fix this error.");
            app.quit();
        }
        return;
    }
    // Optionally, we can provide our own updater
    const EveryUpdater = tryquire('every-updater');
    const elec_upd = tryquire(lbd.electronUpdater);
    if(EveryUpdater && elec_upd) {
        Object.defineProperty(elec_upd, 'autoUpdater', {
            value: new EveryUpdater(),
            writable: true
        });
    } else {
        // Prevent AJ Classic from trying to check for updates
        // Otherwise you won't get past the login screen
        Object.defineProperty(tryquire(lbd.gameConfig)||{}, 'noUpdater', {
            value: true,
            writable: true
        });
    }
    // We need to make sure we have the correct user agent
    // Also add that we are using Grapefruit runtime
    const userAgent = tryquire('userAgent');
    session.defaultSession.setUserAgent(
        typeof userAgent === 'string' ? userAgent : (session.defaultSession.getUserAgent().replaceAll(
            'AJClassic/' + pkginfo.version,
            'AJClassic/' + fs.readFileSync(lbd.gameLock, {
                encoding: 'utf8'
            })
        ).trim())
    );
    console.log(session.defaultSession.getUserAgent());
    tryquire(lbd.gameEntry);
})();
