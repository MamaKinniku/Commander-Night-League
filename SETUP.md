# Commander Night — Local Setup (Windows)

## What you have
- `index.html` — the app itself. Everything lives in this one file.
- `Launch Commander Night.bat` — opens the app in a clean window with no
  browser address bar or tabs, so it looks and behaves like a real desktop app.
- `Launch Commander Night (Casting Mode).bat` — opens the app in a normal
  browser window. Use this one when you want to Chromecast to a TV, because
  casting needs the browser menu that app mode hides.

## Setup (2 minutes)

1. Put both files in the **same folder** — e.g. `C:\Commander Night\`.
   (The launcher looks for `index.html` right next to itself.)
2. Double-click **Launch Commander Night.bat** once to make sure it opens
   correctly. You should get a plain window with no browser UI — just the app.
3. Right-click `Launch Commander Night.bat` → **Send to → Desktop (create shortcut)**.
   Now you have a desktop icon. Rename it to whatever you like.
4. (Optional) Right-click the desktop shortcut → **Properties → Change Icon**,
   and pick something more fun than the default batch-file icon.

From then on: double-click the desktop icon, and you're in.

## How data is saved

The app saves your theme, season stats, and the live board (so an accidental
refresh doesn't lose your progress) using your browser's local storage,
scoped to this file. A few things to know:

- It's tied to **this exact file path**. If you move or rename the folder,
  or copy the file to a different PC, saved data won't follow — it stays
  wherever the browser considers "this page" to be.
- It's **per-browser**. If the launcher opens Edge but you sometimes also
  open the file in Chrome, those are two separate storage buckets.
- Back up important nights: use the **Download log (.txt)** button after
  finalizing, and keep an eye out for an export/import option for season
  stats if you want an extra safety net — ask and it can be added.

## Casting to a TV

**Important:** `Launch Commander Night.bat` opens in "app mode", which hides the
browser's address bar and three-dot menu. That looks great, but Chromecast is
started *from* that menu — so casting doesn't work from the app-mode window.

You have two good options:

### Option A — Chromecast (use the casting launcher)

1. Start with **`Launch Commander Night (Casting Mode).bat`** instead. Same app,
   normal browser window, menu available.
2. Click **Open TV display** in the app. You cast *that* window — not the
   control window, or players will see your admin panel.
3. Browser menu (three dots, top-right) → **Cast...**
4. Pick your TV, set Sources to **Cast tab**.
5. Press **F11** on the TV display window for fullscreen.

Both devices must be on the same Wi-Fi. Casting a tab over Wi-Fi can stutter or
drop out if the network is busy — worth testing before an event.

### Option B — HDMI cable (recommended for live events)

Works with either launcher, and doesn't depend on Wi-Fi.

1. Plug the PC into the TV with HDMI.
2. Press **Windows key + P**, choose **Extend**.
3. Drag the TV display window onto the TV screen, press **F11** for fullscreen.

### Option C — Smart TV with a built-in browser

Host the app on GitHub Pages (see `README.md`) and open that URL directly on the
TV. No casting involved.

## Putting it on GitHub (optional)

See `README.md` for hosting this as a real website via GitHub Pages —
useful if you want a stable URL instead of a local file, or want it
accessible from other computers.

## Uninstalling

There's no installer — just delete the folder and the desktop shortcut.
Nothing is written anywhere else on your system.
