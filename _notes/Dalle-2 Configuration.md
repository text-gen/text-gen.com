---
title: Dalle-2 Configuration
tags: 
layout: note 
---
> [!warning]
> You need first to configure the [[Configure API Key]]. 

```
---
config:
 append:
  bodyParams: false
  reqParams: true
 context: "prompt"
 output: '`\n![](${requestResults.data[0].url})`'
bodyParams:
 n: 1
 size: "1024x1024"
reqParams:
 url: "https://api.openai.com/v1/images/generations"
---
```

* For more information : [https://beta.openai.com/docs/api-reference/images](https://beta.openai.com/docs/api-reference/images)