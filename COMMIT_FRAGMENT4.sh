#!/usr/bin/env bash
# Run from the writing_projects directory in Git Bash or PowerShell with git
# Commits Fragment 4 (The Wild God) — third draft — plus all pending wiki/decisions work

set -e

cd "$(dirname "$0")"

# Fragment 4
git add writing/fragments/wild_god.md

# Pending from earlier session (Relen wiki, courier geography, writing group session)
git add wiki/characters/relen.md
git add wiki/locations/vanaek.md
git add wiki/locations/solaven.md
git add DECISIONS.md
git add writing/fragments/tavern_vanaek.md
git add writing/fragments/tavern_vanaek_wg_session.md

git commit -m "Fragment 4: The Wild God (third draft) + Fragment 2 v4 + Relen/courier wiki

Fragment 4 — writing/fragments/wild_god.md:
  First draft written and revised to third draft in one session.
  Almost-mythic wild god; sound-god displaced community; POV turns back.
  Deliberately nameless throughout. Revision arc:
  v1: full arc established — compression of deaths, split moment, tinnitus return
  v2: writing group synthesis — cut over-named abstraction; cut backstory
      paragraph; cut summarizing final sentence; trimmed final section;
      added detail about sound god's domain before decline
  v3: line-edit — filter words reduced; landscape section compressed;
      rhythm tightened; 'still unable to stop' → 'still losing itself'
  Canon committed: sound god's domain as resonance-gift; tinnitus as
  permanent proximity-mark; almost-mythic wild god absorbs sound without
  awareness; god does not perceive the group; permanence of mark confirmed
  by return of tinnitus on retreat.

Fragment 2 — writing/fragments/tavern_vanaek.md:
  v4: writing group consensus cuts — inventory paragraph removed;
  'Doing manually what the room was forgetting how to do by itself' removed.

Fragment 2 writing group session — writing/fragments/tavern_vanaek_wg_session.md:
  Full session (Seraphine, Marcus, Yael, Cian, Amara, Pat + synthesis).

Wiki and decisions:
  wiki/characters/relen.md: established as factor (supply chain manager);
    stakes relative to accord failure; Beket courier relationship added
  wiki/locations/vanaek.md: road connections section added
  wiki/locations/solaven.md: road connections section added
  DECISIONS.md: Relen as factor; eastern road geography; courier thread
    as cross-fragment structural connection"

git push origin main

echo "Done."
