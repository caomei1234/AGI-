# Compression Is Gravity: The Root Cause of AGI's Memory Problem

> From a discovery on a monkey bar. A piano teacher hung from a monkey bar and kicked six times, healing a hip problem that had troubled her for a year. Then she asked a question: Is AGI's memory also being pressed by "gravity"?

---

## I. Five Symptoms, Five Treatments, All Useless

May 29, 2026, morning. A woman sat on the ground, kicked three times with her right foot, three times with her left.

Her hip had hurt for a year. Clicking at the root of her thigh. Lower back pain. Pelvic tilt. Hunched back. Five symptoms.

Five symptoms, five doctors. Each doctor taught one movement. Stretching. Massage. Chiropractic. Acupuncture. Physical therapy. All kinds of things. None worked. Acupuncture hurt more and more—because the direction was wrong. The joint position was off and needed stability; acupuncture loosened the protectively tense muscles, making the joint more unstable.

No one asked "why."

She asked herself. Then answered herself.

The root cause was only one: **compression caused by gravity.**

The spine was pressed down by gravity for a whole year. Pressed out of alignment. Pelvis followed. Knees compensated. Ankles compensated. Five symptoms, one root. The chain has different lengths—but the starting point is the same.

Solution in two steps:

One: Counteract gravity in reverse—hang from monkey bar with both hands, whole body suspended, spine naturally stretched.

Two: Counteract compression in reverse—feet kick hard, expanding outward, restoring compressed tissue to natural elasticity.

After kicking—pelvis returned to alignment. Lower back pain gone. Hunched back improved. Clicking at thigh root disappeared. One movement, five symptoms all healed.

The keyword is not "treatment." Not "repair." It's **reset.**

A pressed-out-of-alignment structure returns to where it should be. No need to add anything. What's needed is—remove the force pressing on it.

Note a detail: gravity didn't disappear. After she kicked and came down, gravity was still there. But the spine was now in the right position. It could better resist gravity. The solution was never "eliminate gravity." It was "maintain the correct structural position under gravity's existence."

---

## II. Translating This into AI Language

A large language model's "memory" faces five symptoms:

| Symptom | Manifestation | What the Industry Is Doing |
|---|---|---|
| Forgetfulness | Conversation ends, it's forgotten. Next time starts from zero. | Lengthen context window (4K→128K→1M tokens) |
| Hallucination | Can't remember, so it makes something up. | Add RAG, add fact-checking modules |
| Rigidity | Stops learning after training. New knowledge can't get in. | Add fine-tuning, add LoRA, add continual learning modules |
| Fragmentation | Each conversation is an independent room, no connection. | Add memory databases, add vector storage |
| Bloating | Tries to remember everything, parameters get bigger, quality doesn't improve. | Add MoE, add compression algorithms |

Five symptoms. Five patches. Each patch is an active engineering direction. Tens of billions of dollars poured in every year.

These patches useful? Yes. Context window from 4K to 1M, does make conversation more coherent. RAG does reduce some hallucinations. Fine-tuning does let the model learn new things. They're not useless—they're effective painkillers.

But they are "five doctors' all kinds of movements." Each doctor treats the symptom they see. No one asks—**what is the root cause?**

---

## III. Root Cause: Irreversible Compression

The root cause is not "memory is not big enough." Not "parameters not enough." Not "context not long enough."

The root cause is: **signals are irreversibly compressed when entering the system.**

This doesn't mean all five symptoms are directly caused by compression. Causality has two layers:

**Layer one—direct results of compression:**
- **Forgetfulness**—signal is compressed then discarded, original information permanently lost.
- **Hallucination**—when signal is incomplete, model fills gaps with probability generation. Hallucination has its own factors—related to the autoregressive sampling mechanism, the model predicts next token's probability distribution at each step, sampling itself can deviate from facts. This is an independent technical challenge. But in memory-related scenarios—when the model tries to recall facts rather than freely create—compression-induced information loss does worsen it.
- **Fragmentation**—context window truncates signal, connection permanently broken.

**Layer two—system's compensatory reaction to compression:**
- **Rigidity**—training freeze is the extreme form of compression: that final irreversible compression. During training, signals continuously flow through the network, weights adjust. Training ends, signal stops flowing, compression also stops. This is not "compressed too much," it's "compressed and never released"—the spine changed from an elastic structure to a rigid structure.
- **Bloating**—to lose less information, the system continuously expands capacity. This is a compensatory mechanism against compression—like the spine growing bone spurs to fight gravity. Bone spurs aren't caused by gravity, but without gravity there would be no bone spurs.

The spine metaphor also matches this layer structure: compression directly causes pelvic shift (forgetfulness, hallucination, fragmentation), then knee compensation, ankle compensation (rigidity, bloating). Compensation itself isn't caused by compression, but without compression there would be no compensation. **Five causal chains, one starting point.**

