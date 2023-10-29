---
title: Dalle-2 Configuration
tags: 
layout: note 
---
> [!warning]
> You need first to configure the [[Configure API Key]]. 

```
---
name: Dalle-2
description: generate images using dalle-2
provider: Default (Custom)
endpoint: https://api.openai.com/v1/images/generations
body: '{"n": 1, "size": "512x512", "prompt": "{{escp2 prompt}}"}'
output: '`\n![](${requestResults.data[0].url})`'
commands:
  - generate
stream: false
---
```

* For more information : [https://beta.openai.com/docs/api-reference/images](https://beta.openai.com/docs/api-reference/images)