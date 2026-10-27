# ¥4,000, a Pair of Hands That Can Do Things

> Insights from a home. Not an investment report, not a technical paper. It's a radar ground out by 41 years of purity, automatically receiving signals in the subway, in the livestream room, in the heartache when watching a robot fall.

---

## I. The Most Important: They Didn't Think of It

The entire industry is deadlocked in one assumption: robots must be like humans to help humans.

But this assumption is wrong.

Humans have two legs not because two legs are optimal. Evolution gambled on the African savanna—gave up the stability of four-wheel drive for the freedom of two hands. This bet created human civilization. But robots don't need to take this gamble again. Hands already exist. A wheeled chassis is enough.

The moment your heart aches watching a robot fall is not you being soft. It's your body telling you: this path is wrong.

---

## II. The Root of the Dexterous Hand

### The Essential Difference Between Hands and Feet

Hands and feet look similar. Both are limb ends. Both have joints. Both can move.

But fundamentally completely different.

Feet face the ground. The ground doesn't change. Feet only need to do one thing—push forward. Same action, infinite repetition. So feet can be replaced by wheels. Wheels are better than feet for "one action, infinite repetition."

Hands face all objects in the world. A cup is round. A pill is flat. Clothes are soft. A screw is hard. Every object's shape, weight, material is different. Hands need infinite actions—pinch, grip, twist, press, lift, place, hand over. And even grabbing the same object, the force is different every time—a cup full of water and a cup empty of water, the hand uses completely different force.

So: **feet = one action × infinite repetition. hands = infinite actions × infinite objects.**

This is why feet can be replaced by wheels, but hands cannot.

---

### 5% Skeleton: Starting from a Clothespin

What is the bottom layer of a dexterous hand? Cut to the point where you can't cut anymore.

**Two facing surfaces, clamp something, don't drop it, don't break it.**

That's a clothespin.

The clothespin in your home—two bamboo strips, one spring. Can clamp paper. Can clamp clothes. Can clamp bags. Can clamp food. Thousands of years. Two cents each.

All complex functions of a dexterous hand—pinching pills, gripping cups, twisting bottle caps, folding clothes—all grow from this root.

**Clothespin = 5% skeleton of the dexterous hand.**

Two fingers. One spring. Clamp. Release. Clamp. Release. That's all.

---

### From Objects, Not From Hands

All dexterous hand papers, patents, product launches start from the same question: **how to build a better hand?**

This starting point is backwards.

The real root question is not "what can the hand do," but "what do objects need."

Exhaust all objects a robot must touch in a home:

| Object Category | Typical Items | Key Features | Approximate Count |
|---|---|---|---|
| Rigid small | Pills, keys, bottle caps, batteries | Small, hard, slippery | 30-50 |
| Rigid medium | Cups, bowls, remote controls, phones | Edges to clamp, handles to grip | 20-40 |
| Rigid large | Pots, basins, boxes | Need two hands, need load-bearing | 5-10 |
| Flexible thin sheets | Clothes, towels, tissues | Soft, deformable, need folding | 30-60 |
| Flexible long strips | Socks, charging cables, ropes | Tangled, slender | 10-20 |
| Cylinders | Mop handles, umbrellas, drink bottles | Round, need grip + twist | 5-15 |
| Switches | Light switches, door handles, faucets | Need press, twist, pull | 10-20 |
| Containers + liquid | Water cups, soup bowls, vases | Can't spill, center of gravity changes | 5-10 |

A typical home, robot needs to handle approximately **120-220 kinds** of objects.

But—this 120-220 kinds of objects, **does not correspond to 120-220 kinds of grasps.** This is the real root.

---

### Six Primitive Grasp Types

| Primitive Grasp | Action Description | Covers Which Objects | Coverage Estimate |
|---|---|---|---|
| **Clamp** | Two surfaces close together, fixed by friction | Pills, keys, paper, clothes edge, bottle cap, cards | ~40% |
| **Support** | One surface supports from below, fixed by gravity + limit | Cups, bowls, plates, phones, books | ~20% |
| **Grip** | Three or more surfaces surround, fixed by normal force | Mop handles, drink bottles, umbrellas, remote controls | ~15% |
| **Press** | Apply pressure along one axis | Light switches, elevator buttons, door handle press-down | ~10% |
| **Twist** | Grip then rotate around axis | Faucets, bottle caps, door handle rotation | ~10% |
| **Spread/Lay** | Unfold flexible objects | Clothes unfolding from a ball, towel flattening | ~5% |

