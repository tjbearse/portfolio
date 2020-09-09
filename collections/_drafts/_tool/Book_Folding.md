---
layout: post
title: "Book Folding"
---
Traced SVG paths and translated to book space

What is book folding?

What I want

1. Draw text. SVG text to svg path. Cut paths along a horizontal line to break cycles.
2. Mapping from page,cm on the book => cm,cm on the svg
3. Want to get y value for each x (page) but svg paths are accessible via t, the proportion along the path.
 1. Started with binary search for t matching x value. Precision varied a lot. Repetitive calculations
 2. Partition heuristic. Performed poorly near vertical areas
 3. Incremental search heuristic from previous result (performed poorly on near vertical areas)
 4. T lookup table for first approximation
4. Transform back to book units & display table

‌
