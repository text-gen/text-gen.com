---
title: draft metadata
tags: 
layout: note 
---

## DRAFT

## Mode 
* 1. **Insert, Replace, and Rename Modes:** Users can now specify the desired mode for completions in the config file. The available modes are:
    

- `insert`: Inserts the completion at the cursor's position.
- `replace`: Replaces the selected text with the completion.
- `rename`: Renames the title of the active file with the completion.


## System & messages 
3. **System and Messages in Config:** You can now add system and messages in the config file to format your interactions with the Text Generator. For example, configuring the system to act as an English translator, spelling corrector, and improver that responds in corrected and improved English. Additionally, you can define messages for various scenarios.

  system: string,
  messages: string[],
```
system: <Your system description>
 messages:
 - <user Message>
 - <assistant Message>
 - <user Message>
 - <assistant Message>
```


## Model params 
  max_tokens: number, the maximum token that will considered
  temperature: number,  the randomness of LLM
  
##  Stream

  stream: boolean, true or false use streaming mode (True) / (False) 
  
  provider: "custom" | "openAIChat" | "openAIInstruct" | "azureOpenaiChat" | "azureOpenaiInstruct" | "palm" | "anthropic" | "ollama" | "hf",

# disableProvider 
* I think runable is better 
True if you don't to run this template and just compile it. 
disableProvider: boolean, 
  
# endpoint 

  endpoint: string, if you want to use specific endpoint

  output: string, 
  path to get the result from the reponse 
  >dalle-2 example:
  ```
   '\n![]({{requestResults.data.0.url}})'
  ```

  // objects

  body: string | object,
> incase of provider is custom
> example of dalle-2 body
```
'{"n": 1, "size": "1024x1024", "prompt": "{{escp prompt}}"}'
```

 headers: string | object,
> incase of provider is custom
> example of huggingface headers
```
{ "Authorization": "Bearer {{keys.hf}}" }'
```

 
