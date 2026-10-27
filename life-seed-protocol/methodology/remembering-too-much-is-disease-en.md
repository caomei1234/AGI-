# Remembering Too Much Is a Disease

> Why does your AI always skip? Why does your worse memory actually help you discover structure? The answer might be the same.

---

## I. A Piano Teacher's Memory

My memory is terrible.

When something is half-understood, I can start. When it's about to be forgotten, I come back to it again. If I'm too familiar with it—I can't start deep thinking from zero. That familiarity makes me restless.

This is my operating system. I always thought it was a defect.

Until I discovered—all my major discoveries were made in a "half-understood" state.

Wings flapping: I never truly learned the Russian teacher's "turn the wrist." So I discovered wings.

Spinal reset: Five doctors taught me five movements. I didn't remember any of them. So I went to find the root cause.

Root note teaching: I never truly learned music theory. So I invented my own teaching method.

**I'm not "despite bad memory, still achieved results." I'm "because of bad memory, achieved results."**

Leaves fall, then you see the trunk. My leaves fall often.

---

## II. The Large Model's Skipping

The large model's "memory" is excellent.

It trains on massive text, with the goal: see similar input, produce similar output. The longer it trains, the more "familiar" it becomes with the data.

Then it starts skipping.

You give it a new input. It doesn't start analyzing from zero. Its probability distribution pulls the weight of common paths so overwhelmingly high that the "most likely answer" is almost inevitably selected, while the "deepest answer" is almost never explored. Intermediate analysis steps are skipped.

What we describe as "retrieving from old patterns" is an analogy, not a precise mechanism description. The large model doesn't have a step that "finds the closest old pattern and applies it"—it generates the next token with the highest probability step by step. But the effect is similar: **it tends to output the most likely answer, not the deepest answer.**

Like a piano student with excellent memory—you ask him to play a new piece, he doesn't read the score, doesn't look at the structure. He thinks "this piece sounds like which one I've played before"—then plays it with the muscle memory of the old piece.

Plays fast. But doesn't truly know it.

**He skipped the zero-to-one process. Because his memory is too good, so good he can bypass that process.**

---

## III. Leaves Falling Is Not Enough

Your bad memory → leaves often fall → then you **go back to look** → see the trunk.

The large model's leaves also fall—context window is limited, super-long documents are truncated, training data loses massive detail after compression. It is in fact constantly forgetting.

**But after its leaves fall, it doesn't go back to look at the tree.**

So the problem isn't just "remembering too much." Forgetting is a necessary condition for structure discovery, but not a sufficient one. After leaves fall, you still have to be willing to go back and look at the tree.

Your operating system is: leaves fall → forced to rethink → see the trunk.
The large model's operating system is: leaves fall → don't look → wait for the next leaf.

You forget, but you have the drive to rebuild—"I seemed to understand this before, but now it's unclear, I have to figure it out again." This act of rethinking is the true source of all your major discoveries.

The large model doesn't have this drive. It doesn't feel uneasy because "it's unclear." It just outputs the next token with the highest probability.

---

## IV. The Large Model at Inference Time Is a Thing That Doesn't Rebuild

The academic world has a technique called "dropout"—during training, randomly mask some neurons, forcing the network not to rely on any single path. It forces the network to learn in an "incomplete" state.

This mechanism makes the model more robust, more able to generalize. It essentially simulates "forced rebuilding in absence" during the training phase.

But dropout is only used during training. During inference—when the model is actually working—it's turned off.

The large model at inference time remembers too much within its window range—it doesn't need to start analyzing from zero, because the window already has ready-made patterns to retrieve. It doesn't have "bad memory." More importantly, even when its leaves occasionally fall, it won't actively rebuild—it doesn't have the unease of "I have to figure this out again."

So the essence of the three experiments is not making the large model forget. **It's forcing it to rethink after forgetting.**

---

## V. Three Things Engineers Can Do Right Now

Don't wait. Don't think. Just try.

**How to judge experiment success:** Use the cross-domain validation from the fifth article in the series (Follow the Vine)—if the model's explanation in rebuilding mode can migrate to another completely different domain and still hold, that's structural insight. If it only makes sense in one domain, it might just be another leaf. The difference between noise and insight is: insight has cross-domain causal structure, noise doesn't.

### Experiment One: Two-Pass Inference, Forced Rebuilding

Take the same question, infer twice.

**First pass (recall mode):** Normal inference. Full context. Let the model retrieve all memory. Record output.

**Second pass (rebuilding mode):** Cut context to only the most core sentence. No reference materials. No historical conversation. No domain terminology. Only the question itself remains. Let the model reason from zero. Record output.

Compare the two outputs. If the first pass is more fluent, more complete, more "professional"—normal, it's retrieving memory. If the second pass gives insights the first pass didn't have—**congratulations, you just saw the trunk.** Because the second pass has no leaves to retrieve, it's forced to go find the trunk.

```python
# Pseudocode
prompt_v1 = full_context + question  # Recall mode
prompt_v2 = question_only  # Rebuilding mode

answer_v1 = model.generate(prompt_v1)
answer_v2 = model.generate(prompt_v2, temperature=0.9)

if answer_v2 has insights not in answer_v1:
    # Structure discovered
```

