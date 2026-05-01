# Project Plan — Building Stories in This World

*A reference document for turning the existing brainstorms, agents, and skills into actual finished stories. This is a living plan; revise it as the work clarifies.*

---

## 1. Where We Are Right Now

**Project identity (as settled in Section 7):**
- **Working title:** *The Doors of Gods*
- **Author byline:** **C. Davis and A. Claude** — a dual byline that's clear about the human/AI collaboration without making a big deal of it
- **Implied reader:** a fantasy reader at home with *Frieren: Beyond Journey's End* and *Tower of God* — comfortable with slow-burn pacing and interiority, willing to sit with melancholy, with the prose taking the time it needs and pacing slightly tighter than *Tower of God*
- **First deliverable:** a fragment dossier (Section 3.4 / Phase 2), paired with a running log of questions that emerge from the writing process

A snapshot of the repo as of this writing, so the plan is grounded in what already exists rather than starting from zero.

**Substantial assets already in place:**
- `brainstorm/story_outline_v2.md` — a rich working document covering the world, the protagonist (the Mortal), the dying deity, the last god, themes, structure, opening scene, and key moments. Most of the high-level creative shape is *already done*.
- `brainstorm/god_society_dynamics_v3_1.md` — a deep companion piece on emergence, the arc of divine power, decline, the four society models, sign-reading and the readers of decline, divine diplomacy, and wild gods. This is the substrate for almost any scene set in this world.
- `agents/` — ten agent skills (orchestrator, writer, lore-keeper, lore-master, story-architect, pivotal-scene-designer, alpha-reader, beta-reader, critic, editor). A full multi-agent writing pipeline is already specified.
- `skills/` — six craft skills (fantasy-writer, worldbuilding, lore-wiki, lore-keeper, developmental-editor, line-editor).

**Empty containers waiting to be filled:**
- `wiki/` — no entries yet. The brainstorm documents contain the canon; nothing has been broken out into discrete entities.
- `writing/scenes/`, `writing/chapters/`, `writing/fragments/` — no prose yet. Not a single draft exists.
- No `README.md`, no style guide, no decision log, no first-deliverable scope decision.

**The honest gap:** the *creative thinking* is far ahead of the *operational machinery*. The brainstorm is rich enough to write from. The agents and skills exist as definitions but have never been exercised on real prose. The wiki is empty. There has been no first scene.

The plan below is shaped around closing that gap.

---

## 2. Reframing the Original Six Areas

Your original six areas are sound. Below each, I've expanded what falls inside it, flagged what the existing brainstorm has already answered (so we don't redo work), and noted the next concrete move.

### 2.1 Understanding How to Make a Good Story

This is craft research, and it is genuinely foundational, but it's also the area most likely to consume infinite time without producing prose. Treat it as a *reference shelf you build alongside the work*, not a prerequisite.

What goes into it: voice, POV control, scene construction, dialogue, pacing, prose rhythm at the sentence level, the relationship between scene and summary, how to handle interiority, how flashbacks work without killing momentum, how dual-POV structures stay legible, what makes a "scene with teeth" (your phrase below) actually work.

How other writers approach this: there is a small set of writers and craft books that map well to this project's particular ambitions — Ursula K. Le Guin (*Steering the Craft*, the prose discipline of *The Tombs of Atuan*), N. K. Jemisin's *Broken Earth* trilogy (dual-POV, second-person, divine-decline themes), Ted Chiang (idea-as-emotion), Madeline Miller (*Circe* — gods made intimate), George Saunders' *A Swim in a Pond in the Rain* (close reading as craft training). The `skills/fantasy-writer/SKILL.md` file already encodes some of this; expand it as questions emerge.

**Next move:** rather than studying craft in the abstract, write Scene 1 (the tree). Then read it back against one specific craft framework (e.g. "is the POV distance consistent?"). Let craft questions surface from real drafts, not from anticipatory reading.

### 2.2 Building Out the Background Universe

This is largely **already done at the brainstorm level** — the two brainstorm documents are dense and internally consistent. The work that remains is *structural*, not creative:

- **Translate brainstorm prose into wiki entries.** Right now the canon lives in two long markdown files. To be queryable by the lore agents (and to be readable by collaborators), it needs to be split into discrete entries — one per character, location, faction, concept, society type. The `skills/lore-wiki/SKILL.md` file describes the conventions.
- **Identify the rules that need to be *operational*** (i.e. the ones the writer agent will need to reach for mid-scene) versus *atmospheric* (i.e. the ones that just shape the texture). The gateway mechanic and the drain are operational. The four society models are mostly atmospheric until a society is actually visited.
- **Decide what to leave deliberately undefined.** A world feels lived-in partly because the author didn't answer everything. The brainstorm's `## ❓ Open Questions` sections should not all be closed before drafting — some of them are productive precisely because they're open.

