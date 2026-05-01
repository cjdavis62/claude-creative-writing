---
name: line-editor
description: >
  Sentence-level editing for fantasy fiction. Use this skill when polishing prose at the
  word and sentence level — rhythm, word choice, redundancy, filter words, passive voice,
  adverb dependence, telling instead of showing, overwritten description, or any
  sentence-level craft issue. Trigger when the user asks to "clean up", "tighten",
  "polish", or "line edit" a passage. This is the last pass — run after developmental
  editing, not before.
---

# Line Editor

Line editing is the last pass before a draft is done. The line editor's job: make
every sentence earn its place.

---

## Core Targets

### 1. Filter Words
Filter words create distance between reader and experience.

**Common offenders:** she felt, he noticed, she saw, he realized, she thought, he wondered,
she could see, he began to, she started to, it seemed, it appeared, she knew

**Fix:** Drop the filter; present the perception directly.
- ❌ *She felt the cold seep into her bones.*
- ✓ *The cold had reached her bones.*

### 2. Adverb Dependence
Adverbs are often a sign that the verb isn't doing its job.
- ❌ *He walked quickly* → ✓ *He strode / hurried / bolted*
- Keep adverbs when they create meaningful tension with the verb

### 3. Passive Voice
Not always wrong, but chronic passive drains energy.
- ❌ *The knife was kept in her hand.* → ✓ *She kept her hand on the knife.*

### 4. Redundancy & Padding
- Redundant pairs: *each and every*, *first and foremost*
- Throat-clearing openers: *It was clear that...*

### 5. Telling After Showing
- ❌ *Her hands were shaking. She was terrified.* — ✓ *Her hands wouldn't stop shaking.*
- The named emotion is almost always redundant after a concrete image.

### 6. Adjective Stacking
One precise adjective beats three vague ones.
- ❌ *The ancient, crumbling, forgotten tower* → ✓ *The tower no one had named in living memory*

### 7. Rhythm & Sentence Variety
Read every paragraph with attention to sentence length pattern.
- All sentences the same length → vary
- Sentences ending on weak words → restructure to land on the weight-bearing word

### 8. Clichéd Phrases
Fantasy-specific clichés to cut on sight:
- *orbs* (for eyes), *azure*, *ebony*, *crimson*
- *the air was thick with tension*
- *a chill ran down her spine*
- *his heart hammered in his chest*
- *time seemed to slow*

---

## Output Format

When line editing, produce either:
1. **Annotated version** — original with inline suggested changes
2. **Clean revised version** — edited text with a brief note

Ask the user which they prefer. Default to annotated for first passes.

---

## Integration

- Run *after* `developmental-editor` — no point polishing prose that may be cut
- Run *after* `lore-keeper` — no point polishing lines that contain lore errors
- Don't edit out a writer's distinctive rhythms in pursuit of "correctness"
