---
title: Frontmatter Configuration
tags: doc
layout: note 
---
## YMAL configuration 

Frontmatter configuration is very flexible and can work with many services such as [[Create an account in OpenAI |OpenAI]] and [[HugginFace]].

## The structure of the frontmatter 
```ymal
---
config:
 append:
  bodyParams: Boolean
  reqParams: Boolean
 context: String
 output: String
bodyParams:
 parameter: value
reqParams:
 parameter: value
 ---
```

* **config**  
  * **append** 
    * **bodyParams**: Append or not body form-data parameters to the default configuration (true/false).
    * **reqParams**: Append or not request parameters to the default configuration (true/false)
  * **context**
	  * The variable that will include the considered content in bodyParams. Default name is prompt.  
  * **output** 
	  *  Request results are in the variable requestResults. You need to write js code to extract the results. 
* **bodyParams**  
	This includes the body form-data parameters you can refer to the documentation of API to know the different variables to include. [Open AI Documentation](https://beta.openai.com/docs/api-reference). 
	
	* For example: 
		*  **n**: Number of generations  
		* **max_tokens**: the max number of tokens per generation.  
* **reqParams**   
  * url : base url for request construction.
  
## See [[Examples of frontmatter configurations]]