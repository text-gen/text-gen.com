---
title: Considered Context
tags: doc
layout: note 
---

> [!note] Considered Context
> The [[Transformer]] needs **context** to generate accurate text. So all the data that we will send with the [[prompt]], we call it **Considered Context**.


# With Basic Commands
See basic commands in [[Commands]]. 
## Using the selection
It can be : 
- The selected text.
- The line where the cursor is, **If it is not empty**.
- the full content, If **line is empty**.

![[Considered Context 2022-11-21 17.41.47.excalidraw.svg]]

## Adding the document title 
You can add the ``title`` for the considered context by enabling it from the plugin's settings. 
![[Pasted image 20221121175147.png]]

## Adding the stared blocks 
If you want to include a specific section in a long article, you can add the heading content by adding an asterisk `*`  at the end of the heading. 

* You need to enable the option in the settings.
![[Pasted image 20221121175528.png]]
* Example 
```
# Title* 
This is a title
# Introduction
write introduction
```

## Adding Metadata Variables 
You can add any information you want in the metadata or frontmatter variables (This will be considered in `Generate Text (with Metadata).` You must avoid [[YAML keywords]] used by the plugin. 
For example: 
```YMAL
---
title: Considered Context
tags: doc
layout: note 
---
```

# With Template Commands
Starting from version 0.1.0, [[Templates]] are supported in **Text Generator Plugin**.

Ensure the information is available on the template for you to use in the Plugin's settings.

![[Pasted image 20221206193818.png]]
More information about their usage is in [[Templates]]. 