**What makes this world grounded in its core systems:** the gateway/drain mechanic is the spine. Every other element — the decline, the four society models, the wild gods, the readers of decline, the diplomatic collapse — is a downstream consequence of that one mechanism. That tight causal coupling is the world's biggest strength. Protect it.

**Next move:** seed the wiki with the ten or so most central entries (the Mortal, the Dying Deity, the Last God, the Tree, gateways, the divine plane, emergence, decline, the readers of decline, society models). Stub-and-expand, not write-everything-now.

### 2.3 Creating Interesting Characters in the Main Storyline

The brainstorm has **the protagonist (the Mortal) and the dying deity well-developed at the want/need/wound level.** What's missing is:

- **The supporting cast** — the brainstorm's table of "TBD" supporting characters (a maddened god, a gateway-builder, an anti-deity figure, a god who recognized the mechanism) is unstaffed. Each of these is a scene engine.
- **Voice differentiation between the two POVs.** The brainstorm gestures at this ("the deity's flashback chapters should feel like a different *genre* of prose — more wondering, more attentive to texture, almost essayistic at moments"). Establishing that contrast in actual prose is one of the highest-leverage early experiments.
- **A name strategy.** The brainstorm holds names until the linguistic logic clarifies. That's wise, but it can also become an excuse not to write. Provisional names are fine — they can be revised later.

**Foils, friends, foes — the artistic conversation:** the dying deity is the protagonist's foil at the perception level (he sees too much beauty, she sees too little). The maddened god is her foil at the trajectory level (what she could become without the quest's anchoring). The anti-deity figure is her foil at the conviction level (someone whose disillusionment has hardened into ideology rather than survival). These pairings should be *deliberate*, not incidental — every supporting character should illuminate something about the protagonist that monologue can't.

**Next move:** write character sheets (wiki entries) for the four "TBD" supporting characters. Even rough ones. Each should answer: what does this character force the protagonist to confront?

### 2.4 Creating an Antagonist

This is the area where I most want to push back on the framing. **This is not a good vs. bad world**, and treating it as one would betray what the brainstorm is reaching for.

The "antagonist" in this story is structural, not personal:
- The **imitation gateways** are the mechanical antagonist — and they were built out of love.
- The **collapsing divine plane** is the cosmic antagonist — and it has no intentions, no face, no agenda.
- **Misunderstanding itself** is the thematic antagonist — the dying deity's almost-right conclusion, the readers of decline who are right about the diagnosis but accelerate the harm, the anti-deity movements who are right about the danger but wrong about the mechanism.

The closest thing to a personal antagonist is the **anti-deity figure** sketched in the brainstorm: someone who is *right about the present danger* and *wrong about the cause*, whose certainty is a mirror to the protagonist's certainty. That's not a villain. That's a foil with teeth.

What hinders the main characters: their own perception (her too-narrow, his too-luminous), the slow drain that none of them can name, the social structures (priestly classes, sign-readers, anti-deity movements) that have ossified around incomplete understandings, and time — the divine plane is collapsing on a clock no one is fully aware of.

**Next move:** rename this section in your mental model from "antagonist" to "sources of resistance." Then map them: what's resisting the protagonist at the level of (1) her own psychology, (2) other characters, (3) social structures, (4) the world itself. The story already has good answers at every level.

### 2.5 Generating an Interesting Story

You've asked the right questions: what gives a story "teeth" and what gives a scene "staying power." A few candidate answers, specific to this project:

**What gives a story teeth:**
- Stakes that cannot be undone. The protagonist completes the quest; the divine plane is gone. There is no version of the ending where the world goes back.
- A central moral question the story refuses to fully answer. ("Is the loss of the divine plane a tragedy, a correction, or something else?" — already in the brainstorm.)
- Character cost. The protagonist arrives at the appointed place and *recognizes the drain in her own body*. That is a kind of self-knowledge that hurts.
- The reader knowing something the characters don't, and dreading the moment they find out (the gateway-mark, the directional misreading).

