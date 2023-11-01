---
title: What's New
tags: 
layout: note 
---
# Check all the changes in the [releases page](https://github.com/nhaouari/obsidian-textgenerator-plugin/releases)


# Release [[v0.5.7-beta]] 🚀

## Changes:

- Fixed the playground UI for improved user experience 🎨
    
- Added yaml and metadata variables for more comprehensive data handling 📄  
    [![image](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/17094da7-ae94-4947-a0cd-2fa910386b4f)](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/17094da7-ae94-4947-a0cd-2fa910386b4f)
    
- Made all variables accessible within the custom Instruct template for increased flexibility ✨
    
- Added encodeURI and eachProperty helpers for better URI handling 🌐
    
- Introduced a regex helper to handlebars for improved text processing 🧹
    
- Enhanced variable extractions with handlebars for more efficient data handling 💡
    
- Implemented several optimizations and bug fixes for smoother performance 🐞
    

**Full Changelog**: [0.5.6-beta...0.5.7-beta](https://github.com/nhaouari/obsidian-textgenerator-plugin/compare/0.5.6-beta...0.5.7-beta)

# Release [[v0.5.6-beta]] 🚀

## Changes:

- Added the window playground handlebars to preview how the prompt will look like 🎨  
    you can access it by enabling `open-playground` command.  
    [![image](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/7624ba6f-50dc-413d-b5cc-f8f78378a2ff)](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/7624ba6f-50dc-413d-b5cc-f8f78378a2ff)

[![image](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/196a9da0-8e2b-4e96-a4bc-b621b5753ba4)](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/196a9da0-8e2b-4e96-a4bc-b621b5753ba4)

- Changed selection to tg_selection, and reserved the variable selection solely to get the highlighted/selected text 🔄
    
- Added custom instruct + {{context}} template in the settings page, allowing for more customizations ✏️  
    [![image](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/c24121bf-8bee-4171-a548-94c26ebf2f7a)](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/c24121bf-8bee-4171-a548-94c26ebf2f7a)  
    [![image](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/d8a169af-7753-4f61-bfed-893be940d328)](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/d8a169af-7753-4f61-bfed-893be940d328)
    
- Included the `http-Referer` header as suggested by pipboyguy#0000 to work with openrouter's endpoint
    
- Attempted fix for "Disable auto-suggestions at the beginning of the line [#200](https://github.com/nhaouari/obsidian-textgenerator-plugin/issues/200)" 🐞
    

**Full Changelog**: [0.5.5-beta...0.5.6-beta](https://github.com/nhaouari/obsidian-textgenerator-plugin/compare/0.5.5-beta...0.5.6-beta)
# Release [[v0.5.5-beta]] 🚀

## Changes:

- Corrected the issue where it took context instead of selection in normal generation 🐞
- Made minor fixes in the package manager for improved performance 🛠️
- Added slugs to providers for better organization and access 🌐
- Resolved the problem with undefined URL in the audio extractor 🎧

**Full Changelog**: [0.5.4-beta...0.5.5-beta](https://github.com/nhaouari/obsidian-textgenerator-plugin/compare/0.5.4-beta...0.5.5-beta)

# Release [[v0.5.4-beta]] 🚀

## Changes:

- Added support for the plugin API 🧩

```js
Plugin.tg.gen("hello").then(console.log)
```

[![image](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/e0eebf98-07ad-451e-8cb9-4740aa156812)](https://github.com/nhaouari/obsidian-textgenerator-plugin/assets/57036855/e0eebf98-07ad-451e-8cb9-4740aa156812)

- Eliminated unnecessary console logs for smoother operation 🔄
    
- Fixed a bug that was preventing generation 🐛
    
- Rectified the scroll issue in the output of the tool, especially when using a theme 🛠️
    
- Enhanced the tool's user interface for improved usability and aesthetics 🎨
    
- Fixed the source template for better functionality ✅
    

**Full Changelog**: [0.5.3-beta...0.5.4-beta](https://github.com/nhaouari/obsidian-textgenerator-plugin/compare/0.5.3-beta...0.5.4-beta)

# Release [[v0.5.3-beta]] 🚀

## Changes:

- Updated the default behavior of the tool to create a new popup instead of a side view 🔄
- Implemented a version manager to handle breaking changes between versions and ensure backward compatibility 🛠️
- Made minor adjustments and improvements for enhanced performance and user experience ✨

**Full Changelog**: [0.5.2-beta...0.5.3-beta](https://github.com/nhaouari/obsidian-textgenerator-plugin/compare/0.5.2-beta...0.5.3-beta)

# Release [[v0.5.2-beta]] 🚀

## Changes:

- Added the ability to set a custom variable name using the format `{#run "templateId" "customVarName"}` (optional but helpful in some cases) 🛠️
- Added "open as tool" functionality to templates, along with new commands "open template as tool" and "tool" which can be set in any template 🧰
- Added a popout and "always on top" feature to the tool 🪄
- Numerous bug fixes 🐞
# Release [[v0.5.1-beta]]
# changes:

- Fixed mobile support, by forking library `handlebars-async-helpers` and removing readable call

## 0.5.0-beta
# Release [[v0.5.0-beta]]

## Changes:

- Template calling other templates
- Template inheritance
- Batch generate using template on multiple files (was highly requested)
- Template calling extractors ex:`{{extract "web" url}}`
- Langchain chains support (this will allow a huge amount of text to be summarized) setting `chain.type: "map-reduce"` will enable it
- Bug fixes

## Additional Information:

- Examples of templates are attached as `examples.zip`. These examples showcase the power of calling templates from other templates.

# Release [[v0.4.9-beta]]

## Bug Fix

- **Fixed Models List Not Showing Up**: This release addresses a critical issue where the models list was not displaying as expected.

# Release [[v0.4.8-beta]]

## New Features

- **Added Summary Functionality with langchain**:

template:

```md
---
promptId: Summarize
name: Summarize
title: Summarize long text
description: Summarize long text
commands:
  - generate
mode: insert
chain.type: map_reduce
splitter.ChunkSize: 2000
splitter.ChunkOverlap: 200
---

{{selection}}


***
Summary: {{output}}
```

## Bug Fixes

- **Fixed Switching Between Encryption Enabled/Disabled**: A bug that prevented smooth switching between encryption enabled and disabled modes has been resolved.
    
- **Fixed Free Cursor Not Working**: A recent bug affecting the free cursor functionality has been addressed and is now functioning as expected.
    

## Enhancements

- **Changed Naming of LLM Providers**: We have updated the naming conventions for LLM (Language Model) providers for clarity and consistency.
