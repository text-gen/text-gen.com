---
title: Template Custom Form
tags: 
layout: note
---
# Introduction
This is helpful if you want to customize the form that the user has to fill in before running the template

![[Pasted image 20231223210608.png]]

# How to use it:
- Make sure you already have a template and already split into 3 sections ([[02 Template Writing|Learn more]]).
- Make a code block named json:form at the top of the Initialization section
![[Pasted image 20231223211305.png]]
There are 4 sections
![[Pasted image 20231223211341.png]]

It uses the [react-jsonschema-form](https://rjsf-team.github.io/react-jsonschema-form/) Library

**Title**: The title of the form
**properties**: The variable definitions and types
**uiSchema**: The styling of the variables 
**formData**: The default values for the variables

[Learn more](https://rjsf-team.github.io/react-jsonschema-form/docs/)