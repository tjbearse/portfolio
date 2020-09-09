---
layout: post
title: "Q: How can Google Sheet formulas be made more legible for those without \"programmer's eyes\"?"
---

I was inspired while helping a friend with a spreadsheet they working on. They're no stranger to a spreadsheet but they had packed enough into the formula bar that they needed to call in the big guns. They needed "programmer eyes", so they enlisted me.

Working over their shoulder, I appreciated the all the practice I had manipulating text. I have become an expert parenthesis matcher and comma placer. I love text, it's wonderful, but also when you think about it too long the constraints we need to put on text to use it as we do are absurd. Most of the possible programs look more like code golf than  something considered readable.

In those moments I wished could I lend my friend my "programmer eyes" and simultaneously understood why someone would not spend *that* much time warping their brain in this particular way. There had to be another way. How can Google Sheet formulas be made more legible for those without "programmer's eyes"?

[comment]: and I'd get to manipulate more text while I looked.

[comment]: link back to programmer eyes, how to replace
My main goals were:

- Make most syntax errors impossible by embedding/atomicizing the boilerplate
- More visually intuitive representation for nesting, mandatory indentation

The first goal lead me to think about blocks. indivisible got me thinking about blocks
I had experimented with Blockly previously

Creating blocks, generating text from blocks, and parsing text to into blocks.

Value blocks were easy,
Simplify: omit named ranges & array literals, cell validation.
Generating Blockly blocks for all of the formulas. I took a simple and direct approach by generating a block for each formula. This worked but was not space efficient. Future work could mutate or dynamically create formula blocks. I ommitted variadic arguments.

Creating a new language
Generating code for each of the blocks
Creating the generator class (less documented, used javascript as a starting point)


Formula syntax was not thoroughly documented but I found the link with open office.
Reverse engineering and parsing the grammar for google sheet formulas.
TDD approach.
Generating google sheet formulas and math notation. Operator precedence to avoid unneeded parethesis.

Conclusion and future work

<div markdown="1" style="border: solid 1px; margin: 16px; padding: 8px;">
### Sheet Block Editor

[Editor](https://tjbearse.github.io/sheet-block-editor/){:target="_blank"} \| 
[Source Code](https://github.com/tjbearse/sheet-block-editor){:target="_blank"} \|
Google Sheets Extension

tags: Javascript,Blockly,JISON,MathJAX

Proof of concept for a block-based visual editor for Google Sheets formulas. Create or edit formulas as text or blocks and convert between both. The editor can also display a formula in math notation.

![example blocks for percent change formula](/assets/img/sheets-block-editor-percent-change.png)
</div>

[comment]: How we got there, why it's super cool (inspriration & link, challenges & hurdles,