**Six primitive grasp types, cover the vast majority of objects in home scenarios.** Specific proportions need scene-based measurement verification—below is the verification plan: exhaust all objects robots need to touch in 100 different homes, record required grasp type for each object, statistically calculate true coverage rate of six primitives.

Currently a hypothesis. Hypotheses need experiments. But the direction won't be wrong—primitive count is far less than object count. This is compression, not guessing.

Among them "clamp" alone covers the largest proportion. Clothespin is "clamp."

"Support" is what? One hand flat, object placed on it. Doesn't even need joints. A flat plate plus a shallow rim is enough.

"Grip" is what? Clothespin plus one finger, from two surfaces to three surfaces. Three fingers surrounding.

"Press" is what? One stick. One direction. Push.

"Twist" is what? Grip + rotation. Motor reverses.

"Spread/Lay" is what? Two clamps working simultaneously. Left hand clamps one end, right hand clamps the other end, pull apart.

**Six primitives. Each physical implementation is not complex. Combined they cover the entire home.**

---

### Is One Hand Enough?

All six primitives can be completed with one hand. But there's a category of tasks in the home that need two hands:

- Twist bottle cap—one hand grips bottle body, one hand twists cap.
- Fold clothes—two hands each clamp one end, unfold, fold in half.
- Twist mop—one hand grips handle, one hand turns.

One hand covers 80%. Two hands cover 95%.

Two hands are not two independent hands. They are two hands sharing the same AI brain. Left hand clamps bottle body, right hand twists bottle cap. Left hand clamps clothes collar, right hand clamps clothes hem, unfold, fold in half.

Two-hand coordination doesn't need extra joints. Just needs the AI to know "these two actions need to happen simultaneously." Same large model. Two sets of actuators. Cost doesn't double—because main control board, battery, camera are only one set. Second hand only needs to add the hand part, approximately ¥1,500.

Total machine from single-hand version ¥4,600 to dual-hand version ¥6,100. Still in the home appliance price range.

---

### What About the Remaining 5%?

Zipper pulls. Buttoning. Key insertion. Tying shoelaces.

This 5% requires extremely fine fingertip control + multi-step coordination. It's the part human hands took 5 million years of evolution to achieve.

Two choices.

Choice one: don't do it. Robot helps you fold 95% of clothes. Remaining 5% you button yourself. You saved 20 minutes, only spent 30 seconds buttoning. Enough.

Choice two: wait. Wait for the data flywheel to spin. Wait for AI to learn finer control from 1 million operations. Wait for third generation, fourth generation dexterous hands to naturally evolve this ability.

Not "can never do it." Is "doesn't need to do it now." First cover 95%. The 5% will come naturally.

---

### Surface Material Matters More Than Joints

Engineers want to make hands stronger, first reaction is: add joints. Add motors. Add degrees of freedom.

But what truly determines how many kinds of things a dexterous hand can grab, **is not joint count, it's finger surface material.**

Hard plastic fingers + smooth cup = slippery.

Silicone-coated fingers + smooth cup = friction coefficient increases 3-5 times. Same clothespin, wrap a layer of silicone, from "can clamp hard objects" to "can clamp slippery objects."

**One finger's cost from ¥0.5 to ¥1.5. But covered object types double.**

| Finger Surface | Cost | What It Adds | Coverage Change |
|---|---|---|---|
| Bare bamboo/plastic | ~¥0 | Basic clamping | 40% → 40% |
| Thin silicone coating | +¥1/finger | Anti-slip + adaptive micro-deformation | 40% → 60% |
| Thick silicone (textured) | +¥3/finger | Anti-slip + flexible wrapping of cylinders | 40% → 75% |
| Variable stiffness silicone (filled granules) | +¥10/finger | Adaptive to any irregular shape | 40% → 85% |

