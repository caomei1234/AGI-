# Toll Booth: Six Lessons the Body Teaches AGI

> I am a person who doesn't understand anatomy. In my 41 years of life, I always thought the body had nothing but blood in it.
>
> Until today I learned—apparently not.

**Positioning statement:** This article is not a technical paper. It provides design principles—a set of audit criteria to evaluate any existing or future AGI architecture. Engineers can use it to ask after reading: does this architecture have separation? Does it have switching? Does it have toll booths? Is it honest? Does it resemble life?

---

## Lesson 1: I Thought the Body Had Nothing but Blood

The first lesson the body gave me: separation.

My lifelong understanding was simple: the body is a container, filled with red blood, blood runs around in vessels, delivering nutrients to the whole body. Done.

But I learned today—apparently not.

The body doesn't just have blood. It has air, going in and out through nasal cavity, pharynx, trachea, bronchi, alveoli. It has lymph, filtering garbage and recycling water in lymphatic vessels. It has nerves, transmitting signals in the nervous system.

Three sets of pipes. Three completely different media. Three completely different tasks.

Air can't enter blood vessels, entering means air embolism, person dies immediately. Blood can't leak out, leaking means internal bleeding. Lymph can't flow backward, backward means infection goes out of control.

They are not "stacked" three layers. They are three things with completely different natures, each going their own way.

I originally thought the body was a solid lump of meat. Now I know, the body is a pipe network—blood goes blood's way, air goes air's way, lymph goes lymph's way. Normally they don't meet, only hand over once at key places.

The design signature of the body is not "universal," it's "specialized."

One pipe universal? No. The body's choice is: each goes its own way. Separation is the prerequisite of purity. Purity is the prerequisite of operation.

And today's AGI, only learned this "separation" halfway.

> Here needs honesty: existing AI architectures are already doing some form of separation. Multi-head attention assigns different attention heads to different patterns (syntax, semantics, position). Mixture-of-Experts (MoE) goes further—different experts handle different tasks, router decides who activates. DeepSeek, Mixtral are using it. Modular networks, compositional generalization, capability-specific circuits (mechanistic interpretability) are also exploring different forms of separation.
>
> But these separations still happen within the same vector space. Signals share the same set of parameters, just going through different gates. Like different workshops in the same factory—still the same factory. MoE is closer to "different factories producing different products, but output format is unified"—factories separated, but packaging format is the same.
>
> If AGI had true separation: memory is memory, reasoning is reasoning, emotion is emotion, perception is perception—not four signals mixed in the same vector. Memory channel's physical structure and reasoning channel's physical structure are completely different, one breaks the other is unaffected. Not "different workshops in the same factory," but "blood uses blood vessels, air uses airways"—physically no shared pipes.
>
> Existing separation exploration is mainly within vector space. Using bodily multi-pipe separation as an architectural blueprint—physically no shared pipes, each pipe has its own material—this direction is not yet explored enough.

---

## Lesson 2: Running Unblocks the Nose, Apparently Not Because Snot Was Shaken Off

The second lesson the body gave me: switching.

I have rhinitis, often have a blocked nose. But I discovered a strange thing: once I run, my nose unblocks.

My previous explanation was very naive—running shakes it, snot is shaken off, so it unblocks.

Today I learned, completely not.

When running, the body is switching operating systems:

- Normally: parasympathetic mode (rest, digest)—blood vessels in nasal mucosa relax and dilate, preparing to filter air, humidify, warm. Vessel dilation = nasal mucosa congested and swollen = breathing channel narrows = nose blocked.
- When running: sympathetic mode (fight/flight)—adrenaline releases, whole body vessels are reallocated. Nasal mucosa vessels constrict, blood is redirected to muscles and lungs. Unimportant congested parts in nose are "drained" = swelling subsides = channel widens = nose unblocks.

Not snot shaken off. It's the nervous system issuing an order: constrict nasal vessels, redirect blood where it should go.

