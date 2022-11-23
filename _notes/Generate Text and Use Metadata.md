---
title: Generate Text (use Metadata)
tags: 
layout: note 
---
> [!note] Generate Text (use Metadata)
> "**Generate Text (use Metadata)**" generates a text based on *the selected text and the metadata in the frontmatter*  and insert it on the current cursor position. See  [[Considered Context]] for more details.  
> 
> **Default Hotkey**:  `Ctrl + Alt + j`.

Let's take as an example the following document.

> [!warning]
> If you want to copy and past the code in Obsidian, use (CTRL + SHIFT + V) or (⌘+ SHIFT + V for MAC users) to avoid formating issues.

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

The metadata here can be seen as global context that you can append to the selected text to get more accurate results without send the full content which optimize your cost (see [[How the cost is calculated]]).  

### Tips
* It is more practical to use [[Hotkeys in Obsidian]].
* The generated text will have a max size of ([[Set Max Content Size|max_tokens]]) using default settings.
