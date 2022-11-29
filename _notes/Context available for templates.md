---
title: Context available for templates
tags: doc
layout: note 
---

## Context available for templates 

The included information is configurable in the settings of the plugin. See [[Considered Context]].

### title
The `title` of the document.  

### selection 
`selection` is the selected text according to the method explained in [[Considered Context]].

### context 
includes YAML Varaibles, Title*, StaredHeadings*, Selection {{}}

![[context.excalidraw.svg]]
### frontmatter
The frontmatter variables are available directly or in `frontmatter`  variable (object). 

![[frontmatterTemplates.excalidraw.svg]]
### headings
It is an object that contains all the headings with their content.
![[HeadingsTemplate.excalidraw.svg]]

### children
It is an array that includes the cited notes. You can access it through `children`.

![[childrenNotes.excalidraw.svg]]

### mentions
`mentions` is an object that includes two arrays: **linked** and **unlinked**.  
Each array contains the paragraphs where document is mentioned. 

