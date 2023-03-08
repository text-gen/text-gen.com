---
title: Common Errors in OpenAI API code and their Possible Causes
tags: openai
layout: note 
---
# Common Errors in OpenAI API code and their Possible Causes

In this note, we will discuss some of the common errors that you may encounter while using the OpenAI API and their possible causes.

## Checking OpenAI Services Status

Before we delve into the errors, it is always a good idea to check the status of OpenAI services. You can do so by visiting [OpenAI status](https://status.openai.com/).

## Common Errors

### Status 400

* **Request length is too big**: This error occurs when the length of your request exceeds the model's maximum request limit. Most models have a maximum request limit of 2048 tokens (except for the newest models, which support 4096). To fix this error, reduce the number of tokens in your prompt or the max_tokens parameter.
* **API key is not correct**: This error occurs when you have not provided a valid API key or have provided an incorrect one. Make sure you have copied and pasted the correct API key without any typos.

### Status 429

* **API rate limit exceeded**: This error occurs when you have exceeded the rate limit for API requests. The rate limit is set to 20 requests per minute for free accounts. 

* **Credits have expired**: This error occurs when your free trial period has ended or you have consumed all of your credits. To fix this error, you need to purchase more credits by upgrading your account.

By understanding these common errors and their possible causes, you can save time and avoid frustration while using the OpenAI API.