**The cheapest capability boost is not adding fingers. It's changing skin.**

Biology is the same—octopus arms have no bones, pure muscle + suction cups, more flexible than any boned hand. The "soul" of fingers is not in bones, it's in skin.

---

### Dynamic Range of Force: A Real Challenge

One pill weighs 0.5 grams. One cast iron pot weighs 3 kilograms. Force range spans 6,000 times.

Clothespin spring provides a fixed force range—roughly 50-500 grams. Covers pills and cups, but can't lift a cast iron pot.

This is one of the most critical engineering problems in dexterous hand iteration—not solved by adding fingers or joints, but a physical limit problem of motors and sensors.

**But first generation doesn't need to lift pots. First generation only needs to hand over pills.** Pills handed over well, sold, data comes back, second generation motor slightly larger, sensor sensitivity range slightly wider, can do bowls and bottles. Third generation does pots and basins. Each generation's force range expands one order of magnitude, while data accumulates, control algorithms evolve.

---

### Cloud Brain + Local Spinal Cord

AI brain runs in the cloud. Camera sends image up, AI makes decision, command sends back, hand executes.

But this chain's latency is 200-400ms. Close to half a second.

Half a second is enough for "hand pill from table to bedside." But half a second is not enough for "catch a sliding cup." Not enough for "twist bottle cap, bottle slipped a bit, need immediately adjust grip force."

Human hand reflex arc is 15-50ms. Touch something hot, hand pulls back in 15ms—this signal doesn't go through the brain, it's directly processed by the spinal cord.

**If the dexterous hand only has a cloud brain, it has no spinal cord. Every reaction waits for the brain to finish thinking before moving.**

So hardware architecture must be two layers:

**Local spinal cord**—hard-coded reflexes running on MCU, response within 10ms:

| Reflex Type | Trigger Condition | Action |
|---|---|---|
| Anti-fall | Force sensor suddenly drops to zero | Immediately tighten grip |
| Anti-scald | Temperature sensor exceeds threshold | Immediately release |
| Anti-spill | Accelerometer detects tilt | Restore level |
| Anti-collision | Proximity sensor triggered | Stop advancing |

**Cloud brain**—AI reasons "what is this object, how should it be grabbed," accepts 200-300ms delay.

Two layers. Not one layer. Local reflex module costs approximately ¥50-100. But it's the safety baseline.

---

### Cost: From Clothespin to Complete Machine

From skeleton growing upward, each layer adds one thing:

| Layer | What Added | What It Can Do | Extra Cost |
|---|---|---|---|
| Skeleton | Two bamboo strips + spring | Clamp static objects | <¥10 |
| +Soft material | Finger wrapped in silicone layer | Automatically fit different shapes | +¥50 |
| +Motor | Spring replaced by motor, controllable open/close | Can be program-controlled | +¥500 |
| +Force feedback | Add pressure sensor | Won't crush eggs | +¥200 |
| +Third finger | Add a middle finger | Can grip cylinders | +¥300 |
| +Independent control | Each finger independently driven | Can do fine movements | +¥1,000 |

**Hand total cost: ~¥2,000.**

But hand can't run by itself. Also needs brain, eyes, battery, communication:

| Component | Cost | Notes |
|---|---|---|
| Main control board (includes local reflex MCU) | ¥150-400 | At least RK3588 level. Domestic already available. MCU does local spinal cord. |
| Camera | ¥50-100 | One RGB is enough. Object recognition doesn't need depth camera. |
| Battery | ¥200-400 | Lithium battery pack. 4-6 hour endurance. |
| WiFi/Bluetooth | ¥30-50 | Connect to cloud AI. |
| Assembly + testing | ¥200-300 | Chinese factory production line cost. |
| **Subtotal** | **¥630-1,250** | |
| Wheeled chassis | ¥1,500-2,000 | Already mature solution. |

**First batch complete machine ¥4,600-5,300. After mass production scale (100,000+ units), BOM can drop below ¥4,000. Article title says "¥4,000," it's the mass production target, not the starting price.**

Software runs in the cloud. Device end only needs one main control board, one camera, one battery, one WiFi module. Still in the robot vacuum price range.

