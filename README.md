# Commander Night

A tool for running Magic: The Gathering Commander night at a game store. It
seats people into pods, runs the round timer, tracks placements and points,
keeps a season going across weeks, and throws live standings up on a TV.

Built by MamaKinniku.

There are two files, and they work on their own:

- `index.html` is the app.
- `prize-calculator.html` is a separate calculator for splitting a prize pool.
  It has nothing to do with the app and works for any event in the store.

No install, no accounts, no server. Open the file and it runs.

## Running it

Open `index.html` in Chrome or Edge and you are done.

On Windows there are two launchers that make it feel less like a web page:

- `Launch Commander Night.bat` opens it in a clean window with no address bar
  or tabs. Use this most nights.
- `Launch Commander Night (Casting Mode).bat` opens it in a normal browser
  window. You need this one if you want to Chromecast, because casting is
  started from the browser menu that the clean window hides.

Right-click either one and send it to your desktop for an icon. `SETUP.md` has
the details.

## Putting it on GitHub Pages

Worth doing if you want a stable web address instead of a file sitting on one
computer.

1. Make a new repo and upload the files. Drag and drop on github.com works,
   no git commands needed.
2. Go to Settings, then Pages.
3. Set Source to "Deploy from a branch", branch `main`, folder `/ (root)`.
4. You get an address like `https://yourname.github.io/commander-night/`.

The calculator ends up at `.../prize-calculator.html` on the same site.

Hosting it this way also fixes a quiet problem with local files. Browsers tie
saved data to a file's exact location, so moving or renaming the folder can
lose your season. A web address does not move.

## What it does

**Seating.** Tables are always 3 or 4 players. Hit Seat players and it fills
them. Three methods: Random, which avoids repeat pairings where it can; By
score, which puts the leaders together for a finals table; and Balanced, which
spreads strong players out so no table is stacked. Pick per round.

Five players is the only count that does not divide evenly, so it asks whether
you want a table of 4 with one bye, or a 3 and a 2.

**Rounds.** Set a length, hit start. The clock runs off real time, so it stays
accurate when the window is behind your TV display and it survives a refresh.

Score placements 1st through 4th, or No placement for anyone who did not rank.
Everyone seated or on a bye gets an attendance point. Every seated player needs
a placement before the round will close.

**Fixing mistakes.** Revert last round takes the scores back off and puts those
tables up again. Round history lets you open any past round and change
placements, swapping two players if you entered them backwards. Point
adjustments need a confirm and get logged, so you can see what was changed.

**League and Freeplay.** Two completely separate boards with their own players,
tables and timers. Run both at once and flip between them. Only League counts
toward the season.

**Seasons.** Bank a night and it joins the season standings. Store Stats shows
the leaderboard with nights attended, rounds played, table wins and best night.
Ties break on wins, then attendance. Banking also drops a JSON backup in your
Downloads folder, which is the copy that survives a wiped browser or a new PC.

**Roster.** Every name you sign in gets remembered. Next week, tick the people
who showed up instead of typing the list again.

**TV display.** Opens in its own window with big standings, tables, byes and
the clock. Each display window has its own League and Freeplay tabs, so you can
have more than one screen showing different things.

**Looks.** Five themes, a custom accent colour, and you can rename the app.
Settings stick.

## Backups

Do not rely on the browser alone. Cache clears, moved folders and new computers
all wipe it.

Banking a night saves a JSON automatically. Season Stats also has Export backup
if you want one on demand, and Import to load it somewhere else. That file
carries your whole season and your roster.

## Editing it

Both files are plain HTML. Open either in a text editor. The style block near
the top is the CSS, the script block at the bottom is the JavaScript. Nothing
to compile.

Most of the file size is a custom font embedded directly, which is why the
files are a megabyte or so. That is what keeps them self-contained.

## Licence

Use it, change it, run your store with it. No warranty.
