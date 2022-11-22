---
title: Context available for templates
tags: doc
layout: note 
---

## Context available for templates 

The included information is configurable in the settings of the plugin see [[Considered Context]].

### context 
includes YAML Varaibles, Title*, StaredHeadings*, Selection

![[context.excalidraw.svg]]
### frontmatter
The frontmatter varaibles are available directly or in `frontmatter`  varaible (object). 

![[frontmatterTemplates.excalidraw.svg]]
### headings
It is an object contains all the headings with their content.
![[HeadingsTemplate.excalidraw.svg]]

### children
It is an array that includes the cited notes. You can access it throught `{{children[0]}}` 

![[childrenNotes.excalidraw.svg]]

### mentions
`mentions` is an object that include two arrays: **linked** and **unliked**.  
The array contains the paragraphs where note is mentioned. 