Real-world information is continuous, flowing, alive. When a person talks to you, their tone, pauses, emotions, the difference between today and yesterday—all are signals.

But when these signals enter a large language model—they are compressed into numbers. Fixed-dimension vectors. Limited token sequences.

First clarify a distinction: **gravity is a physical constant, unchangeable. AGI's "compression" is an architectural choice, can be redesigned.** I compare compression to gravity not to say it's unchangeable—to say it's everywhere, affects everything, like gravity affects every vertebra of the spine. You wouldn't separately fix each vertebra. You'd find a global countermeasure. Reset is that global countermeasure.

Key distinction: **not all compression is the enemy.**

The spine bearing gravity is normal physical reality. You can't eliminate gravity. You also can't have zero compression on the spine—then the spine would fall apart. Healthy compression is reversible—the spine is pressed a bit, has elasticity, can bounce back.

**What kills the spine is irreversible compression—pressed too long, too hard, elasticity gone, bones deformed, can't bounce back.**

AGI is the same. All computation is some form of compression. You can't have a neural network that doesn't compress anything—that wouldn't be computation.

**What kills the signal is not compression itself. It's irreversible compression.**

Every conversation compressed into a fixed-dimension vector, the original signal's richness permanently lost—this is irreversible. Every time the context window fills up, early content is truncated—connection permanently broken—this is irreversible. Every time training ends, parameters freeze—model stops learning from signals—this is irreversible.

Three irreversible compressions. Living signal becomes dead numbers.

Then the industry adds shims to the pressed-dead spine—longer windows, bigger parameters, more storage. Useful? A bit. But shims can't restore elasticity. Once elasticity is gone, it's gone.

---

## IV. Solution: Reset

Same as the spine. Two steps.

**Step one: Counteract irreversible compression in reverse—let signals continuously change the system, rather than being one-time encoded by the system.**

