---
title: substring
tags: 
layout: note 
---
substring allows you to take a substring of text.
To use this function, simply use the following syntax in a template file:

`{{{substring var startPosition endPosition}}}`

For example, if you only want the first 100 characters of the selected text, you would use:

`{{{substring selection 0 99}}}`