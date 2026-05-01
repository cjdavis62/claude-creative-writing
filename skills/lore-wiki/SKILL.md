---
name: lore-wiki
description: >
  Manages a persistent, structured wiki for a fantasy writing project. Use this skill
  whenever an agent or the user needs to CREATE, READ, UPDATE, or DELETE lore entries —
  characters, locations, factions, magic systems, history, timelines, or any world detail.
  Trigger when: new lore is introduced in a written scene, a consistency check is needed,
  a character or place needs looking up, or the user asks to record or update world
  information. All agents (Writer, Lore Master, Editor, etc.) must use this skill to
  interact with the wiki rather than inventing or assuming canon.
---

# Lore Wiki Skill

The lore wiki is the single source of truth for a fantasy project. All agents read from
it and write to it. It uses Claude's persistent storage API so data survives across
sessions.

---

## Storage Schema

All data is stored via `window.storage` using namespaced keys.

### Key Structure

```
wiki:meta                           → Project metadata (title, created, last updated)
wiki:entry:{slug}                   → Individual wiki entry (see Entry schema below)
wiki:index:category:{category}      → Array of slugs in that category
wiki:index:all                      → Array of all slugs
wiki:flags                          → Array of consistency flags/contradictions
```

### Entry Schema

```json
{
  "slug": "mira-ashfeld",
  "title": "Mira of Ashfeld",
  "category": "character",
  "tags": ["protagonist", "survivor", "marked"],
  "summary": "One-sentence description for quick reference.",
  "body": "Full markdown article body.",
  "relationships": {
    "mira-ashfeld": "self",
    "the-pale": "mission target",
    "the-blind-god": "encountered"
  },
  "created": "ISO timestamp",
  "updated": "ISO timestamp",
  "source": "Chapter 1 / user-defined / agent-inferred"
}
```

### Categories

- `character` — Named individuals, major and minor
- `location` — Places, regions, cities, landmarks
- `faction` — Organizations, orders, nations, cults
- `magic` — Systems, artifacts, phenomena
- `history` — Past events, eras, wars
- `cosmology` — Gods, planes, metaphysics
- `miscellaneous` — Anything that doesn't fit above

---

## Agent API

When an agent needs to interact with the wiki, it should instruct the artifact to perform
one of these operations. The wiki app exposes a JavaScript API on `window.wikiAPI`:

### Read Operations

```javascript
// Get a single entry by slug
const entry = await window.wikiAPI.get('mira-ashfeld');

// Search entries by title or body text
const results = await window.wikiAPI.search('Pale');

// List all entries in a category
const characters = await window.wikiAPI.listCategory('character');

// Get all flags/contradictions
const flags = await window.wikiAPI.getFlags();
```

### Write Operations

```javascript
// Create or update an entry (upsert)
await window.wikiAPI.upsert({
  slug: 'mira-ashfeld',
  title: 'Mira of Ashfeld',
  category: 'character',
  tags: ['protagonist'],
  summary: 'Survivor of Cael\'s Crossing. Seeks to close the Pale.',
  body: '## Background\n\nMira was eight years old when...',
  relationships: {},
  source: 'Chapter 1'
});

// Add a consistency flag
await window.wikiAPI.addFlag({
  id: 'flag-001',
  severity: 'warning',
  description: 'Mira\'s age at Cael\'s Crossing is stated as 8 in Ch.1 but 9 in Ch.4.',
  entries: ['mira-ashfeld'],
  resolved: false
});

// Resolve a flag
await window.wikiAPI.resolveFlag('flag-001');
```

---

## Agent Responsibilities

### The Writer Agent
After drafting any scene, scan for:
- New named characters → create stub entries
- New locations mentioned → create stub entries
- New lore revealed (magic rules, history, etc.) → create/update entries
- Contradictions with existing wiki entries → add flags

### The Lore Master Agent
- Primary owner of wiki quality
- Before answering any canon question, read relevant entries first
- After any conversation about world details, update entries with confirmed information
- Reviews and resolves flags

### The Lore Keeper Agent
- Passive consistency checker
- When editing prose, reads wiki entries for all named entities
- Adds flags for any contradictions found in the text

---

## Slug Conventions

- Lowercase, hyphenated: `the-blind-god`, `cael-crossing`, `order-of-pale-fire`
- Characters: `firstname-lastname` or `epithet` if unnamed: `the-blind-god`
- Locations: plain name: `ashfeld-marshes`, `caels-crossing`
- Avoid abbreviations; prefer full descriptive slugs

---

## The Wiki App

The wiki is a React artifact stored in the project. It renders as an interactive wiki
the user can browse, and exposes `window.wikiAPI` for agents to call.

Key behaviors:
- All storage calls use `shared: false` (personal, per-user data)
- The app initializes by loading the full index on mount
- Search is client-side across loaded entries
- The app renders entries as formatted markdown
- The sidebar shows categories as a tree
- Flags are shown in a dedicated panel with severity indicators
