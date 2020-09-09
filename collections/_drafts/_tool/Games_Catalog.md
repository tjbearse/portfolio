---
layout: post
title: "Games Catalog"
---
Online playnite clone

Previous iteration an experiment on couchdb. Too much fun making a UI with virtualized tables, DB, and api at the same time to get a usable project.

‌

Starting over for a practical version focusing on the API integrations. Used airtable as a combination DB + UI.

- Download games from platform, dedup, upload (steam, [http://itch.io](http://itch.io "smartCard-inline") )
- Fetch metadata from IGDB
- Dedup by metadata match and naming heuristics
- CLI interface, logging

‌

Testing with mock services

Fun side project of Parser Combinator to parse airtable formulas

‌

Integrate with airtable. Quickly hit record limit.

Fit the need but in use we realized a significant gap from the playnite experience. Airtable UI does not support quick swap between filter values, e.g. category in categories. You must make a view for each. No ephemeral views.

‌

Next steps for the project would be to further explore adapting the schema and uploader to locally hosted document db (probably keeping support for airtable working as an exercise).  Separate pass to resurrect my experimental V1 UI.
