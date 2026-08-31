# Commander Night — Pod Maker

A single-file web app for running Magic: The Gathering Commander night —
seat pods, run rounds, score placements, track a season/league, and put
live standings up on a TV.

Everything lives in **`index.html`**. No build step, no dependencies, no
server required — it's plain HTML/CSS/JS in one file.

## Run it locally (no GitHub needed)

Just open `index.html` in Chrome or Edge. For a cleaner "app-like" window
with no browser address bar, see `Launch Commander Night.bat` (Windows) —
double-click it, or turn it into a desktop shortcut. Details in `SETUP.md`.

## Host it on GitHub Pages (recommended if multiple people run events)

1. Push this repo to GitHub (or use GitHub's web uploader — drag and drop
   `index.html` into a new repo, no git command line needed).
2. In the repo, go to **Settings → Pages**.
3. Under "Build and deployment", set Source to **Deploy from a branch**,
   branch `main`, folder `/ (root)`. Save.
4. GitHub gives you a URL like `https://yourname.github.io/repo-name/`.
   That's your live app — bookmark it, put it on the store's computer,
   whatever you like.

Once it's hosted this way, it behaves like normal software: settings,
season stats, and mid-night autosave all persist in the browser
(`localStorage`) exactly the way they would for any other website.

## Features

- Sign-in sheet (paste names, or add one at a time)
- Auto-seats pods of 3–4 players; prompts you to pair-or-bye when exactly
  2 or 5 people are left over
- Randomize (avoids repeat pairings where possible) and Repair
- Manual table add/remove/reorder, configurable starting table number
- Round timer, placement scoring (1st–4th plus a shareable 0pt tier),
  attendance points, manual point adjustments with an audit log
- Round History (editable after the fact) and one-click revert of the
  last round
- Two independent boards — **League** and **Freeplay** — switchable by
  tab, so you can run both at the same event without the data mixing
- Season stats that accumulate across nights (for running a multi-week
  league), with export as part of the end-of-night log
- One or more separate **TV display** windows (each with its own
  League/Freeplay tab) for showing standings and tables on a screen —
  works with your browser's built-in **Cast** feature if you want it on
  an actual TV
- A **Store Stats** window for reviewing the season as the organizer
- Theme picker + a slot for a custom font, app name, all saved

## Editing

It's one HTML file — open it in any text/code editor. The `<style>`
block up top is all the CSS, the `<script>` block at the bottom is all
the JS. No build tooling involved.

## License

Use it, modify it, run your store with it. No warranty.
