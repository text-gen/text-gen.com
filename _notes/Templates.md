---
title: Templates
tags: doc
layout: note 
---

> [!note] Templates
> **Templates** are used to make your work easier by providing a structure so that you don't have to start from scratch every time you write or generate a text. 
> **Handlebars** Template Engine is used. For more information, please visit their [website](https://handlebarsjs.com/).  
> 
> 


## Templates Folder 
The default folder for `textgenerator/prompts`. You can change this path from the setting of the plugin. 
![[Pasted image 20221122071025.png]]

> [!warning] Updating Community Packages
> In the **prompts templates folder**, each package has its folder, when updating a package, all the files inside might be overwritten. See [[Share a New Template Package]]. 
> 

## Write a new Template

### Create the template file

#### Using Create Template 
* From your active document, run [[Create a Template]]. 

#### From scratch
* Create a file in **Templates Folder**. 
* Add [[Template File Metadata]].

### Build the template
* Use [[Context available for templates]] to prepare the template.  For more information about the template engine, please see [handlebarsjs](https://handlebarsjs.com/).
* The template will be accessible through [[Commands|Template commads]].

## [[Share a New Template Package]]
