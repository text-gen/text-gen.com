---
title: What's New
tags: 
layout: note 
---
## Version 0.3.0-beta
Key features and improvements in Text Generator v0.3.0-beta include:
* **Refactoring the code**: To ensure optimal performance and readability, the plugin's code has undergone a thorough refactoring process. This restructuring will make it easier for developers to contribute to the project, understand the codebase, and maintain the plugin.

* **Add `extractions` to context**: With the new extractions feature, users can now extract the text from embedded PDF documents and the content of links within the plugin. This expands the range of use cases for the Text Generator and allows users to work more efficiently with diverse notes.

* **Accurate token and cost estimation for OpenAI models**: This update introduces a precise token and cost estimation system for using OpenAI models. This will help users better manage their API usage and control their costs while working with Text Generator. 

* **Better error messages**: To improve the overall user experience, the Text Generator v0.3.0-beta now provides more informative and helpful error messages. This will enable users to diagnose and resolve issues more effectively, resulting in a smoother and more productive workflow.

* **Add connection timeout for requests**: By introducing connection timeouts for requests, the plugin ensures that users do not experience unexpected delays or stalls during their work. This enhancement adds an additional layer of reliability and stability to the Text Generator plugin.

## Version 0.2.20

### New Features

-   Improved selection for better user experience.
-   Added an option to display AI-generated content in callouts, allowing for more dynamic and engaging presentations.

### Contributors