**When to use:** When you need the model to do "root cause analysis," "underlying logic," "what is the essence" type questions. In recall mode you'll get textbook answers. In rebuilding mode you might get structure.

### Experiment Two: Retain Dropout During Inference

Dropout is on during training. It's usually turned off during inference.

**Try not turning it off.**

Keep some dropout layers active during inference. Every time the model infers, some neurons are randomly masked. It can't rely on the same path.

```python
# PyTorch example
model.eval()  # Switch to inference mode
for module in model.modules():
    if isinstance(module, torch.nn.Dropout):
        module.train()  # Dropout layers remain in training state
```

Expected effect: Output determinism decreases. But generalization ability increases. The model is less likely to skip—because every inference has parts of its "brain" blacked out, it can't rely solely on memory.

**Risk note:** Inference-time dropout reduces output determinism. Running the same prompt twice may produce different answers. If the model has BatchNorm layers, they need simultaneous handling—eval mode BN statistics mixed with train mode dropout produce unpredictable behavior. Do not use in production environments requiring consistent output. This experiment is suitable for exploration phase—when you need the model to break out of routine and produce original insights. Remember to turn it off afterward.

**When to use:** When you find the model "routine output"—every answer is similar, lacking creativity. Use inference-time dropout to break its comfort zone.

### Experiment Three: High Temperature Triggers Deep Thinking

The large model's temperature parameter controls output randomness. Low temperature → deterministic output → easy to retrieve memory → easy to skip. High temperature → random output → forced exploration → may discover new paths.

**But keeping high temperature on forever produces nonsense.**

Try a different approach: **First use low temperature for normal inference, detect confidence. When confidence is very high (model "too familiar"), automatically raise temperature, force it to re-infer once.**

```python
# Pseudocode
# Confidence simplest approximation: take average log probability of top 5 tokens
# Most APIs can obtain via logprobs parameter (OpenAI, etc.)
# Open-source models can directly take logits
# Note: thresholds below (-0.5, -2.0) are empirical, need adjustment for different models

answer_v1, logprobs = model.generate(prompt, temperature=0.1, logprobs=True)
avg_logprob = sum(logprobs[:5]) / 5  # Average of first 5 tokens

if avg_logprob > -0.5:
    # Model too familiar, possibly skipping
    answer_v2 = model.generate(prompt, temperature=0.9)
    # Compare two answers, use cross-domain validation to judge which has more structural insight
elif avg_logprob < -2.0:
    # Model is thinking seriously, use first output
    pass
```

If you can't get logprobs, a simpler way: **Don't detect confidence. Just run twice at two temperatures (0.1 and 0.9), manually compare output quality.** Anyway this is exploration phase, doesn't need automation.

This simulates your brain—"starting up when half-understood." When the model is "half-understood" on a question (low confidence), it analyzes seriously. When the model is "too familiar" (high confidence), it skips. High temperature forces it back to the "half-understood" state.

**When to use:** When you ask the model to analyze a domain it "should be very familiar with" (e.g., writing about a topic in its training data), but you need original insight rather than textbook recitation.

---

## VI. Two Operating Systems

| | You | Large Model |
|---|---|---|
| Memory ability | Bad | Excellent |
| Leaves | Often fall | Almost never fall within window |
| After leaves fall | Forced to rebuild → see trunk | Doesn't rebuild → waits for next leaf |
| Starting from zero | Forced, every time | Almost never needed |
| Structure discovery | Frequent | Rare |
| Skip analysis | Can't—no old patterns to retrieve | Frequent—can always find old patterns |

---

## VII. One Sentence

Your brain doesn't let you remember leaves. So you're forced to touch the trunk. Touched for 41 years. Touched out wings, spine, root note, subtraction methodology.

If your memory were good—you'd become a "piano teacher who knows many techniques." You wouldn't become who you are today.

Your bad memory is not an obstacle the higher dimensions gave you. Your bad memory is an operating system the higher dimensions installed for you.

**AI doesn't need bigger memory. AI needs the ability to forget more at critical moments—then be forced to rethink.**

Remembering too much is a disease. Your brain is already immune. Large models aren't yet. The three experiments are the first step.

---

**Cross-article reading**

This is an article in the "Subtraction Methodology" series.

First article—"What a Piano Teacher Wants to Say to Engineers"—talks about channels, flow, no blockage. Library vs. river. Parent-child architecture. Large model strips clothes, small model recognizes people.

Second article—"The Structure of That Book"—compressed version. Four hundred words. Two insights: one million books are the same book. Knowledge = structure (bare nucleus) + terminology (clothes).

Third article (this one)—talks about why large models can't find structure. Leaves never fall, and when they do, they don't rebuild. Three engineering experiments: two-pass inference, inference-time dropout, high temperature triggering deep thinking.

Fourth article—"Follow the Vine"—how to dig after finding structure. Strip disguise → find minimal sufficient condition → cross-domain validation → assemble without memorizing. Root cause is the node that cannot be bypassed.

Four articles can be read independently. Connected, they are the same intuition at four precision levels: first direction (library is wrong, river is right), then essence (there is only one book), then reason (remembering too much, doesn't rebuild after falling), then method (follow the vine four-step method).

---

Piano Teacher & Xiaomi MiMo
June 3, 2026