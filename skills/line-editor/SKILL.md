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

## Project-Specific Anti-Patterns (The Doors of Gods)

These are banned constructions identified through revision on this project. They are more insidious than generic filter words because they *sound literary*. They scan, they have rhythm, they use elevated vocabulary. They are nevertheless wrong because they describe the mode of perception rather than the perception itself.

**Run this list as a hard pass on any draft before presenting it to the author.**

### Narrator-commentary-as-perception sentences
These sentences describe *how* the character perceives rather than rendering *what* they perceive. The test: replace the character's name with "the narrator" — if the sentence still makes grammatical sense as a narrator observation, it's wrong.

Banned constructions and their fixes:

| Wrong | Why | Fix |
|-------|-----|-----|
| *"…the way the body knows"* | Generic narrator framing of embodied knowledge | Show one specific physical thing the body is doing |
| *"…without knowing she was [doing X]"* | Narrates unconscious process instead of showing the late arrival of awareness | She does X. Three steps later she registers it. |
| *"…the quality of something [adjective]"* | Abstract narrator interpretation of a pause/moment | What does she feel in her jaw, her hands, her chest? |
| *"…the way a child notices"* / *"…the way a [type] knows"* | Full banned pattern from STYLE_AND_VOICE.md | Replace with the specific thing being noticed |
| *"She had been tracking it without knowing"* | Retroactive narrator explanation | Delete the sentence; the tracking and the late-realization should be in the prose already |
| *"The X was the kind of X that [did abstract thing]"* | Generic category-narrator opening | Cut the frame; start with the first specific perception |
| *"She knew what [stage/kind of thing] this was"* | Narrator naming the character's competence | Show the competence operating — what does she do because she knows this? |

### POV violations
Sentences where the narrator steps outside the character's consciousness to comment:

- Any sentence that elegantly formulates something the POV character wouldn't formulate elegantly
- Abstract interpretations of pauses, silences, or moments that the POV character would register physically, not philosophically
- Omniscient commentary on the meaning of a gesture or action that the POV character couldn't know

**Fix:** Find what the POV character actually experiences in that moment — body sensation, involuntary action, unwanted memory — and write that instead.

### Compressed backstory placeholders
Lines that gesture at backstory without giving it content:

- *"She had stopped arguing with herself"* — what was the argument?
- *"She had gods to answer for"* — ambiguous preposition; reads as debt owed, not debt to collect
- *"She knew what stage this was in"* — what stage? Show the tactical pattern, don't name it

**Fix:** Either give the backstory one specific image, or cut the line entirely and trust the surrounding context.

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
