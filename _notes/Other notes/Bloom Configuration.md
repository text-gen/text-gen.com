---
title: Bloom Configuration
tags: 
layout: note 
---

> [!warning]
> You need HuggingFace **API Token**. [https://huggingface.co/inference-api](https://huggingface.co/inference-api). Change APIToken in Authorization field by your own **API Token**.

```
---
config:
 append:
  bodyParams: false
  reqParams: true
 context: 'inputs'
 output: 'requestResults[0]?.generated_text'
bodyParams:
reqParams:
 url: "https://api-inference.huggingface.co/models/bigscience/bloom"
 headers:
  Authorization: "Bearer APIToken"
---
```