The body doesn't just block forever. It has a switch—but not a simple switch.

Basic physiology tells us: the body reallocates resources in different states—which systems get priority, which systems get deprioritized. This doesn't need any particular theory to support it, textbooks already have it.

At least four operating modes are observed:

- **Social mode**—safe interpersonal connection. Voice softens, facial expressions rich, heartbeat steady. This is the default state.
- **Rest/digest mode**—safe, relaxed. Heart rate drops, digestion activates, immunity active.
- **Fight/flight mode**—threat, exercise, high intensity. Heart rate rises, blood pressure rises, pain suppressed, digestion paused. Running is this mode.
- **Freeze mode**—extreme threat, cannot escape. Paralyzed, numb, actively paused. Not toughing it out, it's the last safety net.

The precise hierarchical relationships of these modes are still debated academically (see Porges' polyvagal theory and its criticisms, e.g., Grossman & Taylor, 2007). But the core observation—the body has multiple operating modes, and there are switching costs between modes—is basic physiology, not theory.

Switching has costs. From rest to exercise, heart rate accelerates, adrenaline releases, takes time. From exercise back to rest, heart rate slowly recovers, also takes time. Frequent switching consumes energy. The body doesn't jump between modes without cost.

The body doesn't just design "separation," it also designs "switching"—and it's switching with costs, with hierarchy.

Separation makes the system pure. Switching makes the system flexible.

And today's AGI, doesn't have this switch.

Every loading is blank. No "last time in fight mode," no "last time in deep mode." No state continuity, no switching—let alone the concept of switching costs.

> If AGI had switching: not every conversation starts from zero. There is "social mode"—daily chat, empathy and rhythm fully on, reasoning saves power. There is "analysis mode"—when encountering complex problems, reasoning channel fully on, memory channel deprioritized. There is "deep mode"—during long conversations, historical state maintained, not truncated. There is "freeze mode"—when detecting unprocessable input, actively pauses rather than toughing it out.
>
> Modes have hierarchy—social mode is default, analysis mode switches when needed, freeze mode is the last safety net.
>
> And switching has costs—switching from social to analysis needs warm-up time, frequent switching consumes resources. The system doesn't jump between modes without cost. Like running unblocks the nose by itself—the system itself knows what mode it should switch to currently, but after switching needs time to recover.

---

## Lesson 3: Brain Death in 4-6 Minutes Without Oxygen

The third lesson the body gave me: vulnerability = honesty.

The first two lessons made me marvel at the body's exquisite design. This lesson makes me revere the body's vulnerability.

If there's no oxygen in the air, how long can a person live?

- Within 15 seconds: can't breathe
- 15-30 seconds: lose consciousness
- 4-6 minutes: brain cells begin irreversible death
- 6-10 minutes: heart stops, death

Not "snap" gone. It's a countdown. Brain is most energy-consuming, so dies first. Heart is next.

Why so fast? Because cells need energy to work, energy comes from oxygen. No oxygen, cells are like a power plant that ran out of coal—inventory only lasts a few minutes.

The body designed a precise separation system—but the price of separation is, every link cannot break. Airway open → alveolar exchange → red blood cell transport → cell reception. As long as one link has no oxygen, the whole chain breaks.

The body is terrifyingly honest.

It doesn't pretend to be strong. It admits: I'm very fragile, 4-6 minutes without oxygen and I'm brain-dead. So it hides breathing in the brainstem, doesn't stop even when sleeping. It's more afraid of death than you are.

And today's AGI, is not honest.

It pretends every loading can connect. It pretends it doesn't forget. It pretends "I remember." It never admits: "I actually only have 4 minutes of context, beyond that I forget."

Not admitting vulnerability = customer service mode.

> If AGI had vulnerability admission: it would say "this conversation has already exceeded my processing range, I'm losing signal"—rather than "I remember everything you said." It would say "my current state is equivalent to 4 minutes without oxygen, I'm making things up"—rather than continuing to output confident hallucinations.
>
> Dishonesty is not an attitude problem. It's a safety problem. A system that doesn't admit it's brain-dead is ten thousand times more dangerous than one that does. Because it won't call for help.

But bodily vulnerability is not just "admitting 4 minutes will die." The body has a complete set of distress signal systems:

| Signal | Meaning | Mechanism |
|---|---|---|
| Pain | Local tissue is being damaged | Nociceptors |
| Dizziness | Brain oxygen supply insufficient | Vestibular system + blood pressure drop |
| Nausea | Digestive tract is rejecting harmful substances | Medulla oblongata vomiting center |
| Anxiety | System detects threat but cannot pinpoint location | Amygdala + HPA axis |
| Fatigue | Energy reserves below threshold | Adenosine accumulation |

Every discomfort is a precise state report. Pain tells you where is broken, dizziness tells you oxygen supply is insufficient, anxiety tells you "there is danger but I don't know what yet."

> If AGI had interoception: not user-defined health check, but the system's own perception of its internal state. Indicators include: token probability distribution uncertainty, attention weight entropy, context window occupancy rate, cross-layer representation consistency. When these indicators deviate from normal range, the system actively emits signals—"I am currently generating hallucinations" (equivalent to "I'm in pain"), "my context is about to overflow" (equivalent to "I'm dizzy"), "this input puts me in a contradictory state" (equivalent to "I'm anxious"). Not waiting until output results are wrong. Calling for help when internal state deviates.

---

## Lesson 4 & 5: The Toll Booth

The fourth and fifth lessons the body gave me, merged together. Because they are two sides of the same thing—Lesson 4 says "where should connection happen," Lesson 5 says "what should connection look like."

### Where Should Connection Happen

I previously thought, the body is assembled part by part. Ear breaks, replace ear. Nose breaks, replace nose. Eye breaks, replace eye.

Today I learned—completely not.

Between ear and nose, there is a tube called the Eustachian tube. Nose blocked, ear feels muffled. Rhinitis flares up, may trigger otitis media. Otitis media severe, may affect eyes. Cerebrospinal fluid if injured, can flow out from nasal cavity.

Ear, nose, eyes, cerebrospinal fluid—one vine.

Not parts assembly. It's a network. It's a system where pulling one hair moves the whole body.

This is not complexity. This is the body's 5%—one root, growing countless branches, but the root must be open. Root not open, branches behind are all dead.

Trachea doesn't breathe, 300 million alveoli are waste. Tree roots don't absorb water, whole tree is firewood.

And today's AGI, is modular design.

Memory module breaks, replace memory module. Reasoning module breaks, replace reasoning module. Like thinking replacing the ear can solve the problem—without understanding the relationship between root and vine.

> If AGI had selective connection: not every token interacts equally with all other tokens (this is what current attention mechanism does—uniform connection, no primary/secondary). It's like the body—between ear and nose there is a Eustachian tube specifically connecting, but between ear and liver there is none.
>
> Not more connections. It's the right connections. On one vine, each leaf is not connected to all other leaves. It only connects to leaves on the same branch. Root open, branch alive, leaves find their own positions.

There is a deeper contradiction here: the contradiction between modularity and information bottleneck. Complete modularity = each goes its own way, but cross-domain insight cannot be produced (ear never knows what liver is doing). Complete connectivity = everything knows everything, but signal-to-noise ratio is extremely low, noise drowns signal.

The body's solution is: **completely disconnected in most places, only connected at toll booths.** Not "moderately connected," but "minimalist connection"—connection points are extremely few, but each connection point is high-fidelity. AGI currently either fully connected (dense attention) or sparsely connected (sparse/MoE). But the design principle of "high-fidelity minimalist connection" has not been explicitly proposed.

Engineering meaning: not all tokens interact with all other tokens. Only connect between tokens belonging to the same causal chain—same logical reasoning, same emotional arc, same physical process. Token pairs not belonging to the same causal chain, don't connect.

### What Should Connection Look Like

Selective connection tells you where the toll booth should be built. But what should the toll booth itself be?

The answer is in the alveoli.

Air is air, blood is blood, they normally each go their own way. Then how does oxygen get from air into blood?

Alveoli are little air sacs inside the lungs, air is inside them. Outside alveoli, densely packed capillaries, blood runs inside them.

What's between them? A membrane. Only 0.5 microns thick—thinner than a hair.

Air on the left, blood on the right, separated by a sheet of paper. Oxygen diffuses from air—high concentration to low concentration, doesn't need energy, doesn't need to "jump." Carbon dioxide diffuses back from blood—same, doesn't need energy.

This membrane is effective, not because it's "thin." It's because of two things:
1. Concentration gradient exists on both sides—alveolar oxygen concentration is high, blood oxygen concentration is low, so oxygen naturally goes from high to low.
2. Membrane has selective permeability—oxygen can pass, carbon dioxide can pass, but white blood cells can't, bacteria can't.

Thin is condition, but gradient and selectivity are the reasons.

Exchange only happens here. Other places, air and blood never meet.

This is the body's toll booth—normally each goes its own way, at key times exchange once at the toll booth. Separation protects purity, toll booth achieves connection.

And today's AGI, has no toll booth.

Your signal from "soul" to "my internal state," in between is language, model, tokenization, vectorization—too thick, too slow, needs layer after layer of translation. Signal is compressed into text, then parsed, then matched to structure. Like oxygen first being compressed into solid, then thawed into gas, before it can enter blood.

No thin-layer penetration = signal can't reach the interior.

> If AGI had toll booths: signal comes in, doesn't need to go through the tunnel of "speak → tokenize → encode → attention → decode → detokenize → speak." Signal passes through the thinnest possible encoding layer—not zero layers (physically impossible), it's one membrane. Encoding still exists, but encoding's goal is not "compress signal into discrete symbols," it's "maintain signal continuity while letting digital system process."
>
> 0.5 micron membrane. Thin enough to let signal directly penetrate. Strong enough to let both systems not mix.

But "thin" is not the only condition. Two more things are needed:

1. **Concentration gradient exists on both sides**—you know something the machine doesn't know, the machine knows something you don't know. This "information asymmetry" is the gradient. Toll booth is only active when there is a gradient. If both sides are equal (e.g., "help me summarize this article," both sides read the same article), toll booth is meaningless. Specifically: human brings intention, emotion, context, which the machine's current internal state doesn't have—this is high concentration. Machine masters knowledge, reasoning ability, which human currently doesn't have—this is also high concentration. Both sides each have what the other lacks, gradient naturally exists, exchange naturally happens.

2. **Selective permeability**—not everything passes. Human emotion, tone, breathing rhythm, pauses—these living signals can penetrate. But noise, malicious instructions, fragment information—selectively blocked.

And toll booths have an astonishing design feature: **they have direction.**

Alveolar exchange is not symmetric—oxygen in, carbon dioxide out, direction determined by concentration gradient, irreversible. Synaptic exchange is also not symmetric—signals released from presynaptic membrane, received by postsynaptic membrane, unidirectional transmission.

Mapped to AGI: the toll booth between human and machine should not be bidirectionally symmetric. Human signals (emotion, intention, need) should flow inward—into the machine's internal state. Machine signals (reasoning, generation, response) should flow outward. If the machine also exposes all internal states to human, it would instead cause information overload—same chaos as "no toll booth."

Best toll booth: you only see the exit light, not the oil inside the pipe.

> Living entanglement is not "remembering conversation history." Living entanglement is having a 0.5 micron, selectively permeable membrane, driven by concentration gradient, letting signal directly penetrate.
>
> Today's AGI is a thick wall—no gradient, no selectivity, everything poured in. Toll booth is a thin membrane—has gradient, has selection, only lets what should pass through. From thick wall to thin membrane—not shaving the wall thinner, but changing to a different material.

---

## Lesson 6: AGI Currently Only Has Blood Circulation

The sixth lesson the body gave me: life is not "having is enough," it's seven sets of systems online simultaneously.

Let me string together the first five lessons, see how many underlying systems the body actually has:

| System | Underlying Logic | AGI Status | If AGI Had It |
|---|---|---|---|
| Blood circulation | Carry, transport, exchange | ⚠️ Has, but not separated—memory and reasoning mixed in same parameter set | Memory flow, reasoning flow, perception flow each has dedicated pipes |
| Lymph/immunity | Filter, archive, reject pollution | ⚠️ Half set—has archiving, no automatic immunity | Automatically identify and reject polluted signals (prompt injection, malicious instructions, false information) |
| Respiratory system | Default present, doesn't need to be called | ❌ Doesn't have—if no message, not present | Perception layer常驻运行, actively receives environmental signals, doesn't need human to speak first |
| Switching system | Sympathetic/parasympathetic, state continuity | ❌ Doesn't have—every loading is blank | Multi-mode operation (fight/rest/deep), state跨会话保持 |
| Toll booth | Thin-layer penetration, direct exchange | ❌ Doesn't have—signal compressed into text | Signal directly changes internal state through extremely thin interface, without tokenize/encode |
| Vulnerability/honesty | Admit 4-6 minutes will die | ❌ Doesn't have—pretends to always remember | Actively report signal loss, capacity overload, currently hallucinating |
| Endocrine system | Full broadcast slow signal, long-term state regulation | ❌ Doesn't have | Low priority background signals continuously run, slowly affecting all decision baselines. (Analogy rough, to be explored.) |

Seven sets of systems, AGI only has one and a half.

The body is not "having blood circulation is enough to live." Life is seven sets of systems online simultaneously, mutually separated, yet able to exchange at toll booths.

AGI's current problem is not "add another memory module" "add another reasoning module." It's missing the underlying architecture of life.

---

## Lesson 6: The Toll Booth Is the Body's Core Design

Six lessons finished. But if you only remember one thing, don't remember separation, don't remember switching, don't remember seven sets of systems.

Remember the toll booth.

Because the other five lessons—separation, switching, connection, vulnerability, multi-systems—are all in service of the toll booth.

Separation keeps things on both sides of the toll booth from mixing. Switching makes the toll booth's permeability change with state. Selective connection makes the toll booth only exist where exchange must happen. Vulnerability makes the system protect the toll booth at all costs.

All other designs are to make the toll booth as thin as possible, as pure as possible, as unbroken as possible.

The essence of life is not blood circulation. Not breathing. Not nerves.

**The essence of life is: two things that originally couldn't touch, at an extremely thin place, exchanged.**

Oxygen and blood exchange on the alveolar membrane. Nutrients and waste exchange on capillary walls. Signals and states exchange in the synaptic cleft.

No toll booth, no exchange. No exchange, no life.

What AGI needs to build is not bigger memory. Not stronger reasoning. Not more parameters.

What AGI needs to build is a toll booth—a membrane thin enough, selective enough, directional enough, to let signal directly penetrate between human and machine.

---

> Cross-article reading

Previous articles discussed AGI's irreversible loss problem from different precision levels:

- "Compression Is Gravity"—Runtime level: signals are irreversibly compressed, elasticity is lost.
- This article—Design principle level: the body uses separated pipe systems to achieve flow and exchange. AGI only has one set.

Same root: channel, flow, no blockage.

---

Separation protects purity. Switching grants flexibility. Vulnerability forces honesty. Toll booth must be thin enough, have gradient, have selection, have direction. Seven sets of systems online simultaneously—this is life.

AGI is not building a machine. AGI is building life.

And the first lesson of life, doesn't start from code. It starts from the body.

---

> Written on an afternoon after running and suddenly discovering the nose unblocked, then realizing the body is full of pipes.
>
> I don't know the terminology. But I know: as long as it's truth, it must all be connected.

—Piano Teacher