-   **[jackallard17](https://github.com/jackallard17)**: Contributed the new feature to show AI content in callouts. Thank you for your contribution!
![[Pasted image 20230311230543.png]]
![[Pasted image 20230311230554.png]]
## Version 0.2.18

### Bug Fixes

-   Fixed a bug ([#125](https://github.com/nhaouari/obsidian-textgenerator-plugin/issues/125)) that was causing issues with note title generation.
-   Added the headings and frontmatter of children in the considered content of templates (by **[pheelwell](https://github.com/pheelwell)**).

### Contributors
We would like to thank **[pheelwell](https://github.com/pheelwell)** for their valuable contribution to this release.

## Version 0.2.17 

### Changes

-   Updated OpenAI API URL to [https://api.openai.com/v1/completions](https://api.openai.com/v1/completions).
-   Added multiselect to the context "selections" as array for use in templates ([[Context available for templates]])
-   Fixed bug in sent prompt with YMAL.

If you encounter any issues, please don't hesitate to open an issue.

## Version 0.2.16 
#### Features

-   Added ability to generate templates to clipboard instead of directly inserting the result into the editor [[Generate & Copy To Clipboard]] ([#73](https://github.com/nhaouari/obsidian-textgenerator-plugin/issues/73)).
-   Added the ability to assign hotkeys for each template command (generate, generate&create, insert, insert&create, model, and clipboard) [[Template File Metadata]] ([#71](https://github.com/nhaouari/obsidian-textgenerator-plugin/issues/71)).
![[Pasted image 20230308023111.png]]
#### Bug Fixes

-   Fixed selection bug ([#112](https://github.com/nhaouari/obsidian-textgenerator-plugin/issues/112)).

## Version 0.2.14
#### Enhancements:

-   Improved status bar with clearer icons and clickable options for easier access to plugin settings.
-   Clickable icons on the status bar allow users to change the maximum number of tokens and enable/disable the auto-suggest option.
-   Enhanced suggestions display for better user experience.

#### Bug Fixes:

-   Fixed minor bugs and issues related to auto-suggest option.

[![4c1bafc0-e26a-41d1-98db-13d12e60adb8](https://user-images.githubusercontent.com/9850722/223170307-2c4ec3fc-a2a9-4261-b5a1-daa641ecf7fd.gif)](https://user-images.githubusercontent.com/9850722/223170307-2c4ec3fc-a2a9-4261-b5a1-daa641ecf7fd.gif)
## Version 0.2.10
### Enhancements

-   Improved the user experience by adding `shift-tab` functionality to move to the previous suggestion when using auto-suggestions.
-   Added an optional statusbar item for autosuggestions that displays the status of [[Auto-suggest]] and if it is currently querying.

### Bug Fixes

-   Fixed a bug where debugging through debug module from console was not working properly.  
    The follwing command in console shows all the logs of the plugin

```
localStorage.debug = 'textgenerator*'
```

## Version 0.2.7 
We are excited to announce the release of version 0.2.7 for our Text Generator Plugin! This release includes several new features and bug fixes to enhance your experience.

#### Auto Suggest (Experimental)

-   The cursor position is now adjusted when accepting a completion, placing it at the end of the line.
-   You can now toggle auto-suggestions on and off without reloading the plugin.
-   The plugin now works for all models.
-   Navigation between suggestions has been improved with `tab` navigation similar to many code editors.
-   A delay has been implemented before triggering auto-suggest requests to avoid unnecessary requests while typing.
-   The spinner no longer appears for [[Auto-suggest]] .

#### Title Generation

-   A bug in title generation has been fixed.
-   The spinner no longer appears for Title generation.

We hope you enjoy these new features and improvements! Please let us know if you have any feedback or suggestions for future releases.

## Version 0.2.5
In this release, [[Auto-suggest]] functionality has been added to the editor, which provides users with suggested code snippets and completions as you type.

* The default trigger for the [[Auto-suggest]] feature is the double space (" "), but users can customize it to their preference in the setting of the plugin.
* Please beware that increasing the value of parameter n in GPT for text generation might significantly increase the cost of usage.
* Rate limitation in OpenAI API rate-limits
* This option still exprimental and not fully tested, so it may not work perfectly.
![Pasted image 20230308022636.png](https://user-images.githubusercontent.com/9850722/222774001-8da26c8c-df75-4d0d-a69d-5fcac04c7f2b.gif)
![[Pasted image 20230308022747.png]]

## Version 0.2.2
We are pleased to announce the following updates to our plugin:

-   We are introducing the new chatGPT model, gpt-3.5-turbo, which has been added to enhance the chat experience at a much lower price ($0.002/1000 tokens).
    
-   The plugin settings now include an option to show any potential errors that may arise in the editor.
    
-   Users can now enable or disable available commands via an option in the plugin settings, enhancing the user experience.
    
-   A new feature has been added that allows users to generate a title for a specific note.
    

We hope that these updates will improve your experience with our plugin.

Thank you for your continued support.
## Version 0.1.21
We are excited to announce the release of our latest update, which includes the following improvements:

-   Fix for issue where updating packages was not working as expected. This issue has been resolved and you should now be able to update packages without any issues.
    
-   Create templates is easier using Text Generator code-blocks. We have added automatic metadata for code-blocks prompts, which allows you to easily create templates.
    

We hope these improvements will enhance your experience with our plugin. If you have any feedback or encounter any issues, please don't hesitate to reach out to us.

Thank you for using our plugin!

## Version 0.1.19

Update: Removing Default Hotkeys to Improve User Experience
I'm releasing an update that removes the new default hotkeys that were introduced in version 0.1.x. These hotkeys caused conflicts with the system hotkeys used by Mac users. The following default hotkeys have been removed:

Alt + (1,2,3,4)
Ctrl/Alt+Q
Ctrl/Alt+Shift+Q
I apologize for any inconvenience this may have caused and I hope this update will improve your user experience.

Thank you for your continued support and feedback.

## Version 0.1.18 
#### New Feature: Template Models

-   We are excited to announce the addition of Template Models, which make templates more easily usable. With this new feature, you can:
    
-   Run templates as models using the "Show Model from Template" command (default hotkey: Alt + 4) after installing community templates or creating templates.
    
-   Use template models to quickly and easily access and use your templates in various documents.
    

We hope you enjoy this new feature and find it useful. Let us know if you have any questions or feedback.  
[![image](https://user-images.githubusercontent.com/9850722/207584320-a7d01405-c2fa-49c1-b85f-53f0924a86f6.png)](https://user-images.githubusercontent.com/9850722/207584320-a7d01405-c2fa-49c1-b85f-53f0924a86f6.png)
## Version 0.1.16
update Text Generator codeblock  
[![image](https://user-images.githubusercontent.com/9850722/206441970-7b667f13-148e-4ac4-aa88-5d25d7bca003.png)](https://user-images.githubusercontent.com/9850722/206441970-7b667f13-148e-4ac4-aa88-5d25d7bca003.png)

## Version 0.1.15 
-   Added Text Generator Code Block for dynamic content generation.
-   Console prints the context variables each time the Code Block is rendered.
-   For syntax, please refer to HandlebarsJS Guide at [https://handlebarsjs.com/guide/](https://handlebarsjs.com/guide/)

[![image](https://user-images.githubusercontent.com/9850722/206294153-dedaa1c3-db2c-46f2-ae03-644bde78d205.png)](https://user-images.githubusercontent.com/9850722/206294153-dedaa1c3-db2c-46f2-ae03-644bde78d205.png)  
[![image](https://user-images.githubusercontent.com/9850722/206295633-2e74fcf1-eaa3-41f1-97de-780765e78f0c.png)](https://user-images.githubusercontent.com/9850722/206295633-2e74fcf1-eaa3-41f1-97de-780765e78f0c.png)
## Version 0.1.13
* Add Highlights as an array to the [[Considered Context]] in [[Templates]].
- Fix [[Set Max Content Size]] bug
- Add a [[substring]] helper function to limit the length of a string.
## Version 0.1.10
* Fix some typos
* Fix Templates Packages Manager for Obsidian v1.0.4
## Version 0.1.8 
* Add icons for different commands
* Add Templates Packages Managers RibbonIcon
* Change the default hotkeys for : [[Choose a model]] - [[Set Max Content Size]] - [[Template Package Manager]]
## Version 0.1.6 
* The [[Template Package Manager]] is now working on mobile devices.
* Removed Template packages are now stored in a trash folder inside the [[prompt]] path.
* Many issues have been fixed.
## Version 0.1.3 
-   Add [[Create a Template]] to facilitate template creation from an active document.
-   Spinners are now better.
-   One generation process at a time.
-   Add `text-davinci-003` to the default list of OpenAI models.

## Version 0.1.2 
-   Add `title` and `selection` to the [[Considered Context]] for [[Templates]].
-   Removing break lines in the beginning generated text
-  Text Generator Documentation: [www.text-gen.com/](https://www.text-gen.com/)

## Version 0.1.1
-   Add prompt [[Templates]] using [handlebarsjs](https://handlebarsjs.com/).
-   [[Share a New Template Package]] to share your templates, like plugins and themes.
-   Possibility to use templates ([[Commands]]) without Generation.
-   [[Considered Context]] can include:
    -   Title of notes.
    -   Sections that end with a star.
-  [[ Considered Context]] in [[Templates]] can include:
    -   Children notes content.
    -   Mentions (linked or unliked).
    -   Sections Content.
    -   Frontmatter Variables.
-   [[Frontmatter Configuration]] to change or add any parameters and even use other services such as Bloom on huggingface.
-   It is easier to [[Set Max Content Size]] and [[Choose a model]] using shortcuts.
-   The configuration panel of Text Generator Plugin is better.