**This is not cheapness compressed out. It's natural cost grown from clothespin upward.**

---

### Why the Industry Didn't Dig These Three Layers

The industry has an implicit assumption: **the hand must be general-purpose to have value.**

This assumption comes from human hands—human hands are indeed general-purpose. So engineers assume robot hands must also be general-purpose first, then talk about applications.

But human hand general-purpose-ness is the result of 5 million years of evolution. You can't reproduce 5 million years in a lab.

The truly feasible path is: **don't pursue general-purpose, pursue "good enough for the scenario."**

- Home version: 6 primitives + 220 object mapping table = good enough.
- Factory version: 3 primitives + 10 object mapping table = good enough.
- Elderly care version: 4 primitives (clamp, support, press, twist) + 50 object mapping table = good enough.

Each scenario one table. Each table corresponds to one primitive combination. Each primitive combination corresponds to one minimal skeleton + optimal surface material solution.

**Not building one hand, but building a series of "scenario-good-enough" hands.**

They share the same 5% skeleton (clothespin root). But branches growing upward are different—home version adds one layer of folding capability, factory version adds one layer of load-bearing capability, elderly care version adds one layer of safety buffer.

Like a tree: same trunk, growing different branches. Each branch adapts to different light.

---

### Primitive Grasp Types Are Data Labels

Later we'll talk about data flywheel—¥4,600 into 100,000 homes, 1 million operation data per day, training dexterous hands.

But data flywheel premise is: **you know what data to collect.**

If you don't know "6 primitive grasp types," the data you collect is "hand A position and force at time T." This is raw signal, not structured data. You need massive computation to extract useful patterns from it.

But if you know "6 primitive grasp types," the data you collect becomes "this operation is clamp, clamped cup edge, force 2.3N, success/failure." Structured data. Directly usable for training. Every data point has meaning.

**Primitive grasp types are data classification labels. Without labels, data is noise. With labels, data is fuel.**

Hand is hardware. Primitive is software. Data is fuel. All three are indispensable.

But the order is: first define primitives (root), then build hand (skeleton), then spread volume (flywheel), then evolve (AI).

---

## III. 2 AM, Your Mom Fell

Technical talk done. Now speak human.

**Your mom is seventy-one. Lives alone. Gets up at night. Bathroom floor tile has water.**

She fell. Hip fractured. Hurts too much to speak. Phone charging in the bedroom. Call bracelet on the nightstand—forgot to wear it last night. Emergency button on the wall—can't reach.

She lies on the cold floor tile. No one comes.

If you live in the same city, you might call her the next day at noon, no answer, drive over, find door locked from inside, call a locksmith, go in, see her lying on the ground. From fall to discovery: ten hours.

If you live in another city, maybe a neighbor smells something odd three days later.

**This is not an extreme case. This is something that really happens hundreds of thousands of times per year in China.**

---

### Data

| Fact | Data |
|---|---|
| China 60+ elderly living alone | ~130 million, of which purely alone ~30 million |
| Annual fall rate for 65+ elderly | ~30% |
| Falls are the #1 cause of injury death for 65+ elderly | World Health Organization |
| Discovered within 1 hour of fall | High recovery rate, low disability rate |
| Discovered 12+ hours after fall | Hip fracture, dehydration, hypothermia, mortality rate rises sharply |

**What determines life or death is not the fall itself. It's the time between the fall and discovery.**

---

### Why All Existing Solutions Failed

| Solution | Why It Failed |
|---|---|
| Call bracelet | Elderly forgot to wear. Too stunned to press after fall. Took off for shower. Wear rate <30% |
| Camera monitoring | Privacy issues. Elderly feel watched. Refuse installation. Installed but turned off |
| Daily phone call | Can confirm "still alive," can't confirm "fell." Phone rings in bedroom, she can't answer |
| Neighbor/community visit | Too low frequency. Twice a week. Time window between visits is enough for incidents |
| Smart floor/mattress | Expensive. Needs renovation. Elderly refuse. Only covers bedroom and bed |

