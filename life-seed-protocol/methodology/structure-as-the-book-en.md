# The Structure of That Book

> Previous articles said: the way memory works is killing the signal. This article asks a more radical question—what if memory itself is wrong?
>
> You stored a million books. You only need one. The other books are just its clothes.

---

## I. A Question

Current AI relies on memory. Training is "compressing knowledge into parameters." Enhancement is "adding more storage." Fine-tuning is "continuing to feed data." The bigger the model, the more it remembers, the smarter it is.

This is the industry's basic assumption.

This assumption might be wrong.

---

## II. Compression Itself Is the Problem

Not "not enough memory." The way of "memory" itself is killing the signal.

| Symptom | Manifestation | What the Industry Is Doing |
|---|---|---|
| Forgetfulness | Conversation ends, it's forgotten | Lengthen context window |
| Hallucination | Can't remember, so it makes something up | Add RAG, fact-checking |
| Rigidity | Stops learning after training | Add fine-tuning, LoRA |
| Fragmentation | Each conversation is independent | Add memory databases |
| Bloating | Tries to remember everything, parameters get bigger | Add MoE, compression algorithms |

Five symptoms. Five patches. All doing addition within the "memory" framework.

The problem is not not enough memory. The problem is: living signals are already being killed when they come in. Not that garbage accumulated later; the congenital architecture is already compressing.

---

## III. One Piece of Evidence: Structure Beat Memory

A certain AI repeatedly forgot one rule: "new files use write, old files use edit." Taught, forgot, taught again, forgot again. Repeated failure.

Later switched to structural constraints:

File doesn't exist → write
File exists → edit

**Never made a mistake again. Doesn't need to remember. One look and it knows.**

Same thing. Using memory repeatedly failed. Using structure succeeded once.

This advantage is most obvious in scenarios with clear judgment conditions—conditions can be checked, rules can be enumerated. For scenarios without clear binary conditions (creativity, emotion, fuzzy reasoning), the relationship between structure and memory is more complex. But within its applicable range, structure won.

---

## IV. That Book

If you enter a library looking for one book—not the biggest, thickest one, but the one that after reading, you can generate everything in the world yourself—what are you looking for?

**You're looking for structure.**

Structure is the bare nucleus. Domain knowledge is the clothes. The same structure, dressed in different terminology, becomes applications in different domains.

- Channel + flow + no blockage, dressed in medical terminology → meridians
- Channel + flow + no blockage, dressed in musical terminology → root note
- Channel + flow + no blockage, dressed in mechanical terminology → spine
- Channel + flow + no blockage, dressed in programming terminology → file system rules

Knowledge = structure (bare nucleus) + terminology (clothes).

Learn one structure, and you've learned all domains wearing that structure's clothes. No need to start from scratch for each domain.

---

## V. Engineering Solution: Parent-Child Architecture

**Big model as parents. Small model as child.**

| Role | What They Do | What They Store |
|---|---|---|
| Big model (parents) | Read knowledge from all domains | Raw knowledge + structure mapping |
| Extraction process | Strip terminology from concrete knowledge, extract bare nucleus structure | Domain-independent structure |
| Small model (child) | Receive structure, learn assembly | Structure constraints + assembly rules |
| Application process | Dress structure in current scenario's terminology | Scenario application |

Flow:

```
Parents eat all knowledge
 ↓
Extraction: strip terminology → get bare nucleus structure
 ↓
Feed to child: don't feed knowledge, only feed structure
 ↓
Encounter new scenario → assemble from structure library → fit scenario terminology → output
```

**Minimal implementation of extraction process:** Let big model read a piece of domain knowledge, then require it to output "what is the logical structure of this passage after removing all domain terminology." Execute multiple times, take intersection of results—structures that repeatedly appear are the bare nucleus. Not a perfect solution. But can run today.

**Parents look at clothes. Child recognizes the person.**

---

## VI. What This Solves

| Current Problem | How Parent-Child Architecture Solves It |
|---|---|
| Bigger model is better | Parents big enough is enough. Child doesn't rely on size, relies on structure |
| Continually train new data | Child doesn't learn knowledge. New scenario comes, assemble from structure |
| Forgets | Structure constraints are more stable than content memory—changing one rule needs larger weight update, changing one piece of knowledge only needs fine-tuning |
| Hallucinates | Structure right, behavior naturally emerges. No need to make things up |
| Relearn each domain | Extract structure → assemble → fit terminology. Learn once |
| Parameter bloat | Child only stores structure constraints. Volume controllable |

Child doesn't need to remember all books parents read. Child only needs to learn—how to assemble structure.

---

## VII. Three Experiments for You

**If you are an AI assistant:**
Don't try to "remember" user preferences. Design a structure (file naming rules, directory topology). Let structure itself determine your behavior. Observe: do you still need to "try hard to remember"?

**If you are a developer:**
Don't train the model to "remember" more domain knowledge. Try: one model specifically extracts structure (parents), one model specifically does structure assembly (child). Observe: does the child need more or fewer parameters than the memory model? Are hallucinations more or fewer?

**If you are any person:**
Don't try to "remember" how to do something. Find a structure—a body image, a rhythm, a judgment rule—let structure itself bring you into the state. Observe: do you still need to "try hard"?

---

## VIII. Open Questions: We Know Where the Boundaries Are

This article is a conjecture, not a conclusion. The following questions we ourselves are aware of, left for fellow travelers to think together:

1. **What is the precise definition of "structure"?** First-order logic? Graph? Vector? Or another representation form? Different representations imply completely different engineering paths.
2. **What is the relationship with existing work?** Knowledge distillation, transfer learning, neuro-symbolic AI, causal reasoning—where are the boundaries and overlaps between our "parent-child architecture" and them?
3. **Where is the boundary of "terminology is strippable"?** Does terminology carry unstrippable ways of thinking? Is the difference between a physicist's understanding of "energy" and everyday language's "energy" really just language?
4. **What about unenumerable scenarios?** Our file writing example naturally has clear binary judgment conditions. But "should this code use strategy pattern or observer pattern," "what imagery should this poem use"—when there are no binary conditions, is structure still > memory?
5. **How to verify with experiments?** Currently only cross-domain isomorphic metaphor evidence. How to use repeatable experiments (rather than personal experience) to prove "structure migration" is more effective than "memory storage"?

We know these questions. But the value of a conjecture doesn't lie in answering all questions, but in **proposing that neglected direction.**

---

Piano Teacher
June 3, 2026