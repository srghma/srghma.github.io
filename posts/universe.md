# My view on this universe

## (Why I act as if) God doesn't exist (I mean I don't belive in religion and power of prayers)

(from "God as illusion" by Charles Dockins)

The atheist is the one that gives 99% probability that god doesnt exist. I am an atheist by this definition.

We cannot prove that god doesnt exist, BUT

1. We can prove that souls don't exist (later).
2. We know HOW life was "created"

<pre>

Life appeared like this:
1. in the "infinite" (?) universe appeared "infinite" (?) number of atoms
2. atoms started to connect together into molecules with random properties
3. some molecules DID NOT have the "self-replicate" property (they didnt make copies of themselves), but others DID
4. some molecules were unstable and died, but OUR ancestor "self-replicating molecule-robot" DIDN'T, AND evolved into us.

THIS IS NOT similar to "from nothing a plane was created", because:
1. we need (for example) just 1000 atoms (actually less) to arrange properly to create a "self-replicating molecule-robot"
2. So, it was only a matter of time that this will happen in "infinite" universe.

SUMMARY:
1. We are descendants of "Self-replicating molecules-robots" that "have been created & created now & will be created untill the end of universe" RANDOMLY.
2. Just like in a "Game of life" automata: you generate random field, give rules, and self-replicating structures appear
3. The "death" property is required for "self-replicating molecule-robots" BECAUSE it allows evolution
</pre>

3. We don't know why universe was created, but there is an Anthropic principle (we are here because we are here, lol)

SUMMARY:
god is an extra variable to a function that works fine without extra variable. (about this later)

## Why souls don't exist:

#### `1.` I have seen code of "deep learning" and "human-like" neural networks, THUS I think there is no "magic soup" in the brain.

