---
title: Template File Metadata
tags: 
layout: note 
---
## Template File Metadata 

```ymal
---
PromptInfo:
 promptId: getParagraph
 name: ✍️ Write paragraphs 
 description: select a content contiens items, a paragraph for each item will be generated. 
 required_values: title, outline
 author: Noureddine
 tags: writing
 version: 0.0.1
---
```

**PromptInfo** is a metadata that contains information about the prompt and must be in header of each template. 

It contains the following fields: 
* **promptId**: a unique string to identify the prompt, it is used as the id for each prompt in the UI.
* **name**: a name to identify the prompt, it should be short and clear.
* **description**: a description to explain what this prompt does and how to use it, you can put anything here, but simple and concise is better.
* **author**: an author name or username to credit who wrote this prompt, if you are not the original author then you can put your name here or leave empty if you want to be anonymous (this field is optional).
* **required_values**: the required values for the template.
* **tags**: some keywords that describe this prompt, this can be used to filter prompts based on their tags (this field is optional).
* **version**: the version of this prompt, follow [semantic versioning](https://semver.org/) (this field is optional).
