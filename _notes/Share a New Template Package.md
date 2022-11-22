---
title: Share a New Template Package
tags: todo
layout: note 
---
> [!warning]
> This is a **draft**. This section of the documentation will be written in more details at a later date.

## Links 
* [Default package repo](https://github.com/text-gen/gpt-3-prompt-templates) 
* The [main repo](https://github.com/text-gen/text-generator-packages) where template packages are indexed . 

# Steps

## Step 01: Prepare template package repo
### 01- Fork default [package repo](<[Default package repo](https://github.com/text-gen/gpt-3-prompt-templates)>) or create a repo with same structure
### 02- Put the prompts in the "prompts folder" respecting template format ([[Templates]]).  
### 03- Put the promptids in data.json
```json
{

"prompts":[

"promptId01",

"promptId02",
...
]
}

```
### 04- Update manifest file 
```json
{
"packageId": "default",
"name": "Default Prompts Package",
"version": "0.0.6",
"minTextGeneratorVersion": "0.1.0",
"description": "...",
"author": "...",
"tags" : "writing, brainstorming",
"authorUrl": "...",
"repo":"username/repo"
}
```
## 05- Push the changes
## 06- Publish a relases with title of the version 
![[publshing a release.svg]]

## Step 02: Adding your package to Text Generator Database
### 01-Fork  [main repo](https://github.com/text-gen/text-generator-packages)
### 02- Add your package to the end of `community-packages.json`, ### 03- make that your packageId is unique. 
```json
[

{

"packageId": "default",

"name": "Default Prompts Package",

"version": "0.0.5",

"minTextGeneratorVersion": "0.1.0",

"description": "This is the main package that comes with Text Generator plugin in Obsidian",

"author": "Noureddine Haouari",

"tags" : "writing, brainstorming",

"authorUrl": "https://www.buymeacoffee.com/haouarine",

"repo":"text-gen/gpt-3-prompt-templates"

}, 

... Insert your package information here (same as your manifest file)
]
```

# 04- Push the changes 
# 05- Pull request