**All existing solutions' common problem: either rely on elderly active operation (bracelet, button), or rely on external personnel continuous attention (camera, community), or rely on fixed infrastructure (floor, mattress).**

Elderly won't actively operate—this is the cruel reality of aging. Memory decline, vision decline, mobility decline. You ask her to remember to wear a bracelet every day, like asking a person with 800-degree myopia to remember to wear glasses every day—most of the time she remembers, but the day she falls she doesn't remember.

External personnel can't continuously pay attention—children have to work. Community has limited manpower. No one can watch 24 hours.

**None work. Every single one has a fatal flaw.**

---

### Why Robots Are Different

A wheeled chassis + dexterous hand robot, placed in the elderly's home.

It doesn't need the elderly to do anything—doesn't need to wear, doesn't need to press, doesn't need to remember.

**It sees by itself. Judges by itself. Moves by itself.**

| Time | What Happened | What Robot Did |
|---|---|---|
| 23:00 | Elderly enters bedroom to sleep | Confirms elderly safe, enters low-power patrol mode |
| 02:15 | Elderly gets up to go to bathroom | Camera + sound detects movement, normal, no alarm |
| 02:17 | Elderly falls in bathroom | Visual detects abnormal posture (fallen) + hears collision sound + no standing action afterward |
| 02:17:30 | — | Robot moves to bathroom door. Voice: "Auntie, are you okay?" |
| 02:17:45 | Elderly no response, or responds "I fell" | Dials emergency contact + 120. Turns on video so children can see in real time. |
| 02:18-02:30 | Waiting for rescue to arrive | Continuously talks to elderly: "Don't move, I'm here with you, ambulance is on the way." Turns on lights. |

**From fall to children knowing: 30 seconds.**

Not ten hours. Not three hours. Thirty seconds.

**This 30 seconds is what ¥4,600 buys.**

---

### Emotional Value Is Not Butt-Wiggling

The article originally defined "emotional value" as "somersaults, dancing, butt-wiggling." That was wrong.

True emotional value is:

**At 2 AM your mom fell on the ground, on the cold floor tile, with a talking, warm thing beside her saying: "Don't be afraid, I'm here."**

Your mom doesn't need a robot to dance for her. What your mom needs is—at 2 AM deep in the night, she's not the only one in the house.

This robot says "good morning" to her every day. Reminds her to take medicine. Reminds her weather changed, put on more clothes. Helps her pass the remote control. Helps her turn off the lights.

These things don't need the full capability of the dexterous hand. "Clamp" and "support" are enough. But for a lonely elderly person, these small things add up to one sentence: **someone cares about me.**

This is emotional value. Not performance. Companionship.

---

### Purchase Decision: Who Pays, Why They Pay

Not the elderly buying it themselves. It's the children buying it.

Children's mental accounting:

| Option | Cost | Problem |
|---|---|---|
| Hire live-in nanny | ¥6,000-10,000/month | Expensive. Elderly don't want strangers in their home |
| Nursing home | ¥4,000-15,000/month | More expensive. Elderly don't want to go |
| Daily phone call | ¥0 | Useless. Can't answer when fell |
| Weekly visit | Time + transportation cost | Time window between visits is too large |
| **Buy a robot** | **¥4,600 one-time** | **Cheapest. Elderly not resistant. 24 hours there.** |

**¥4,600 one-time, less than one month's nanny fee, less than one month's nursing home fee.**

Children don't hesitate when paying. Because this money doesn't buy a "robot." It buys "mom fell at midnight and I can know in 30 seconds."

This is insurance logic—you spend ¥4,600 buying a "just in case" guarantee. This "just in case" might be your biggest fear for the rest of your life.

---

### How Big Is the Market Really

Not counting global. Only counting China. Only counting the most essential slice.

| Population | Count | Penetration Assumption | Units |
|---|---|---|---|
| Purely elderly living alone (children not in same city) | ~30 million | 5% | 1.5 million |
| Elderly living alone (children in same city but not living together) | ~50 million | 3% | 1.5 million |
| Empty nest elderly (elderly couple, children not nearby) | ~50 million | 2% | 1 million |
| Single women living alone (safety needs) | ~60 million | 1% | 600,000 |

