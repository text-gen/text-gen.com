---
title: Sharing and Publishing
tags: 
layout: note 
---
## Step 1: Preparing the Template

1. Utilize our [template repository](https://github.com/text-gen/templates-package) to get started.

2. Setup your repository using the provided template.

3. Open the editor (by replacing github.com with github.dev in the URL Bar or by cloning it locally if you prefer using your editor).

4. Put your templates in the prompts folder, and delete the example template.

5. Update the `manifest.json` file accordingly:

```json
{
// package id has to be unique from the other packages
	"packageId": "default", 
	
 // name of the package
	"name": "Default Prompts Package",
	
// version of the package if you're planning to update it later
	"version": "0.0.1", 

// minimum version of text generator that can work with it (use your current version)
	"minTextGeneratorVersion": "0.1.0", 
	
// description of the package, helps users knows what your package does
	"description": "...", 

// author name
	"author": "...", 

// tags for the package, helps people find your package easily using search
	"tags" : "writing, brainstorming", 

// author page, or funding page
	"authorUrl": "...", 
	
// get it from the repo url
	"repo":"username/repo" 
}
```

6. Head over to the source-control section in the editor, and push a commit with the text `0.0.1` (ensure that it matches the version in the `manifest.json` file).

Note: Every time you update the templates, make sure to increment the version in the `manifest.json` file and then make a commit with the same version(same as step 6).

## Step 2: Adding Your Package to the Text Generator Database

> You don't need to redo this when you're updating your existing package.

1. Go [here](https://github.com/text-gen/text-generator-packages/edit/main/community-packages.json) and add your package's `manifest` to the end of `community-packages.json`, as it looks with the other packages. If it asks you to fork the repo, then do so.

```json
[
	// ... other packages' manifest
	{
		"packageId": "package1",
		// ...
	},
	{
		"packageId": "package2",
		// ...
	},
	{
		"packageId": "yourPackageId",
		// ...
	}
]
```

2. Make a commit and push. If it asks you to fork the repo, then do so.

3. Make a pull request.

4. Finally, wait for a review.
## DRAFT:

## Step 0: create your templates

## Step 1: preparing the template

1- Utilize our [template repository](<[template repo](https://github.com/text-gen/templates-package)>) to get started

2- Setup your repository using the previews template.

3- Open the editor(by replacing github.com with github.dev in the URL Bar or by cloning it locally if you prefer using your editor).

4- Put your templates in the prompts folder, and delete the example template.

5- Update the `manifest.json` file accordingly


6- head over to source-control section in the editor, and push a commit with text `0.0.1` (should match the same version in the `manifest.json` file)

note: everytime you update the templates, make sure to add 1 to the version in the `manifest.json` and repeat last step



## Step 2: Adding your package to Text Generator Database
> you don't need to redo this when you're updating your existing package

1-  Go [here](https://github.com/text-gen/text-generator-packages/edit/main/community-packages.json) and Add your package's `manifest` to the end of `community-packages.json`, as it looks with the other packages.
> if it asks you to fork the repo, then do so

```json
[
	// ... other pakcages's manifest
	{
		"packageId": "package1",
		// ...
	},
	{
		"packageId": "package2",
		// ...
	},

	{
		 // make sure its unique
		"packageId": "yourPackageId",
		// ...
	}
]
```

3- Make a commit and push
> if it asks you to fork the repo, then do so

3- make a pull request 

4- finally wait for a review