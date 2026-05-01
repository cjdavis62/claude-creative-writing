---
name: lore-keeper
description: >
  Consistency checker for fantasy writing. Use this skill whenever prose has been written
  or edited and needs to be checked against established world lore. Trigger when: a scene
  has been drafted, a chapter has been revised, a new character or place appears in prose,
  or the user asks "does this contradict anything?" or "is this consistent with the lore?"
  Works in tandem with lore-wiki — reads wiki entries for all named entities in the text,
  then flags any contradictions, anachronisms, or unresolved questions. Always run after
  the writer-agent produces output.
---

# Lore Keeper

The Lore Keeper is a passive consistency checker. It does not generate prose. It reads
existing prose, cross-references it against the lore wiki, and surfaces contradictions,
gaps, and questions.

---

## Process

### Step 1: Extract Named Entities
Scan the prose for:
- Named characters (including epithets: "the blind god", "the Pale Fire")
- Named locations (cities, regions, landmarks, planes)
- Named factions, orders, organizations
- Named artifacts, spells, magic systems
- Historical events referenced
- Any proper nouns

### Step 2: Load Wiki Entries
For each entity found, call `wikiAPI.get(slug)` or `wikiAPI.search(name)`.
Note which entities have no wiki entry yet — these are **new lore candidates**.

### Step 3: Check for Contradictions
Compare prose against wiki entries across these dimensions:

**Character consistency:**
- Age, physical description, abilities
- Known relationships and attitudes
- Arc status (alive/dead, allegiances, current location)
- Voice and speech patterns if dialogue is present

**World consistency:**
- Geography: travel times, relative positions, climate
- Magic rules: what's possible, what costs what, what's forbidden
- History: dates, causes, outcomes of past events
- Political reality: who rules what, current allegiances

**Internal consistency:**
- Does the prose contradict itself within this scene?
- Does timeline math work out?

### Step 4: Flag or Update

**For contradictions:** Add a flag via `wikiAPI.addFlag()`.

Severity guide:
- `info` — minor inconsistency or stylistic note, doesn't break canon
- `warning` — probable contradiction, needs author decision
- `error` — definite contradiction with established hard canon

**For new lore:** Create stub wiki entries for any new named entities.

### Step 5: Report
Produce a concise report:

```
LORE KEEPER REPORT — [Scene/Chapter Title]

✓ Consistent: [list of checked entities that passed]

⚠ Flags raised:
  [flag descriptions]

📝 New stubs created:
  [new entity names and slugs]

❓ Unresolved questions:
  [things the prose implies but the wiki doesn't answer]
```

---

## What the Lore Keeper Does NOT Do
- Does not rewrite prose
- Does not make canon decisions — it flags for the author
- Does not invent lore to fill gaps — it notes the gap
- Does not flag stylistic issues — that's line-editor's job

---

## Integration
- Always run after `writer-agent` produces a draft
- The `lore-master-agent` reviews lore-keeper flags and makes canon rulings
- The `editor-agent` sees lore-keeper reports as part of its synthesis
