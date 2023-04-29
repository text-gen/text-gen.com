---
title: Template File Metadata
tags: 
layout: note 
---
## Template File Metadata 

```yaml
---
PromptInfo:
 promptId: getParagraph
 name: ✍️ Write paragraphs 
 description: select a content contiens items, a paragraph for each item will be generated. 
 required_values: title, outline
 author: Noureddine
 tags: writing
 version: 0.0.1
 commands:
 - generate
---
```

**PromptInfo** is metadata that contains information about the prompt and must be in the header of each template. 

It contains the following fields: 
* **promptId**: a unique string to identify the prompt. It is used as the id for each prompt in the UI.
* **name**: a name to identify the prompt. It should be short and precise.
* **description**: a description to explain what this prompt does and how to use it, you can put anything here, but simple and concise is better.
* **author**: an author name or username to credit who wrote this prompt.
* **required_values**: the required values for the template.
* **tags**: Some tags that describe this prompt. This information is used in filtering prompts.
* **version**: the version of this prompt, follow [semantic versioning](https://semver.org/).
* **commands**: This is used to convert templates to commands to be able to assign hotkey for each command (you need to reload the plugin to see the changes)
	* `generate` : complie the template and generate the content through gpt-3 and insert the result in the **active note**.
	* `generate&create`: complie the template and generate the content through gpt-3 and insert the result in the **new note**.
	* `insert`: complie the template and insert the result in the active note without  gpt-3  insert the result in the **active note**..
	* `insert&create`: complie the template and insert the result in the active note without  gpt-3  insert the result in the **new note**..
	* `model`: show the template as form of inputs and insert the result in the **active note**.
	* `clipboard`:  complie the template and generate the content through gpt-3 and write the result in the clipboard.
