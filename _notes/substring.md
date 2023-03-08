---
title: substring
tags: 
layout: note 
---
substring allows you to take a substring of text.
To use this function, simply use the following syntax in a template file:
{% raw %}
```
{{{substring var startPosition endPosition}}}
```
{% endraw %}
For example, if you only want the first 100 characters of the selected text, you would use:

{% raw %}
```
{{{substring selection 0 99}}}
```
{% endraw %}