---
title: OpenAI Chat
tags: 
layout: note
---
It connects to [Openai](https://openai.com/)
uses the [langchain](https://github.com/langchain-ai/langchain) library


# Models:
- **gpt-3.5-turbo**
- gpt-3.5-turbo-1106
- gpt-3.5-turbo-16k
- **gpt-4**
- gpt-4-1106
- gpt-4-32k
- gpt-4-vision-preview
- gpt-3.5-turbo-0301
- gpt-3.5-turbo-0613
- gpt-3.5-turbo-16k-0613
- gpt-4-0314
- gpt-4-0613
- gpt-4-32k-0314
- gpt-4-32k-0613

## Checking OpenAI Services Status

Before we delve into the errors, it is always a good idea to check the status of OpenAI services. You can do so by visiting [OpenAI status](https://status.openai.com/).

## Common Errors

> [!bug] Status 400
> * **Request length is too big**: This error occurs when the length of your request exceeds the model's maximum request limit. Most models have a maximum request limit of 2048 tokens (except for the newest models, which support 4096). To fix this error, reduce the number of tokens in your prompt or the max_tokens parameter.
> * **API key is not correct**: This error occurs when you have not provided a valid API key or have provided an incorrect one. Make sure you have copied and pasted the correct API key without any typos.

> [!bug] Status 401
> This error message indicates that your authentication credentials are invalid. This could happen for several reasons, such as:
> - You are using a revoked API key.
> - If you are unsure whether your API key is valid, you can generate a new one from [here](https://platform.openai.com/account/api-keys).

> [!bug] Status 429
>  * **API rate limit exceeded**: This error occurs when you have exceeded the rate limit for API requests. The rate limit is set to 20 requests per minute for free accounts. 
>  * **Credits have expired**: This error occurs when your free trial period has ended or you have consumed all of your credits. To fix this error, you need to purchase more credits by upgrading your account.


By understanding these **common errors** and their possible causes, you can save time and avoid frustration while using the OpenAI API. 
