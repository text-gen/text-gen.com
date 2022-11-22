---
title: Considered Context
tags: doc
layout: note 
---

> [!note] Considered Context
> To generate an accurate text the [[Transformer]] needs context. So all the data that we will send with the [[prompt]], we call it **Considered Context**.


# Without Templates

## Using selection

It can be : 
- The selected text.
- The line where the cursor is, **If it is not empty**.
- the whole content, If **line is empty**.

![[Considered Context 2022-11-21 17.41.47.excalidraw.svg]]

## Adding the document title 
You can add the title for the considered context by enabling it form the settings of the plugin. 
![[Pasted image 20221121175147.png]]

## Adding the stared blocks 

If you're working on a long article and you want to include a specific sections. You add any heading content by adding start `*` at the end of the heading.  You need to enable the option in the settings. For example: 
```
# Title* 
This is a title
# Introduction
write introduction
```
"
Considered context is the content that will be sent to OpenAI. The considered context is specified by the the selection first.

![[Pasted image 20221121175528.png]]


## Adding Metadata Variables 
You can add any information that you want in metadata or frontmatter variables (This is will be considered in `Generate Text (with Metadata)` you need just to avoid [[YAML keywords]] used by the plugin. 
For example: 
```YMAL
---
title: Considered Context
tags: doc
layout: note 
---
```


# With templates 
Starting from version 0.1.0, [[Templates]] are supported in Text Generator.

You need to enbale the infromation that you will be available on the template from the plugin settings:

![[Pasted image 20221121182509.png]]
More information about their usage is in [[Templates]]. 