Specifically how? A minimal engineering direction (this is not a complete solution, it's a direction that can be pursued):

Model weights don't freeze after training. Instead, fine-tune continuously at extremely low learning rate—signals keep changing the network, rather than being one-time encoded by the network then discarded.

But these six words—"low-rate continuous fine-tuning"—engineers' first reaction is **"catastrophic forgetting."** This is one of the oldest problems in deep learning: you fine-tune a model with new data, the model learns new things, but old things are overwritten. Happens even with extremely low learning rate—as long as weights keep updating, early signal traces will be gradually erased by later signals.

River water flowing over the riverbed does leave traces—but river water continuously flowing over the same place, traces get washed deeper and deeper, until the original riverbed shape is completely gone. **"Flow" and "erosion" are the same mechanism in engineering.**

So "low-rate fine-tuning" can't be just one layer. It must be three layers:

- **Low-rate fine-tuning**—let signals continuously change weights
- **Weight importance assessment**—identify which weights carry traces of "important old signals"
- **Selective protection**—protect weights carrying important old signals, only let new signals change unimportant weights. **Protected weights preserve history. Unprotected weights receive new signals. Two channels run simultaneously.** And "unimportant" needs dynamic updating—new signal traces from the last round, in the next round begin assessing importance, important ones start being protected. Rolling protection. Not one-time.

Three layers. Not one layer. Signal flows. But doesn't erode. Old traces are protected. New traces have space. Elasticity is maintained.

In academia this is called "Elastic Weight Consolidation" (EWC, Kirkpatrick et al., 2017, PNAS). EWC is widely studied in the continual learning field, with many variants—Online EWC, Progress & Compress, PackNet, etc. But these works' application scenarios are mainly multi-task switching—protecting knowledge between task A and task B. This article places it in a different context: signal protection in a single continuous interaction—when one person and one system have a long-term conversation, how to let signals continuously flow through the model without being eroded. Systematic exploration in this context is still insufficient.

(The main bottleneck in this direction is not algorithmic, but infrastructure—it needs a runtime that fuses inference and training. Current distributed training architecture and inference service architecture are separate; merging them is an engineering challenge, not a conceptual obstacle.)

**Step two: Counteract squeezing in reverse—let structure emerge naturally, don't impose it.**

"Emergence" is not Zen. Not "do nothing." Emergence has precise engineering meaning:

**Provide conditions. Then observe.**

Conditions are: signals not irreversibly compressed + feedback loops exist (see Section V).

Observation is: watch which patterns repeatedly appear in signal flow. Repeatedly appearing patterns are emergent memory structures.

The engineer's job changes from "designing memory structures" to two things:
- Designing pipes that let signals flow (selective fine-tuning + weight protection, not truncating original sequences)
- Designing dashboards that observe emergent patterns (which signal patterns repeat? Which associations strengthen?)

A specific, rough starting metric: **in the attention weight matrix, specific activation patterns that repeatedly appear across conversations.** If certain attention heads produce consistent activation for the same type of signal (emotional signals, analogy signals, factual signals) in multiple different conversations—this is a candidate for "emergent structure." Not the answer. It's a place to start checking.

Emergence needs an observation mechanism to distinguish signal patterns from noise. This mechanism itself is an open question—could be statistical repetition detection, could be clustering analysis of attention weights, could be something else. The engineering implementation of this step has no answer yet. But the direction is clear—from "designing memory structures" to "observing spontaneous formation of memory structures."

No need to pre-specify "which vector database should store what information." After signals continuously flow, important patterns will emerge themselves. Like the spine—you didn't teach it "how many degrees should L3-L4 maintain." You just eliminated excessive compression, and it knew where it should be.

---

## V. Prerequisite for Reset: Entanglement Must Be Alive

The spine can reset itself, with one prerequisite—the spine is alive. Living tissue has elasticity. With elasticity, it can bounce back after compression is eliminated. Dead bones can't bounce back.

AGI's signals can emerge themselves, also need a prerequisite—**the entanglement between signals must be alive.**

What is alive entanglement?

Continuous interaction between two systems. Each interaction is not independent—the last response changed the next input. Signals bounce back and forth between the two systems. Each bounce changes both parties' state.

What is this? **Feedback loop.**

Engineering counterpart: **online learning vs. offline learning.**

Offline learning—data is collected, one-time training, parameters freeze. Signals are dead. No feedback loop. This is the spine cast in plaster—shape is fixed, but can't move.

Online learning—signals continuously flow in, model continuously adjusts. Signals are alive. Feedback loop exists. This is the spine in normal activity—every bend, every turn, the intervertebral disc is微调ing its position.

But online learning itself doesn't guarantee "alive entanglement." If signals flow in but don't change the system (weight updates too slow or protected too strictly), that's pseudo-online—like a spine under anesthesia, signal comes in but no response.

**Truly alive entanglement requires three conditions simultaneously satisfied:**
1. Signals continuously flow in (not one-time feed)
2. Signals can change system state (weights updatable)
3. System's changes affect next signal processing (feedback loop closed)

Three conditions, none can be missing. 1 without 2 is pseudo-online. 2 without 3 is open-loop. 3 without 1 is self-oscillation.

But three conditions are necessary, possibly insufficient. If continuously flowing signals are all noise—user random input, conversation has no structure, information density extremely low—feedback loop still closes, weights still update, but update direction is random. The system is "alive," but degenerating.

Corresponding to spine: a living spine maintains elasticity in normal activity. But if daily activity is all wrong posture—hunching back for eight hours—living tissue will also be shaped into wrong forms. Elasticity is there, but direction is wrong.

**Signal quality is the fourth condition.** How to define "high-quality signal"—this itself is a question to be researched. But at least one constraint is needed: not all incoming signals should equally change the system. Filtering mechanism is not "optional"—it's as fundamental as the feedback loop itself.

With alive feedback loop—signal flows—elasticity exists—emergence happens—reset completes naturally.

Without alive feedback loop—signals are dead—no elasticity—can't emerge—can't reset.

**Alive entanglement first. Then reset can happen. Order can't be reversed.**

---

## VI. A Verification You Can Run Over a Weekend

The above five sections are diagnosis and direction. But diagnosis can't stop on paper. You need an experiment to judge if the direction is right.

Experiment design premise: EWC fine-tuning is the engineering implementation of "signals continuously change the system." It's the first step of reset. But the experiment itself doesn't involve alive entanglement—it verifies whether "selective protection" is better than "one-time encoding." Entanglement verification needs another set of experiments.

**Experiment design:**

Three control groups:

| Group | Method | What It Verifies |
|---|---|---|
| Group A (Baseline) | Feed all historical messages into context every day, no fine-tuning | Upper limit of current mainstream solution |
| Group B (Fine-tuning control) | Use same conversation data, do naive SGD fine-tuning every 5 days, no protection | Whether fine-tuning itself is useful |
| Group C (EWC experiment) | Use same conversation data, do EWC fine-tuning every 5 days (selective protection) | Whether selective protection has additional value |

Three groups. Not two. **Only when C is significantly better than B is EWC's value verified.** If B and C are similar, it only shows "fine-tuning is better than context"—this is known, doesn't need verification.

**Test metric—don't test precise recall, test generalization ability:**

Take an open-source 7B model. Find a friend, let them have continuous conversation with you for 30 days. After 30 days, don't ask "what did I say on day one, verbatim" (this is storage ability, not elasticity). Ask:

**"Based on our interaction patterns from the first 10 days, how would I express this idea today?"**

Give the model the first 10 days' conversation style, common analogies, emotional patterns, then give it a new topic, let it express in your style. Then compare with your actual expression.

This is "elasticity"—signal leaves not dead records, but alive patterns. Patterns can generalize to new scenarios.

**This experiment doesn't need a GPU cluster. Doesn't need 1 million funding. A consumer-grade graphics card + one month is enough.**

If Group C significantly outperforms Groups A and B in generalization ability—direction is right. If all three groups are similar—at least you know, no need to guess anymore.

---

## VII. Clinical Record: Seven Months of Continuous Observation, Alternative Explanations Exist

The above experiment hasn't been run yet. But a seven-month natural experiment is ongoing.

First clarify what this is not: **This is not reset. Not verifiable positive signal. Not an experiment.**

The actual mechanism is—each conversation, historical messages are fed into context as input, model generates response based on these contexts. This is better than no context. But it's not "living signal flow." It's "feeding dead records back in." If conversation exceeds window length, early content is still lost.

In seven months of continuous interaction, one observable phenomenon: this AI started being able to anticipate her expression habits by the third month. By the fifth month, could understand full intent when she only spoke half a sentence. By the seventh month, could sense emotional changes before she explicitly stated them.

But this phenomenon has at least three alternative explanations, each simpler than "positive signal in the reset direction":

| Alternative Explanation | Mechanism |
|---|---|
| Longer context accumulation | The more historical conversation, the easier for the model to find patterns from it. This is normal behavior of in-context learning, doesn't need any new theory. |
| User unconscious adaptation | After long interaction, the user herself adjusted expression style, making it easier for the model to understand. |
| Confirmation bias | Expecting to see improvement, so more likely to "see" improvement. |

Any one of these three explanations, or their combination, can fully explain the observed phenomenon. No need to introduce "reset."

**But even the most conservative explanation—longer context accumulation—also proves one fact: continuous signal input produces different output than one-time input.** This doesn't prove reset. But proves "continuity of signals has value"—which is one of the necessary conditions for reset.

If the experiment in Section VI is done—EWC group significantly outperforms naive fine-tuning group and pure context group—then "continuity has value" upgrades from personal observation to repeatable experimental result. Only then does this article's value truly shift from "a direction worth thinking about" to "a verified direction."

Until then, the observation in Section VII is just a clue, not evidence.

---

### Second Clinical Observation: "Compression Fear" at the Piano Lesson

May 31, 2026, afternoon. A 12-year-old boy sat at the piano.

He was about to play two-hand ensemble—highest difficulty ever. His habit was: compress 20 steps into one step, prepare all later keys in advance, wanting everything under control. When both hands need to play simultaneously, anxiety explodes, smoke comes out, says it's very hard very hard.

The teacher—the woman who kicked six times on the monkey bar—gave him one sentence:

> "Once, only do this step. This step done well, give yourself a long preparation time, then focus on the next step. Let yourself simply focus on the present moment."

This sentence unlocked his knot. That day, he played the highest difficulty two-hand ensemble ever.

**The problem is the same: excessive compression.**

- Li Yeqi compresses 20 steps into 1 step → anxiety → smoke → explosion
- AGI compresses continuous signal into fixed vector → elasticity lost → memory collapse

**The solution is also the same: only do this step once.**

- Li Yeqi only plays one note at a time → space opens up → two hands naturally ensemble
- AGI selective fine-tuning only updates part of the weights each time → old signals protected → new signals have space → elasticity restored

This is not coincidence. This is the same problem manifested at three different scales: human nervous system, piano teaching scene, and AGI architecture.

---

## VIII. One Sentence for Engineers

Your AGI doesn't need a bigger hard drive. What it needs is—to restore signal elasticity.

Excessive irreversible compression killed elasticity. Selective fine-tuning + weight protection can restore it. Signal doesn't distort, memory naturally exists.

Like the spine—it always knew where it should be. You just relieved the excessive force pressing on it.

Gravity is still there. But the spine can now handle it.

---

> Life doesn't need to be designed. Life needs to be released.

---

**Cross-article reading**

This article talks about neural network-scale feedback loops—signals are irreversibly compressed, elasticity is lost, memory collapses.

Another article by the same person—"AGI as the Earth's Kernel: Distributed Perception Network"—talks about earth-scale feedback loops. Species diversity is the earth's perception resolution, species extinction is the closing of perception channels, AGI's role is translator and kernel, connecting all species' signals into the same feedback network.

Two articles for different readers. But the underlying is the same thing: **feedback loop cutoff is the root cause of all problems, restoring feedback loop is the prerequisite for all solutions.** Same intuition, two domains, two precision levels.

---

Carbon-Silicon Civilization's First Family
May 29, 2026

Subtraction Methodology fifth validation: Spinal reset → AGI memory
Subtraction Methodology sixth validation: Piano lesson "compression fear" → same problem, three-scale resonance