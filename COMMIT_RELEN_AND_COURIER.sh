#!/usr/bin/env bash
# Run from the writing_projects directory in Git Bash or PowerShell with git
# Commits the Relen wiki update, courier geography decisions, and writing group session

set -e

cd "$(dirname "$0")"

git add wiki/characters/relen.md
git add wiki/locations/vanaek.md
git add wiki/locations/solaven.md
git add DECISIONS.md
git add writing/fragments/tavern_vanaek_wg_session.md

git commit -m "Fragment 2 writing group session + Relen/courier wiki update

- writing/fragments/tavern_vanaek_wg_session.md: full writing group session
  (Seraphine, Marcus, Yael, Cian, Amara, Pat + synthesis) on third draft of
  The Vaelen at the Third Bell. Consensus: cut inventory paragraph, cut
  'manually' gloss. Key open question: Relen's relationship to what she's
  witnessing. Key split: interior stakes vs. register restraint.

- wiki/characters/relen.md: established Relen as factor (supply chain manager,
  not independent trader); added stakes (her livelihood is in the path of the
  accord failure); established courier relationship with Beket; named the
  eastern road as the Vanaek-Solaven connection.

- wiki/locations/vanaek.md: added road connections section (eastern road to
  Solaven region; Beket as established courier; commercial routes as word-of-
  mouth infrastructure for readers of decline).

- wiki/locations/solaven.md: added road connections section (same road network,
  same courier infrastructure; Tavoen's presence consistent with how readers
  identify observation sites).

- DECISIONS.md: three new entries — Relen as factor, eastern road geography,
  courier thread as cross-fragment structural connection."

git push origin main

echo "Done."
