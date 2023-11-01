---
title: Context available for templates
tags: doc
layout: note 
---

## Context available for templates 


> [!note] Template engine
> For more information about the template engine, please see [handlebarsjs](https://handlebarsjs.com/)

> [!warning] Template engine
> The included information is optional in the settings of the plugin. See [[Considered Context]].
 
![[Context available for templates 2023-11-01 10.50.58.svg]]
### title
The `title` of the document.  

### selection 
`selection` is the selected text according to the method explained in [[Considered Context]].

### selections (new v0.2.17) 
It is an array that includes the all selections. You can access it through `selections`.

### context 
includes YAML Variables, Title*, StaredHeadings*, Selection {{}}

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

### highlights
It is an array that includes obsidian ==highlights== .  You can access it through `highlights`.

### extractions (v0.3.1)
`extractions` is an object that includes three arrays: **PDFExtractor**, **WebPageExtractor**,**YoutubeExtractor**, and **AudioExtractor**.  
* **PDFExtractor** is an array that contains the embedded PDF documents in the note in text format.
* **WebPageExtractor** is an array that contains the content of all the external links in the note.
* **YoutubeExtractor** is an array that contains the content of all transcriptions of YouTube videos.
* **AudioExtractor** is an array that contains the content of all transcriptions of audio notes processed through Whisper OpenAI (file size limit: 25MB).
