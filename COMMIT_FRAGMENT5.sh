#!/usr/bin/env bash
# Run from the writing_projects directory in Git Bash or PowerShell with git
# Commits Fragment 5 (The City After) — fourth draft — plus writing group session and DECISIONS update

set -e

cd "$(dirname "$0")"

git add writing/fragments/city_after.md
git add writing/fragments/city_after_wg_session.md
git add DECISIONS.md

git commit -m "Fragment 5: The City After (fourth draft) + writing group + decisions

Fragment 5 — writing/fragments/city_after.md:
  First draft written and revised to fourth draft in one session.
  Historian returning to childhood city; studies frozen district from
  the boundary rope; three first-hand accounts interspersed with
  present-tense observation; discovers preservation god's stasis
  still running two years after god entered stasis.
  Deliberately nameless throughout. Revision arc:
  v1: full arc established — three accounts; stasis-still-running
      discovery; ending on frightening implication about invisible
      divine maintenance
  v2: writing group synthesis — compressed opening; cut 'adjacent to
      grief'; third-account exit beat improved; tightened ending anaphora;
      'the knowing changed' for second 'understood differently'
  v3: line-edit pass — filter words reduced; arriving-god domain sentence
      cut; rhythm check throughout
  v4: writing group session (2026-05-16) — cut 'Two years without the
      ordinary work of air on fiber' (over-explains image); cut property
      law reference (wrong register); 'stopped mid-season, the color
      unfaded' (cut analysis after image); 'depleted past waking'
      (tightened); framework beat compressed to two sentences; synthesis
      paragraph cut entirely (accounts do the work); second 'She thought
      about' compressed; grief ending added — historian fails to write
      anything down; frame cracks through failure to document

Writing group session — writing/fragments/city_after_wg_session.md:
  Full session (Seraphine, Marcus, Yael, Cian, Amara, Pat + synthesis).
  Key split: cut synthesis paragraph (consensus) vs. grief register
  (Amara flag — resolved by adding the ending).
  Best lines protected: 'the way a door looks when it is about to open';
  'The wood of the cart is, she corrected herself: present tense';
  'She had stopped there, both times'; 'The cart had not rotted';
  'simply the nature of things'; 'She did not write anything down'.

DECISIONS.md:
  2026-05-16: Conscious vs. subconscious divine power — gods have both
  deliberate domain expression and ambient/subconscious domain effects
  operating without the god's active awareness; the preservation god held
  back the volcano as an ambient effect it did not know about; declining
  gods may be silently failing to maintain things nobody has attributed
  to divine intervention; what mortals call natural facts may include
  invisible divine maintenance"

git push origin main

echo "Done."
