---
title: Auto-suggest
tags: 
layout: note 
---
> [!note]
> Auto-suggest is the new option of Text Generator that allows you to get suggestions as you type. These suggestions can be words or phrases or even paragraphs that you can use to complete your text. Which gives you more options to choose from and makes the process of writing your text much faster and controlable.


> [!warning]
> *Please beware that increasing the value of parameter `n` in GPT for text generation might significantly increase the cost of usage.
> *Rate limitation in OpenAI API [rate-limits](https://platform.openai.com/docs/guides/rate-limits/overview)

![Pasted image 20230308022636.png](https://user-images.githubusercontent.com/9850722/222774001-8da26c8c-df75-4d0d-a69d-5fcac04c7f2b.gif)
# Enable Auto-Suggest

To use `Auto-Suggest`, you must first enable it from the setting of Text-Generartor. And then reload the plugin.  


![[Pasted image 20230308111908.png]]
# Auto-Suggest options
![[Pasted image 20230308112116.png]]

The options of Auto-suggest includes: Enable/Disable, Trigger Phrase, Delay milli-seconds for trigger, number of suggestions, stop Phrase, show/hide Auto-suggest status in the status bar. 
* **Enable/Disable** :  
If you want to enable/disable Auto-suggest, you can use this option. 
* **Trigger Phrase** :  
You can set trigger phrase for Auto-suggest in this field by default it is double spaces. 
* **Delay milli-seconds for trigger** :  
You can set the delay time in milliseconds for triggering an Auto-suggest to avoid unnecessary requests. 
* **Number of suggestions** :  
You can set the number of suggestions shown in the dropdown. Please beware that increasing the suggestions in GPT for text generation might significantly increase the cost of usage. 
* ***Stop Phrase*** :  
You can set stop phrase for Auto-suggest in this field. If stop phrase is found in the generated text the generated text will stop. 

> [!note] Stop Phrase
> **Stop Phrase** is a way to signal to the model generating the text when you want it to stop generating text. It could be a character like a space or period, or even a line break. This can be useful in auto suggestion when you want to complete by **words** (using space ` ` as a stop phrase), **sentences** (using dot `.` as a stop phrase), or **paragraphs** (using line break `\n` as a stop phrase).
