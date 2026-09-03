# Setting it up on Windows

## The files

- `index.html` is the app.
- `prize-calculator.html` is the prize split calculator. Open it on its own
  whenever you need it.
- `Launch Commander Night.bat` opens the app in a clean window with no address
  bar or tabs.
- `Launch Commander Night (Casting Mode).bat` opens it in a normal browser
  window. Use this one for Chromecast.

## Setup

1. Put everything in one folder, something like `C:\Commander Night\`. The
   launchers look for `index.html` sitting next to them, so keep them together.
2. Double-click `Launch Commander Night.bat` to check it opens. You should get
   a plain window with no browser clutter.
3. Right-click that same file, then Send to, then Desktop (create shortcut).
   Rename the shortcut to whatever you like.
4. If you want a nicer icon, right-click the shortcut, then Properties, then
   Change Icon.

After that it is just the desktop icon.

## How your data is saved

The app keeps your settings, season and the live board in the browser's own
storage. It is tied to the file's exact location and to the browser you opened
it with. Two things follow from that:

- Move or rename the folder and the browser may treat it as a different site,
  which loses the saved data.
- Opening it in Edge one week and Chrome the next gives you two separate sets
  of data.

Hosting it on GitHub Pages avoids both problems. See `README.md`.

## Backups

Banking a night automatically saves a JSON file to your Downloads folder. Keep
those somewhere that is not the shop PC. A USB stick or a cloud folder is fine.

Season Stats also has Export backup for one on demand, and Import to load it
onto another machine. That file holds your whole season and your roster, so it
is what you need if the computer dies or someone clears the cache.

There is also Download log after you finalize a night, which is a plain text
summary of that night's tables, placements and standings.

## Getting it on a TV

The clean launcher hides the browser menu, and that menu is where casting
starts. So casting needs the other launcher.

### Chromecast

1. Open with `Launch Commander Night (Casting Mode).bat`.
2. Click Open TV display in the app. Cast that window, not the control window,
   or the room sees your admin panel.
3. Browser menu, three dots at the top right, then Cast.
4. Pick your TV and set Sources to Cast tab.
5. Press F11 on the display window for fullscreen.

Both devices need to be on the same wifi. Casting over wifi can stutter when
the network is busy, so test it before you rely on it.

### HDMI

More reliable, and it works with either launcher.

1. Plug the PC into the TV.
2. Press Windows key and P together, then choose Extend.
3. Drag the TV display window onto the TV and press F11.

For a live event where the clock needs to stay up, use the cable.

### Smart TV browser

Host it on GitHub Pages and open the address on the TV directly. No casting
involved.

## Removing it

There is no installer. Delete the folder and the desktop shortcut. Nothing was
written anywhere else.