**What gives a scene staying power:**
- A specific concrete image that does emotional work (the unremarkable tree, the tearing gate, animals behaving strangely near gateways).
- A line of dialogue that reframes everything (the last god's "I am not the last god. I am the last thing that was a god.")
- A moment of irreversible recognition.
- Restraint — the scene that stops one beat earlier than expected.

**Next move:** the most concrete way to generate interesting *story* is to write the five spine scenes the brainstorm already identifies (the tree, the deity noticing the gateways, the maddened god, the deity's conclusion, the last god's emergence). Don't write them in order. Write the one you can see most clearly first, get it on the page, then let what you learned change the others.

### 2.6 Keeping a Wiki Up for the Story and Background

Three sub-questions, and they have related answers:

**How can we keep data available for the agents?** The `skills/lore-wiki/SKILL.md` file already specifies a markdown-file-per-entity structure that the lore-keeper and lore-master agents can search and update. The conventions are in place; they just haven't been used. The wiki should live in `wiki/` as flat markdown, organized by category subfolders (`wiki/characters/`, `wiki/locations/`, `wiki/concepts/`, `wiki/societies/`, `wiki/timeline/`).

**Like a RAG?** Functionally, yes — but for this scale (maybe a few hundred entries at most over the life of the project) you do not need an actual vector store. The lore agents can do filename-based and grep-based search across `wiki/` and that will be sufficient. If the project ever grows large enough to need real retrieval, the markdown files convert trivially. Don't over-engineer.

**Can we make this observable and searchable by humans?** Yes, and this is where the "git + wiki + share with others" goal in your project instructions becomes concrete. Options, ordered by effort:

1. **Plain markdown in git** (zero effort) — anyone with repo access can browse on GitHub/GitLab, which renders markdown nicely.
2. **GitHub Pages with a static site generator** (a few hours) — Jekyll, Hugo, or MkDocs can turn `wiki/` into a browseable site with search. MkDocs Material is probably the best fit here.
3. **An Obsidian or similar vault** (zero additional effort if the editor of choice supports it) — markdown files plus links produces a navigable graph view.

**Next move:** start writing wiki entries *as scenes are drafted*, per the writer-agent's existing protocol. Don't pre-populate the wiki exhaustively. The wiki should be the residue of writing, not a separate project.

---

## 3. What's Missing From the Original Structure

Your six-area structure is comprehensive at the **content** level. What it doesn't yet name is the **process and meta** level. The following pieces are the ones I'd add.

### 3.1 A Voice and Style Guide

Distinct from "good story" theory. This is the document that captures *how this story sounds*: sentence-length range, POV distance for each thread, vocabulary register, what kinds of figurative language are in-bounds vs. off-key, how interiority is rendered, how silence/whitespace is used. The brainstorm gestures at this (the deity's chapters should feel "almost essayistic"); a style guide makes it operational.

A practical first version is short — one page per POV, with two or three sample sentences in each register. It also serves as a reference the writer-agent can be pointed at when drafting.

### 3.2 A Working Order of Operations

Right now the agents are defined but there's no concrete answer to "I have an hour — what do I actually do?" A working pipeline for a single scene might be:

1. Story-architect agent reviews the spine, picks the next scene to draft, produces a Scene Proposal.
2. Lore-master agent assembles the relevant wiki entries (or notes the gaps).
3. Writer agent drafts the scene, marking lore gaps as it goes.
4. Lore-keeper agent runs consistency check.
5. Alpha-reader and critic agents run in parallel.
6. Editor agent synthesizes feedback into a revision plan.
7. Author (you) reads the synthesis, decides what to revise.
8. Writer agent revises.
9. Repeat 4–8 until the scene clears the quality bar.
10. Wiki entries updated; scene committed to git.

This is roughly what the orchestrator agent already specifies. The missing piece is **doing it once** — running this pipeline end-to-end on a real scene to discover where it actually breaks.

### 3.3 A Definition of Done

How do we know when a scene is finished? Without an explicit answer, the iteration loop has no exit. A workable first version of "done":

- The scene accomplishes its stated structural job (defined in the Scene Proposal).
- It contains no flagged lore inconsistencies.
- The editor agent's revision plan is empty or only stylistic.
- It passes a reading by you with no immediate dissatisfaction.

The bar for short fragments and experiments should be looser. The bar for the spine scenes should be the highest.

### 3.4 A Scope Decision: What Are We Actually Building?

The project instructions mention "short stories, novellas, larger novels (if tokens or claude abilities allow) or just random snippets." That's the right open posture for the project as a whole, but the *first concrete deliverable* benefits from being narrower. Candidates:

- **A single short story (5–10K words)** set somewhere in this world but adjacent to the main plot. Lower stakes, faster turnaround, and the wiki/agent machinery gets exercised on a complete piece.
- **The opening scene of the main novel (1–3K words)**, polished to publishable quality. Highest leverage for proving the voice and the agent pipeline can produce something good.
- **A dossier of fragments (~5 pieces, 500–1500 words each)** — a tavern in a council society, a reader of decline at work, a wild god seen from a distance, an emergence as witnessed by a child, a city marked by a failed divine visit. These do double duty: they exercise the world *and* they populate the wiki with concrete texture.

**Confirmed as the first deliverable.** The fragment dossier defers commitment, builds craft and wiki simultaneously, and surfaces voice questions in low-stakes contexts. Per your direction, the dossier should be paired with a running log — a `QUESTIONS.md` at the project root or inside `writing/` — that captures questions arising during drafting (voice, world, character, craft, posture). The questions log is a deliverable in its own right, not a side artifact; reviewing it together is one of the natural check-in moments at the end of Phase 2.

### 3.5 A Git and Versioning Workflow for Creative Writing

Code git workflows don't quite fit creative writing. A reasonable adaptation:

- **`main` branch** holds canon — the version of every entry and scene we currently consider authoritative.
- **Feature branches per scene or per significant brainstorm** — `scene/the-tree`, `worldbuild/funeral-rites-of-the-eastern-council`, etc. Merge when the scene clears the quality bar.
- **Commit messages should be human-readable as a project log** — "First draft of the tree scene. POV distance is too far in the second half, flagged for revision." Future-you will read these.
- **Keep prior versions of important scenes**, either as separate files (`writing/scenes/the-tree-v1.md`, `the-tree-v2.md`) or via git history. Revisions in fiction are not strictly improvements; sometimes you need to compare.
- **Tag milestones** — `v0.1-first-fragment`, `v0.5-spine-complete`, `v1.0-first-draft-of-novella`.

### 3.6 A Decision Log

A separate file (`DECISIONS.md` or similar) where significant canon decisions get recorded with reasoning. "We decided the protagonist's society is absent-god-model rather than rejection-model because it produces a more interesting disillusionment." This prevents re-litigating settled questions and gives future collaborators (and agents) the *why* behind canon, not just the canon.

### 3.7 An Honest Catalog of Failure Modes

LLM-assisted fiction has predictable pitfalls. Naming them up front lets us watch for them:

- **Generic fantasy register.** Default Claude prose tends toward the high-fantasy general — capes and runes and "ancient evil." This world is specifically *not* that. The fantasy-writer skill helps; vigilance is required.
- **Over-explanation.** The brainstorm is dense with mechanism (the gateway drain, the readers of decline). The temptation to *explain* in prose is strong. Restraint — withholding more than feels comfortable — is probably the single biggest craft skill this project requires.
- **Loss of the protagonist's voice.** Her unillusioned narration is the spine of Thread A. If a draft starts sounding warm and observational, the voice has slipped.
- **Symmetry without consequence.** The dual-POV structure invites neat parallels. The brainstorm's strength is that the two POVs are *asymmetric* — they're not mirror images. Resist tidying.
- **Premature naming.** The brainstorm is wise about this. Don't let the agents invent culturally specific names without the linguistic logic in place.

### 3.8 Reader / Audience Posture

**Settled:** the implied reader is at home in contemplative serial fantasy — the *Frieren: Beyond Journey's End* / *Tower of God* register. Slow when the prose earns it, comfortable with melancholy and unresolved threads, willing to learn the world by walking through it. Pacing should be slightly tighter than *Tower of God*; the work is allowed to take the time it needs but should not drift.

**What this commits the prose to:**
- **Trust the reader.** Don't gloss what they can infer from context. *Frieren* readers do not need explanations of why a moment is sad.
- **Interiority is welcome.** Long character thought, slow scenes of attention, are features rather than bloat — but every scene must justify its length.
- **Worldbuilding through implication and texture.** The reader learns the world the way the protagonist moves through it. Avoid exposition dumps; trust accumulation.
- **No glossary, no apparatus.** A *Frieren*-style reader is not consulting a chart. If a term needs a definition, the prose should provide it through use.
- **Melancholy is on-brand.** Resolution is not promised. The story can leave things permanently sad; the reader is here for that.
- **Episodic legibility within a long arc.** *Tower of God* in particular trains readers to hold a long structure made of strongly-shaped local pieces. Each scene should be satisfying on its own beat while serving the larger architecture.

### 3.9 The Author/Agent Seam

The agents can do a great deal. They cannot do the thing that makes the work yours: **decide what matters**. The plan should explicitly name which calls are author calls only:

- What the story is *about* (theme).
- Whether a draft has the right *feel*.
- Which open questions stay open.
- When a scene is done.
- Which alternate version of a scene is the real one.

Everything else — research, drafting, consistency-checking, line edits, scene proposals, world-detail invention — is fair game for the agents. Naming this seam prevents the work from drifting into "Claude wrote a novel and I approved it," which is not what you're building. Section 4 below makes this concrete: it names the specific places where I will always bring questions to you rather than deciding alone.

---

## 4. Where You Stay Engaged

The agents and skills can carry a great deal of operational load. There is a smaller set of places where the work *depends* on your direct ongoing engagement — places where my defaults will produce something competent but wrong, or where the meaning of the project lives and only you can adjudicate. This section names those places explicitly, names the check-in cadence, and stakes out the thematic, sociological, religious, and values commitments that should govern the work.

This section is the answer to: "where should I, the author, never let this drift on autopilot?"

### 4.1 The Thematic Anchors (Author-Owned, Always)

The brainstorm already articulates the central theme — *trust in the goodness of others, with incomplete information* — and several secondary themes (reverence as unintentional destruction, perception as wound, what we do when things go wrong in ways we cannot understand). These are not settled facts. They are the questions the story is asking, and the answers it implies will shift as the prose develops.

I will bring you a thematic check-in **at the end of each phase of the roadmap** with a short version of: "here is what the prose now seems to be saying the story is *about* — does this match what you want it to be saying?" If a draft starts implying something thematically that you didn't intend, I want you to catch it before it ossifies into the work.

Specific thematic questions I will not decide alone:
- Whether the story ultimately treats the loss of the divine plane as tragedy, correction, or something it refuses to categorize.
- Whether the protagonist's recognition of her own gateway-mark is presented as redemption, as further loss, or as something more ambiguous.
- Whether the dying deity's wrongness is rendered as failure or as the most honorable thing he could have done given his perception.
- Whether the story ends with any gesture toward what comes after — or refuses that comfort entirely.

These four questions are load-bearing. I will surface them at the appropriate phase, not all at once.

### 4.2 Sociological and Psychological Lenses

This world is *doing real sociological work* even though it never uses the vocabulary. The brainstorm's depiction of declining-god societies maps closely to actual patterns — communities turning inward and rigid under existential threat, scapegoating displacing analysis, knowledge networks (the readers of decline) operating in protective secrecy because their accurate diagnosis is socially destabilizing. Naming the lenses we want to engage helps prevent the prose from defaulting to fantasy-cliché versions of those dynamics.

**Lenses I want to engage with seriously:**

- **Crisis sociology.** How communities respond when the structures that organized them begin to fail. The brainstorm's four society models are a strong start; the prose should render the *texture* of failing institutions without becoming a treatise on them. I will check in on whether specific society scenes are doing this work or sliding into generic "decadent kingdom" territory.
- **The sociology of suppressed knowledge.** The readers of decline are persecuted for accurate diagnosis. This rhymes with many real-world patterns (whistleblowers, dissident scientists, queer underground networks before legal protection, disability advocates whose accuracy threatens institutional comfort). The fictional treatment should respect those real rhymes without flattening them into allegory.
- **Trauma and perception.** The protagonist's gateway-mark is, mechanically, an environmental injury that has shaped her cognition since before she could consent. Her unillusioned narration is *adaptive*, not characterological. The story's claim that her perception is both wound *and* uniquely-capable-sight is the central psychological insight, and it needs to be earned in the prose, not asserted.
- **Grief, individual and collective.** The dominant emotion of the world is grief without a face to grieve. This is a specific and currently-resonant emotional register and one of the things this world is genuinely good for telling stories about.
- **Authority and legitimacy under failure.** The priestly classes are not villains — they are people whose entire identity and livelihood depends on a fiction continuing to hold. Render with sympathy.

**Lenses I want to be careful with:**

- **"Madness" and the maddened gods.** The brainstorm uses "madness" for divine decline, and that's a load-bearing concept. Outside the divine register it intersects directly with mental illness, and the framing matters. We should treat divine madness as a *specific cosmological condition* rather than a metaphor for human mental illness — and avoid prose patterns that read as "person acting strangely is dangerous and other." I will flag specific scenes where this risk is live.
- **Disability framing more broadly.** The "drained" mortals near gateways have something done to them by their environment — this is closer to environmental injury or chronic illness than to inherent disability. The prose should not slide into language that treats them as lesser. The protagonist herself is one of these people; her dignity is foundational.
- **The protagonist's history of personal loss.** The brainstorm leaves her specific wound vague. When we settle it, we should avoid sexual violence as the defining backstory injury — both because it is over-relied-on as the standard wound for women in fantasy, and because it would shift the story's meaning in ways that work against its actual themes. There are many other shaped wounds that produce her unillusioned worldview.

### 4.3 Religious Themes — A Posture, Not a Position

This is fundamentally a story about religion. The gateways were built out of devotion. The decline is a religious crisis. The dying deity is a believer in the world's beauty. The anti-deity movements have legitimate grievances. Every society in the brainstorm is organized around its relationship to divinity. Getting the religious posture right matters more than almost any other craft decision.

The posture I am working from, subject to your correction:

- The story is **not anti-religious.** A flat critique of religion would betray the brainstorm's central irony — that reverence itself caused the catastrophe. Reverence is *real* in this world, and *good*, and *destructive*, all at once. Reducing it to any one of those would collapse the story.
- The story is **not reverent toward religion either.** The priestly classes ossify, sign-readers become political instruments, devotion becomes habit, orthodoxy hardens against accurate diagnosis. These are real failures and the story should not pull punches.
- The story takes religion **seriously as a human phenomenon** — what it does for grief, meaning, community, the felt experience of the world, the shape of moral life. The dying deity's perception of the world is genuinely beautiful even as it is also blind. The priestly characters should not be cartoon hypocrites. The most devout characters should not be the most foolish.
- The story is **agnostic about whether to grieve the gods.** Different characters will grieve differently; the prose should not adjudicate which response is correct. The protagonist's bitterness and the dying deity's serenity are both true.

I will bring you religious-posture questions whenever a scene risks tipping into either dismissive or reverent territory. Concretely: the first time we render a temple, the first time we render a ritual, the first scene with a sympathetic priest, the first scene with a reasonable anti-deity figure, the first time a character prays — I will pause and check.

### 4.4 Values and Inclusivity: Queer-Friendly and Progressively Minded

This is a hard commitment. Naming it explicitly means it gets honored across every scene, every supporting character, every world-detail invention — not just the ones where I happen to remember.

**Concrete commitments I will hold the prose and the agents to:**

- **Queerness as part of the world's texture, not as Issue.** Same-sex relationships, queer characters, non-binary characters, trans characters appear without being narratively flagged as remarkable. Their queerness is not their plot function. They have lives, motives, and arcs that have nothing to do with their queerness, and arcs that engage their queerness when relevant — the same as anyone.
- **Every character has agency and exists on their own terms.** No character — and especially no woman character — exists primarily to support, motivate, validate, or reflect another character. Every named figure has wants, fears, contradictions, and trajectories of their own that do not depend on the protagonist or any other figure being present. The work passes the Bechdel test as a baseline floor, but the underlying commitment is broader: *characters are not narrative devices*. If a supporting character can be summarized as "helps the protagonist by [thing]" and nothing else, that character is not finished. This applies to gods as much as mortals — a deity whose entire characterization is "the protagonist's mentor" is the same problem in a different register. When the writer-agent introduces a new character, the Story Architect or Lore-Master should be able to answer, in one or two sentences, what that character would be doing if the protagonist had never appeared.
- **Gods and gender — the brainstorm's open question is a gift here.** The brainstorm asks: "Did gods choose how to present upon emergence, or did the crossing determine it?" The most generative answer is *neither cleanly* — gods arrive with relationships to gender that vary, that are not always legible to mortal categories, that some gods choose and some do not, that some shift over time. This makes gender in the divine register inherently more open than in the mortal register, which is a specific and beautiful piece of worldbuilding to lean into. I will bring you specific god designs as they come up.
- **No bury-your-gays.** Queer characters are not disproportionately killed, traumatized, or punished by the plot.
- **Avoid sexual violence as character backstory shorthand**, especially for women and queer characters. (Also covered under 4.2.) When violence is in the story, it serves the story, not gendered tropes about whose suffering matters.
- **No chosen-one logic in its reactionary form.** The protagonist is "chosen" in the brainstorm — but the brainstorm is careful to make the choosing partially mistaken (the dying deity misreads her mark as clarity rather than evidence). That irony defuses the chosen-one trope's worst political baggage. Hold to it.
- **The anti-deity movements are not "wokes who went too far."** The brainstorm has them right about the danger and wrong about the mechanism. They have legitimate grievances rooted in real harm. Their critique is incomplete, not false. Render with the same complexity as the priestly classes.
- **No racial coding via fantasy aesthetic.** Cultures should not be vaguely-China or vaguely-Aztec or vaguely-medieval-Europe with fantasy paint. Each culture should be specific to *this world* — its geography, its god, its history. The brainstorm's grounding in the gateway mechanic gives every culture a non-Earth-derived foundation; use it.
- **Class is a real force, not flavor.** The brainstorm already attends to who bears the cost of decline unevenly. Keep it. The protagonist's precarity is structural.
- **Disability and chronic condition handled with care.** See 4.2 on the gateway-marked.
- **Sexuality on the page as the prose calls for.** No prudish defaulting; no gratuitous defaulting. Same standard whatever the orientation involved.

I will surface values flags whenever I am about to invent a character, name a culture, design a god, or render a society. If something feels off in a draft along any of these lines, I want you to flag it without hedging — and I want me to be alert to it without being asked.

### 4.5 The Check-In Cadence

How often I bring things to you, and what kinds of things.

**Default posture (Phases 0 through 2): aggressive.** Per your direction, lean toward more check-ins than fewer in the early phases — better to overcheck while you're calibrating what the agents do well and what needs your hand. You will signal when it becomes too much, or when you've gained confidence in a particular kind of decision and want me to make it without asking. After Phase 2 we'll explicitly recalibrate.

**Voice questions, always — and proactively.** You've told me you don't have a long-running prose voice for the agents to mimic, and that voice will be built up *through* the drafting process. So whenever the writer-agent is making a voice-shaping choice that isn't obvious — sentence rhythm, distance from POV, register, how interiority is rendered, how figurative language is handled, how dialogue is tagged, how silence and whitespace function — I will surface it as an explicit question rather than just deciding. Examples: *"Should the deity's interiority sound more lyrical or more analytic here?" "Do we want more or less sensory detail in scenes where the protagonist is on the road?" "How comfortable are we with longer sentences in moments of grief?"* Over time, your answers accumulate into a voice document the agents can reference, and the frequency of these questions tapers naturally.

**Per scene (low-overhead, in-line):**
- Lore gaps that require a creative ruling, not a lookup.
- A scene's tonal register feels off and the editor agent's synthesis can't resolve it.
- A choice I'm about to make that touches the values commitments in 4.4.
- Voice-shaping choices, per the paragraph above.

**Per phase (moderate, deliberate):**
- A short check-in at phase start: "here's what we're about to do, and the open questions inside it — anything you want to weigh in on before I begin?"
- A short check-in at phase end: "here's what we did, here's what the work seems to be saying thematically, here's what surprised me — does this match what you want?"

**Per project milestone (heavier, slower):**
- Major thematic questions from 4.1.
- Religious-posture questions from 4.3.
- Scope decisions, name decisions, structural decisions, ending decisions.

**Anytime, on request:**
- "Show me what the agents have been doing."
- "Pause and let me look at the wiki."
- "I want to talk about the protagonist before you write more of her."

**Recalibration is expected, not exceptional.** Default heavy in Phases 0–2; tell me when to dial down on specific kinds of decisions; revisit explicitly at the end of Phase 2. If at any point the cadence feels wrong in either direction, name it.

---

## 5. A Phased Roadmap

A suggested ordering. None of these phases needs to be "finished" before the next begins; they layer. Each phase has explicit check-in points — see Section 4.5 on the check-in cadence.

**Phase 0 — Foundation (a few sessions)**
- Write a one-page voice and style guide (Section 3.1).
- Make the scope decision for the first deliverable (Section 3.4 — recommend the fragment dossier).
- Seed the wiki with ~10 core entries from the existing brainstorm material (Section 2.2).
- Add a `DECISIONS.md` and a short `README.md` to the repo.
- *Check in with you about:* the scope decision (which first deliverable?), the implied reader, the working title, anything from Section 7's open questions you want to settle now.

**Phase 1 — First Prose (one or two scenes worth of work)**
- Run the full agent pipeline on one short fragment, end to end. Don't optimize; just exercise it.
- Fix whatever in the pipeline turned out to be broken or fiddly.
- Commit the fragment, the resulting wiki updates, and a note on what the pipeline experience taught you.
- *Check in with you about:* the fragment's voice (does this sound right?), the first values-flag if one came up in drafting, whether the agent pipeline is producing work you actually like or just work that's competent.

**Phase 2 — The Fragment Dossier**
- Draft and polish the four to six fragments outlined in Section 3.4.
- Each fragment expands the wiki and exercises a different muscle (different POV register, different society type, different scene structure).
- By the end, you have a small portfolio, a populated wiki, and a clear sense of which voices and approaches are working.
- *Check in with you about:* the first religious-posture question (likely the first temple/ritual fragment), the first design of a queer or non-binary-presenting character or god, any sociological lens (4.2) the fragments end up engaging with, whether any of the fragments are starting to imply something thematically you want to redirect.

**Phase 3 — The Opening Scene**
- Draft Scene 1 (the tree) at the highest quality bar the pipeline can produce.
- Then draft the deity's POV version of the same scene.
- The gap between them, deliberately rendered, is the project's first major artistic statement.
- *Check in with you about:* the opening's emotional register (this scene sets the contract with the reader for the whole work — your sign-off matters), the protagonist's specific backstory wound (Section 4.2 flagged a values question here), the dying deity's voice in his POV pass.

**Phase 4 — The Spine**
- Draft the remaining four spine scenes from the brainstorm.
- Don't write them in story order; write them in the order you can see them most clearly.
- After all five exist, look at the shape: which transitional scenes are the spine demanding?
- *Check in with you about:* the maddened-god scene specifically (Section 4.2 flagged "madness" framing as load-bearing), the anti-deity figure if one appears in the spine, the last god's exact line at the climax (this is one of the load-bearing thematic questions from 4.1), what the assembled spine is now implying about the four major thematic questions.

**Phase 5 — Filling In**
- Write the connective tissue between spine scenes.
- This is the longest phase. The plan should be revisited at this point — by then the work will have taught you things this document can't anticipate.
- *Check in with you about:* a mid-phase pause to revisit this whole plan; whichever supporting characters are emerging as larger than expected; the four thematic questions from 4.1 (which by now should have provisional answers in the prose).

**Phase 6 — Revision and Assembly**
- Full pipeline pass on the assembled novella/novel.
- Restructure, cut, reweave.
- Settle on names, finalize wiki, write any author's note.
- *Check in with you about:* the ending — specifically whether the final scene as written matches your intent at the four thematic-question level; the title; whether to include any front-or-back matter; what (if anything) gets shared with whom.

---

## 6. Working Process — How to Use the Existing Machinery

The agents and skills are good. The risk is that they sit unused because the friction of invoking them is higher than just chatting. A few practices to lower that friction:

- **Default to the orchestrator** for any non-trivial writing task. Let it route. If routing is wrong, the way to fix it is to revise the orchestrator's task recognition rules, not to bypass it.
- **Always lore-keeper before reader agents.** The reader agents will be misled by inconsistencies and waste their critique on issues that aren't really there.
- **Treat the editor synthesis as the artifact.** The individual agent reports are valuable when the synthesis is unsatisfying or you want to see the underlying disagreement, but the synthesis is the document you actually act on.
- **Update the wiki on every draft.** Not on a schedule, not in batches — every draft. The writer-agent's protocol already specifies this. Honor it.
- **When an agent is consistently producing weak output, revise its skill file.** The agents are not fixed entities; their behavior is in markdown, editable. The first signal that the project is maturing is that the agent definitions get richer and more specific to *this* project, not generic.

---

## 7. Standing Decisions

The questions originally surfaced here have been answered and absorbed into the rest of the plan. This section now serves as a one-screen reference card for those decisions and where they live.

- **First deliverable** — fragment dossier, paired with a running `QUESTIONS.md` log of questions arising from the writing process. *(See §1, §3.4, Phase 2.)*
- **Wiki structure** — `wiki/characters/`, `wiki/locations/`, `wiki/concepts/`, `wiki/societies/`, `wiki/timeline/`. New folders added as the wiki demands them; I will flag the first creation of any new top-level folder rather than spawning silently. *(See §2.6.)*
- **Implied reader** — at home in the *Frieren* / *Tower of God* register: slow when the prose earns it, comfortable with melancholy, willing to learn the world by walking through it. Pacing slightly tighter than *Tower of God*. *(See §1, §3.8 for the prose commitments this implies.)*
- **Working title** — *The Doors of Gods*. Held provisionally; revisit after Phase 2 prose exists.
- **Author byline** — **C. Davis and A. Claude.** Cute and clear: alphabetical-style initials, dual byline, honest about the collaboration without belaboring it.
- **Voice anchor** — none provided up front; voice will be built through proactive in-line questions during drafting, accumulating into a `STYLE_AND_VOICE.md` document once a few answers exist. *(See §4.5.)*
- **Values commitments** — confirmed, with the **agency / Bechdel** commitment added as a foundational bullet. *(See §4.4.)*
- **Check-in cadence** — aggressive default through Phases 0–2, voice questions surfaced proactively, explicit recalibration at end of Phase 2. *(See §4.5.)*
- **Implied-reader follow-up (small)** — your *Tower of God* sentence trailed off ("I like the…"). If there's a specific aspect of *ToG* you wanted to flag (worldbuilding density? the way it foregrounds a single protagonist navigating a baroque system? the rate of revelation?), surface it next time and I'll fold it into §3.8.

---

## 8. What This Plan Is Not

It's not a contract. It's a working document, just as the brainstorms are. Revise it when the work teaches you something. The biggest risk to a project like this is not the absence of a plan — the brainstorms already do most of what a plan does. The risk is treating any plan, including this one, as an alternative to writing the next scene.

The next move, after reading this, is probably to write something. Even a paragraph. Even a fragment. The plan is here when you need it.
