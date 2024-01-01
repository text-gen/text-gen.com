---
title: Understanding Context
tags: 
layout: note 
---
In your note-taking and text manipulation endeavors, you may find yourself **working** with a variety of context variables. These context variables **serve** as placeholders or dynamic references within your notes and **play** a crucial role in organizing and automating your workflow. They **enable** you to **access** and **manipulate** different aspects of your notes, making your note-taking experience more versatile and efficient. In this documentation, we will **explore** various context variables, their purpose, and examples of how to use them effectively.

> [!important]
> The [[Template Playground]] is a dynamic environment designed to enhance your understanding and proficiency with templates. It serves as a practical learning center where you can explore, experiment, and craft templates in real-time.
## title
The `{{title}}` context variable represents the title of the note. You can use it to reference and manipulate the note's title dynamically.

**Example**: `{{title}}`

## content
The `{{content}}` context variable represents the entirety of the note's content. It provides access to the full text within a note.

**Example**: `{{content}}`

## selection
The `{{selection}}` context variable represents the portion of text that has been selected by the user. You can use it to work with the selected text.

**Example**: `{{selection}}`

## tg_selection

The `{{tg_selection}}` context variable does the following:

1. It gives you the text that you've currently selected or highlighted in a document.
    
2. If your cursor is on a line with text (not empty), it provides the text on that line just before the cursor.
    
3. If there are no sets of three asterisks `***` above your cursor, and the line your cursor is on is empty, it includes all the text above your cursor.
    
4. If there are three asterisks `***` above your cursor, and the line your cursor is on is empty, it includes the text between your cursor and the nearest set of three asterisks `***`.



![[Considered Context 2022-11-21 17.41.47.excalidraw.svg]]


**Example**: `{{tg_selection}}`

## starred Blocks
`{{starredBlocks}}` context variable refers to content under headings marked with an asterisk (`*`) in the note. It helps you using specific sections in the note as context.

**Example**: `{{starredBlocks}}`

## clipboard
The `{{clipboard}}` context variable represents the current content copied to the clipboard. It allows you to interact with copied content.

**Example**: `{{clipboard}}`

## selections
`{{selections}}` is used to iterate through all selected text segments in the note, especially when multiple selections (using `alt` key) are made. It enables you to process selected text systematically.

**Example**: 
```handlebars 
{{#each selections}} 
* {{this}} 
{{/each}}
```

## highlights
`{{#each highlights}}` helps you iterate through highlighted segments marked with `==example==` in the note. It allows you to work with highlighted content selectively.

**Example**: ```
```handlebars
{{#each highlights}} 
* {{this}} 
{{/each}}
```

## children
The `{{#each children}}` context variable represents an array of notes or sub-notes that are cited or related to the primary note. It enables you to access related notes.

**Example**: 

```handlebars
{{#each children}} 
# {{this.title}}
{{this.content}}
{{/each}}
```

## mentions (Linked)
`{{#each mentions.linked}}` helps you iterate through mentions across the entire vault where a note is directly linked using [[note]]. It facilitates working with linked mentions.

**Example**: 
```handlebars
{{#each mentions.linked}} 
* {{this.results}} 
{{/each}}
```
## mentions (Unlinked)
`{{#each mentions.unlinked}}` allows you to iterate through mentions across the vault where a note is referenced without a direct link, e.g., '...note...'. It helps manage unlinked mentions.

**Example**: 
```handlebars
{{#each mentions.unlinked}} 
* {{this.results}} 
{{/each}}
```
## Headings
`{{headings}}` context variable contains all the headings within the note and their respective content. It aids in navigating and manipulating the structure of your notes.

**Example**: 
```handlebars
{{#each headings}}
# HEADER: {{@key}}
Content : {{this}}
{{/each}}
```

## metadata
The `{{metadata}}` context variable contains the metadata of the note, often provided in YAML format. It gives access to whole metadata information as string.

**Example**: `{{metadata}}`

## yaml
`{{#each yaml}}` allows you to iterate through the initial metadata (Object) of the note, providing access to specific metadata fields.

**Example**: 
```handlebars
{{#each yaml}}
{{@key}}: {{this}}
{{/each}}
```

For one variable you can use `{{yaml.variable}}`. 

## BeforeCursor
This context variable could select all the text before the cursor's current position, regardless of the structure or formatting of the text. Useful for quickly referencing or manipulating content leading up to a certain point. 
Example:
```handlebars
{{beforeCursor}}
``` 

## AfterCursor
The opposite of `BeforeCursor`, this would select all text after the cursor's current position. It would be especially useful for editing or reviewing the remaining part of a document. 

Example:
```handlebars
{{afterCursor}}
```
## CursorParagraph
This would select the entire paragraph where the cursor is currently located. It could be helpful for operations that focus on paragraph-level editing or formatting. 

Example:
```handlebars
{{cursorParagraph}}
```
## CursorSentence
This would select the sentence immediately surrounding the cursor, including sentences that the cursor is in the middle of. Ideal for sentence-level editing. 

Example: 
```handlebars
{{cursorSentence}}
```

## NextWord/PreviousWord
These would select the next or previous word relative to the cursor's position, making it easier to navigate and edit text on a word-by-word basis. 

Example:
```handlebars
{{NextWord}}
{{PreviousWord}}
```
## InverseSelection
Selects everything except the currently selected text. This could be useful in cases where you want to apply formatting or changes to every part of the document except a specific section. 1 

Example:
```handlebars
{{InverseSelection}}
```


These context variables play a pivotal role in enhancing your note-taking and text manipulation capabilities within your note-taking software or system. By understanding how to use them effectively, you can streamline your workflow and make the most of your text generator templates.