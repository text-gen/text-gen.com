---
title: Untitled
tags: 
layout: note
status: todo
---
In the Text Generator plugin for Obsidian, you have the flexibility to assign hotkeys to automate your workflow with templates. This functionality empowers you to execute specific template-related commands quickly.

### Template Commands Available

- `generate`: **Compiles** and **runs** the template through the Language Model (LLM), **inserting** the generated content into the active note.
- `generate&create`: **Compiles** and **runs** the template through LLM, **creating** a new note with the generated content.
- `insert`: **Compiles** the template and **inserts** the raw content into the active note, bypassing LLM processing.
- `insert&create`: **Compiles** the template and **creates** a new note with the raw content, without LLM processing.
- `model`: **Displays** the template in a form with inputs and **inserts** the content into the active note upon submission.
- `clipboard`: **Compiles** and **runs** the template through LLM, **saving** the generated content to the clipboard.

### Integrating Commands with Hotkeys

1. **Add** the desired command within the `commands` field to register, for more information check [[Template Metadata]].
2. **Reload** the Text Generator plugin to update the command registry.
3. **Navigate** to the Hotkeys panel under Obsidian Settings.
4. **Locate** the newly added template commands.
5. **Assign** a hotkey to each command as you would for other Obsidian commands.
