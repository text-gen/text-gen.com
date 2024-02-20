---
title: Generate Text (use Metadata)
tags: 
layout: note 
---
> [!note] Generate Text (use Metadata)
> "**Generate Text (use Metadata)**" generates a text based on *the selected text and the metadata in the frontmatter*  and insert it on the current cursor position. See [[01 Understanding Context|Considered Context]] for more details.  
> 
> **Default Hotkey**:  `Ctrl + Alt + j`.

Let's take as an example the following document.


```
---
title: "Obsidian + Text Generator Plugin: The More 
Affordable and Powerful AI Text Assistante Helper"
keywords: AI Text Assistante Helper, text assistant helper, Jasper
--- 
Write conclusion
```

By selecting "Write conclusion " and running **Generate Text (use Metadata)**, **Text Generator Plugin** will append the metadata information and send the command like this.

```
title: "Obsidian + Text Generator Plugin: The More 
Affordable and Powerful AI Text Assistante Helper" 
keywords: AI Text Assistante Helper, text assistant helper, Jasper 
Write conclusion  
```

The metadata here can be seen as global context that you can append to the selected text to get more accurate results without send the full content which optimize your cost (see [[Models costs and rate limits]]).  

### Tips
* It is more practical to [[Setting Up Hotkeys for Templates]].
* The generated text will have a max size of ([[Default model parameters#Max Tokens|max_tokens]]) using default settings.