<!--
<details><pre>
    !!!!NOT FINISHED, DONT READ!!!!!
    
    Networks types:
    1. "deep learning" - e.g. input is a pixel image is matrix AND memory is matrix too => input and memory are compared by dot-operator (gives another matrix) => then output matrix is coverted into percent value between 0% and 100%
    2. "human-like"  [https://youtu.be/qv6UVOQ0F44?t=216](https://youtu.be/qv6UVOQ0F44?t=216)

    "Human-like" neural network works like this:

    a. each "axon" is an UPDATEABLE chunk of memory that contains a number from 0.0 to 1.0
    b. IF the state of "axon" is more or equal to 0.5 THEN signal goes through axon ELSE doesnt
    c. "axon" have 1 input and 1 output
    d. "neuron" is just a connection, only in code, it collects input from axons, finds average input (sum of inputs divided by length of an input array) and outputs input to other axons

    Process

    You input an image data, like `[0.0, 1.0, 0.5]` (where 0 is white, 1 is black, 0.5 is gray).

    It goes through axons and neurons, and can output for example:
      an array `[0.0, 0.5]` which is the location of eyes for example
      OR just a one number DO_I_SEE_A_DOG (probability from 0.0 to 1.0)

    1. FOR EXAMPLE your neural network outputted DO_I_SEE_A_DOG probability 0.0 on an image with a dog. You know the probability should be 1.0. HOW TO UPDATE WEIGHTS so that is outputs 1.0 number?
    2. You make a copy of your neural network, You update RANDOMLY the weights, +0.1 to one weight, -0.1 to other weight of axon
    3. IF new neural network weights a better THEN replace old "brain" with new "brain" ELSE discard "new" brain, try again to create a "new" brain.

    ```javascript
    # image = load_image()
    image = [
      0.0, # white
      1.0, # black
      0.5, # grey
    ]

    const numberOfInputs = 3 # image.length - 1
    const numberOfNeuronsInHiddenLayer = 4 # there is only one hidden layer, but could be many
    const numberOfOutputs = 1 # because the doISeeDogProbability is only one number from 0.0 (zero percent probability) to 1.0 (100 percent probability)

    const makeAnArrayOfZerosWithLenght = (lengthOfArray) = Array.from({length: lengthOfArray}, () => 0.0)

    assert(makeAnArrayOfZerosWithLenght(3), [0.0, 0.0, 0.0])

    const axonsFromInputToLayer1 = [
      makeAnArrayOfZerosWithLenght(numberOfNeuronsInHiddenLayer), # 1st input to hidden layer
      makeAnArrayOfZerosWithLenght(numberOfNeuronsInHiddenLayer), # 2d input to hidden layer
      makeAnArrayOfZerosWithLenght(numberOfNeuronsInHiddenLayer), # 3d input to hidden layer
      makeAnArrayOfZerosWithLenght(numberOfNeuronsInHiddenLayer), # 4th input to hidden layer
    ]

    const axonsFromLayer1ToOutput = makeAnArrayOfZerosWithLenght(numberOfNeuronsInHiddenLayer)

    TODO: finish
    ```
   </pre>

   <img src="https://user-images.githubusercontent.com/7573215/162324220-cdc1699b-7090-4d9e-be93-2d72ef67adb4.png" alt="Banner" width="100%">
</details>
-->

#### `2.` (mine) souls don't exist because the "atom-per-atom cloning" is possible

By this I mean that there is NOTHING in laws of physics that disallows us to:

<pre translate=yes>
  a. (in place A) scan a body of a human for "position" and "type" of each atom
  b. transfer this information to place B
  c. make a copy of human body from atoms from the air
  d. destroy original body (optional)
</pre>

Let's call `a,b,c` - the "atom-per-atom cloning", and `a,b,c,d` - the "atom-per-atom teleportation"

<details><pre>
I believe, the thought process of a new human will start from where the old body stopped thinking, because the memory is just a ratio of Calcium to Potassium (for example, don't remember), and a neuron is just memory device that holds a number from 0.0 to 1.0

IF "average signal value to the neuron" is more than "neuron state value" THEN signal is passed to other axons ELSE not passed

NOTE that teleporation is not like a quantum teleporation of electrons
</pre></details>

THUS (!!!!): IF you do "atom-per-atom cloning" (i.e. one does NOT destroy "original body" - step `d`) THEN

<pre translate=yes>
  a. Did the original soul divide onto two souls?
  b. or Now the "original soul" operates two bodies from a heaven ?? O_O
</pre>

NO, souls don't exist (!!!)

"Occam's razor" principle - from two explanations of same incident one should prefer the explanation that have less "moving parts"/variables.

Soul is an additional variable `c` to a function `f(a, b, c) { ...body of function... }` (`f` is name of function, `a` and `b` and `c` are arguments) that works fine without additional variable `c` (with `a` and `b` variables only) - it means the variable `c` is not used in a body of a function!


#### `3.` (Sam Harris proof) https://en.wikipedia.org/wiki/Alien_hand_syndrome

Souls don't exist because one can divide the connection between two hemispheres (a little, just like this is done to treat epilepsy), and now human body will act as if there TWO humans live in ONE body (e.g. one hand is putting closes on, while the other puts them off)

#### `4.` (from "Harry Potter and methods of rationality" by Eliezer Yudkowsky) souls don't exist because brain injuries DO EXIST

A guy was a good man, then his head was injured and he became evil. SOUL?

## What will happen after death?

https://www.ted.com/talks/stephen_cave_the_4_stories_we_tell_ourselves_about_death

Seems like:
1. The same that was before your was born
2. Same that happens when you are out of conciousness

## Who we are in this universe

From:
1. ["Cosmology and the arrow of time: Sean Carroll at TEDxCaltech"](https://www.youtube.com/watch?v=WMaTyg8wR4Y)
2. and most importantly ["Sean Carroll - The Passage of Time & the Meaning of Life"](https://www.youtube.com/watch?v=7BH6XCRZad8)

<pre translate=yes>
Imagine a cup, in a cup there is:
1. (at the bottom) a coffee 
2. (at the middle) some thing that separates coffee and milk, e.g. from plastic
3. (at the top) a milk

then imagine a separation magically disappeared. What will happen next is that coffee and milk will start to slowly mix together AND created tornados (e.g. tornados of milk in the coffee OR tornados of coffee in the milk)

WE ARE these little tornados in a cup (on a border of coffee and milk, when they are mixed together)

1. coffee and milk are fully separated - beginning of universe, LOW ENTROPY
2. coffee and milk starts to mix - human civilization then black holes are everywhere, but black holes evaporate, HIGH ENTROPY
3. coffee and milk are fully mixed - all black holes have evaporated, only the plain energy, LOW ENTROPY again

Soon the process will repeat, all energy combinations will be tried.

Then, in one place, there will be a combination that is the same (or almost the same) as the "begging of universe" combination.

This is the New universe, like a bubble amongst other bubbles (other expanding universes in multiverse), that have appeared in a glue of "plane energy".
</pre>

---------

<pre translate=yes>
We are like hexagons that appear on a mercury when it is heated

1. Low temperature - no cells, LOW ENTROPY
2. Mercury is heated - hexagonal cells appear (this allows heat/entropy to pass through to the outer world easier?), HIGH ENTROPY
3. Heated more - no cells, LOW ENTROPY again

https://bartoszmilewski.com/2018/03/28/life-and-thermal-death-in-the-universe/
</pre>

---------

<pre translate=yes>
Q: What IS an entropy?
A: entropy is number that shows HOW MANY "different arrangements of atoms" would give the "picture that an OBSERVER (human) is seeing"

By this I mean: the definition of entropy is tied to a fact, that the only way for us (humans / observers / instruments that can detect and react on changes) to find the "location" and "speed" of an object (e.g. atom) is by using a light, but light is a wave

https://www.youtube.com/watch?v=MBnnXbOM5S4

To know a position of a plane - radar should emanate pulses of signals (1 pulse - wait response, wait till it reflects from the flying plane and returns - REPEAT)
To know a speed of a plane - radar should emanate very high-frequency waves, higher frequency = higher speed precicion

THUS
1. there is a limit to how much "pixels" we can get when we study a bunch of atoms in a box
2. atoms are hot (move fast) - more "exact positions" of atoms could give "a picture we see"
3. atoms are cold (e.g. 0 kelvin, no movement) - only one position of atoms could give such picture
</pre>

<pre translate=yes>
https://youtube.com/watch?v=_eC14GonZnU

Stephen Wolfram have found some basic principles that are even more basic than principles of our universe itself. These principles allow to generate many universes. One of such universes is very similar to ours.

> The quantum theory follows very beautifully from this: the recipient state cannot be updated before originator of a signal is updated
</pre>


## P.S.

> Mine: If God from Bible is laws of universe, then hell and heaven is a memory of people.

> Jordan Peterson: The great flood story is about that you should prepare, because flood is coming. The Cain and Avel story - is that it's only a statement of a fact that people can envy your success and maybe even kill you

> We sell today for tomorrow. We do hard work now, to live better later (Jordan Peterson)

> Easy decisions - hard life, hard decisions - easy life

> Too much order - tyranny, too little - chaos. (Jordan Peterson)

> It's harder to write a poem without "rules/order" or "starting point".

> Elon Musk: "the more you know, the better questions you can ask"

> Naval: starting from 18 years old, I was writing a diary every year, at the end of the year, about "what I wish I would do this year better". Later I would notice one and only one pattern: I wish I would be less angry and emotional in hard situations.

> Michio Kaku: in 2060 wee will have a device that will be making food from atoms in the air.

> Art of learning: don't fear to invest into failure. Don't hide your true emotions, instead use them (e.g. if music doesn't allow you to learn, don't close a window, try to use it's rithm)

> I am a citizen of a universe, not a country

> Harry Potter and methods of rationality: imagine you were born in on a planet with a tradition to beat people with a stick to a head every day at 12pm. Soon people would tell that it's actually good to be beaten, e.g. your scull becomes stronger (they change perception of problem to reduce the cognitive dissonance). The same is with our attitude to a death: somehow we think that being dead or unconscious is better than conscious.

> Harry Potter and methods of rationality: imagine you came to work and see that a guy beats a printer. The first thing you will think is that a guy have problems with a head or a bad character, but the guy will think that he is a good person that just had a bad day