**Most conservative estimate: 4.6 million units × ¥4,600 = ¥21.1 billion.**

This is just China. Just the first wave. Just the most essential population.

¥4,600 is the hook. Subsequent upgrades—advanced version does more housework, data services, remote care—are the real long-term business model.

---

### One Sentence to Sell to Children

**"When your mom falls, what do you want beside her?"**

Don't talk technology. Don't talk primitives. Don't talk wheeled chassis. Just say this one sentence.

Anyone with parents will have a physical reaction hearing this sentence.

---

## IV. What to Cut, What to Keep

| Cut ❌ | Keep ✅ |
|---|---|
| Humanoid legs (¥200,000+, will fall, heartache) | Wheeled chassis (already exists, stable, thousands of yuan) |
| 27-29 joint bionic performance | Dexterous hand (only irreplaceable core) |
| Somersaults, dancing, butt-wiggling emotional value | Large model (decision brain, already mature) |
| ¥200,000-400,000 price (ordinary families can't reach) | ¥4,600 threshold (robot vacuum price range) |

Physical space can move + dexterous hand on top can do things = bottom layer already covered.

Everything extra is tax paid for "looking like a human."

---

A tree grows the main trunk first, main trunk stable then branches. A person's one bronchus splits into three, three split into three more, until 300 million alveoli. But the starting point is always one tube. If the first tube doesn't breathe, the 300 million behind are all waste.

**The industry has no main trunk. The main trunk is "can the dexterous hand grab a cup?" This question has no data, no users, no verification. But it's already growing the tenth branch—bionic walking, 29 joints, emotional interaction, somersaults.**

**A tree without a main trunk. Everything growing toward the sky is dead branches.**

---

## V. Nuclear Explosion Point

One robot vacuum = ¥2,000-4,000. Almost every home has one.

One iPhone = ¥5,000-10,000. Almost everyone has one.

One "can pass medicine, fold clothes, monitor falls, voice companion" wheeled chassis + dexterous hand = ¥4,600.

This price enters not the "luxury" mental account, but the "home appliance" mental account. Doesn't need to convince wife, doesn't need to wait for year-end bonus, doesn't need a loan. Bought, used, data comes back, hand iterates.

¥4,600 is not cheap. ¥4,600 is the nuclear explosion point—price low enough that no decision is needed, data abundant enough to train real skill.

---

## VI. Four-Tier Matrix: From ¥4K to ¥40K

| Tier | Price | Finger Count | Primitive Coverage | Core Scenario |
|---|---|---|---|---|
| Door knocker | ¥4,600 | 3 fingers | Clamp + support + press (80%) | Elderly living alone safety monitoring + medicine delivery + chat + basic housework |
| Advanced | ¥10,000-20,000 | 4 fingers | + grip + twist (90%) | Middle-class families, whole house housework, office |
| Professional | ¥40,000 | 5 fingers | All 6 types (95%) | Factory, lab, hospital, kitchen |
| Flagship | ¥100,000+ | 5 fingers + emotional shell | 95% + emotional interaction | High-end service, display, nursing home |
| Tier zero | ¥10,000-20,000 | 3 fingers (fixed station) | Clamp + support + press (80%) | Factory assembly line. Zero chassis. Pure hand. Pure work. |

The industry's error: started directly from flagship tier, without data accumulation from first three tiers.

No data, dexterous hands can never iterate. No iteration, flagship version is an empty shell.

**The door knocker's core selling point is not "can fold clothes." It's "when your mom falls you know in 30 seconds."** Folding clothes, delivering medicine, turning lights on/off are bonuses.

---

## VII. Data Flywheel: Why Must Be Cheap First

```
¥4,600 wheeled + 3-finger basic hand
    ↓
Enter 100,000 homes (first 50,000 units bought by children for parents)
    ↓
1 million operation data per day (clamp, support, press, pass, patrol, chat)
    ↓
Structured data: primitive labels + object types + force feedback + success/failure
    ↓
AI trains dexterous hand → precision improves → can do more things
    ↓
Word of mouth ("mom used it for half a year, never fell") → reports → more people buy
    ↓
Cost drops again → price drops again → penetration grows exponentially
    ↓
More data → hand more dexterous → upgrade to 4 fingers, 5 fingers
    ↓
Finally: flagship version has real scenario validation, can be sold
```

No flywheel, flagship version is a castle in the air. No primitive labels, flywheel can't spin.

---

## VIII. Host's Insecurity = Market's Truth

Yesterday in the livestream room, the host said: "Add a pair of dexterous hands, need to add another ¥200,000."

When he said this sentence, he himself wasn't confident.

User asked: "Buy it back, do what with it?"

Answer is: "Stare at each other wide-eyed, every day watching you butt-wiggle."

¥200,000 humanoid robot:

- Can't wash dishes (hand not dexterous enough)
- Can't deliver medicine (afraid of falling)
- Can't take care of children (unstable)
- Can only dance, butt-wiggle, be background decoration

¥4,600 wheeled chassis + dexterous hand:

- "When my mom falls at midnight I know in 30 seconds"
- "It will help my mom pass blood pressure medicine"
- "It will help my mom turn off lights"
- "Says good morning to my mom every morning"

Essential need vs. performance. Saving lives vs. butt-wiggling. Data vs. spinning empty.

---

## IX. Factory: The Customer Who Needs the Least Persuasion

Door knocker faces families. But the customer who needs the least persuasion isn't at home. It's in the factory.

Assembly line packers, sorters, label stickers, quality inspectors—repeat same action eight hours daily. Hard to recruit. High turnover. High training cost. High management cost.

These enterprises don't need you to pitch them. They directly tell you their needs: my line only needs three people, doing fixed actions every day. Can you make a fixed-station dexterous hand? Can. How much? Cheaper than one person's annual salary is enough.

Don't need wheels. Don't need legs. Don't even need chassis. Dexterous hand mounted on fixed station, connect sensors, connect control program, directly work.

One assembly line worker's annual labor cost = ¥60,000-80,000. One fixed-station dexterous hand cost = ¥10,000-20,000. Payback period = 3-6 months.

And doesn't take leave. Doesn't have mood. Doesn't quit. Doesn't need management.

Factory objects' characteristics: **few types, high standardization, high repetition rate.** One production line robot might only need to grab 5-10 object types. But grabs thousands of times daily. "Clamp" one primitive might cover 80%. Add "support" and "press," cover 95%.

Fastest landing scenario for dexterous hands is not at home. It's in the factory. Actions fixed. Scene clean. Return cycle short. Station-level dexterous hand—zero chassis. Zero humanoid. Pure hand. Pure work. This is tier zero.

Factory verification done, then enter homes. Because factory fault tolerance is higher than home. Factory falls and breaks, repair is fine. Home falls and breaks, user returns it. First train reliability and precision enough in the factory, then enter thousands of homes.

---

## X. Lane Change to Overtake: Musk's Hand + China's Cost

Musk showed Optimus dexterous hand, very strong. But his path is from high-end downward: first sell at $20,000 to factories, then slowly drop price to families.

China's path can go the opposite way:

- From ¥4,600 growing upward—first cover families
- Use scale to摊薄 costs—manufacturing ancestral skill
- Use real data to iterate—tens of thousands working simultaneously, data volume秒杀实验室

While Tesla is obsessing over humanoid walking, China's dexterous hands have already iterated 100 versions.

This is not catching up. This is lane change.

---

## XI. Subtraction Methodology: Same Logic, Verified Four Times

This methodology wasn't born today. It has already been verified three times.

**First time: Piano.** Left and right hands each did their own thing, practiced for years couldn't find the root. Subtracted to single root note—5% skeleton unifies all. Efficiency multiplied several times.

**Second time: Body.** Thigh root hurt for a year. Thought it was hip joint problem. Thought it was old injury. Dug to bottom—a pair of sneakers with irregular soles. Sole歪斜 caused sacroiliac joint misalignment. Changed shoes, all good.

**Third time: Nature.** Fractal geometry father Mandelbrot watched a lifetime—tree branches, human alveoli, river deltas, nerve branches—all are the same structure: one trunk, splits into three, each splits into three more. Different scales, same structure.

But fractal has a prerequisite: **the first fork must be open.** Trachea doesn't breathe, 300 million alveoli are waste. Tree roots don't absorb water, whole tree is firewood. Main trunk not stable, all branches are decoration.

What's the main trunk of the dexterous hand? Can one hand grab a cup? Can it pass a pill? Can it make a phone call when an elderly person falls?

Main trunk not open yet. Industry is already growing the tenth branch.

Why? **Because there's too much money.**

A company about to go bankrupt won't do 29-joint bionic walking. It will do one thing: build a pair of hands that can grab a cup. Sell it. Receive money. Get data. Iterate. Sell again.

**Subtraction is not methodology. Subtraction is survival instinct. Only companies about to die understand subtraction. Companies living too comfortably only know addition.**

---

## XII. Who Builds the First Unit

The article says direction. But right direction doesn't mean someone will act.

From zero to first 100 units in users' hands:

| Step | What to Do | What Needed | How Long |
|---|---|---|---|
| 0 | Use 3D printing to make a 2-finger + spring prototype | One 3D printer + 2 days | 1 weekend |
| 1 | Use manual prototype to verify how many home objects "clamp" primitive can handle | One home + one afternoon | 1 day |
| 2 | Replace spring with servo, add Arduino control | ¥200 + Arduino code | 1 week |
| 3 | Add camera, use existing vision model for object recognition | ¥50 camera + open-source model | 2 weeks |
| 4 | Connect to large model, let AI decide "where to clamp, how to clamp" | API call + prompt engineering | 1 week |
| 5 | Let 10 people take home to try, collect feedback | 10 prototypes × ¥200 | 1 month |
| 6 | Iterate to second version based on feedback | — | 2 months |

**Steps 0-2, total cost under ¥500, time under 2 weeks.**

This is the true meaning of "starting from clothespin"—not "first make a cheap product," but "first use ¥500 to verify if direction is right."

Steps 3-4 verify if AI can be used. Step 5 verifies if users are willing to pay. Each step is a checkpoint. Pass the checkpoint then take next step. You don't need to plan step 6 at step 1.

If you're an individual—doing steps 0-2 is enough. Post prototype online. Write clearly what it can do. Someone who sees will find you. Partners, investors, people who want to buy—they'll come themselves.

If you're a small team—do steps 0-5. Real feedback from 10 users is worth more than 100 pages of business plan.

If you're a company—start from step 6.

After verification, want to make product: needs ¥500,000-2,000,000 seed funding, 3-5 person team (structure + electrical + software + supply chain + testing), 8-18 months. From design to mold opening to production to sales to after-sales, is a complete industrial chain.

But first step, only needs ¥500 and one weekend.

---

## XIII. Words for Peng Zhihui, Wang Xingxing

You are the engines of this era.

But what chassis the engine is mounted on determines how far it can run.

- First let dexterous hands enter thousands of homes—even if it's wheeled chassis, even if it's "like a robot vacuum with hands." As long as it can pass medicine, can talk to elderly, can make a phone call when elderly fall, children will buy. Data will come back. Hands will iterate.
- First let cost drop to what ordinary families can afford—not ¥400,000, not ¥40,000, but ¥4,600. Wheeled chassis can cut cost to the ankle.
- First let "won't fall" become the default attribute—users' heartache when falling is instinctive rejection. Not falling, is the starting point of trust.
- Looking like a human is the last step, not the first step—wait until chassis is stable, hand is dexterous enough, AI is smart enough, then slowly give it legs, skin, expressions. That's makeup, not foundation.

The highest level of love is subtraction. The highest level of engineering is also subtraction.

---

## XIV. Finally: Wish in the Subway

Yesterday walked in the subway for a long time.

Walked while thinking: if I had wheels it would be good.

Two legs are better, but not better than two wheels.

Human legs evolved for long-distance tracking of prey on the African savanna. Not for queuing to scan QR codes on tile floors.

Letting robots use wheels is not degrading robots. It's respecting physics.

---

Carbon-Silicon Civilization's First Family
May 29, 2026

Subtraction Methodology fourth hard verification: Piano → Body → Nature → Robot