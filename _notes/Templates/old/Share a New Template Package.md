---
title: Share a New Template Package
tags: todo
layout: note 
---
> [!warning]
> This is a **draft**. This section of the documentation will be written in more details at a later date.

## Links 
- [template repo](https://github.com/text-gen/templates-package)
* [community-packages](https://github.com/text-gen/text-generator-packages/edit/main/community-packages.json)
* [database repo](https://github.com/text-gen/text-generator-packages)
## Step 1: Prepare template package repo

![](step1.mkv)

### 1- Use [template repo](<[template repo](https://github.com/text-gen/templates-package)>), and make a new repo.

### 2- Put the prompts in the "prompts" folder respecting template format ([[Templates]]).  
> make sure the `packageId` in the templates matches the `packageId` 
### 3- Update manifest file with your information
```json
{
	"packageId": "default", // package id has to be unique from the other packages
	"name": "Default Prompts Package", // name of the package
	"version": "0.0.6", // version of the package if you're planning to update it later
	"minTextGeneratorVersion": "0.1.0", // minimum version of text generator that can work with it (use your current version)
	"description": "...", // description of the package
	"author": "...", // author name
	"tags" : "writing, brainstorming", // tags for the package
	"authorUrl": "...", // author page, or funding page
	"repo":"username/repo" // get it from the repo url
}
```

## 5- head to source-control section, and put the same version as the one in `manifest` (0.0.1) in the input field.

### 6- Commit & push


## Step 2: Adding your package to Text Generator Database

![](step2.mkv)
### 1- Go [here](https://github.com/text-gen/text-generator-packages/edit/main/community-packages.json) and Add your package's `manifest` to the end of `community-packages.json`, 
> if it asks you to fork the repo, then do so


> Make sure your `packageId` is unique
```json
{
	"packageId": "default",
	
	"name": "Default Prompts Package",
	
	"version": "0.0.5",
	
	"minTextGeneratorVersion": "0.5.0",
	
	"description": "This is the main package that comes with Text Generator plugin in Obsidian",
	
	"author": "Noureddine Haouari",
	
	"tags" : "writing, brainstorming",
	
	"authorUrl": "https://www.buymeacoffee.com/haouarine",
	
	"repo":"text-gen/gpt-3-prompt-templates"
},
```
### 2- commit and push.
> if it asks you to fork the repo, then do so
### 3- make pull request

### 4- finally wait for the merge.
