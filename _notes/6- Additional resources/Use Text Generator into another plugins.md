---
title: Untitled
tags: 
layout: note 
---
## Text Generation with `@vanakat/plugin-api`

### Installation
Install the package using npm:
```sh
npm install @vanakat/plugin-api
```

### Usage
To generate text using the plugin API:

1. Import and initialize the API:
```js
const pluginApi = require('@vanakat/plugin-api');
const tg = pluginApi('tg');
```

2. Call the `gen` method with your prompt:
```js
async function generateText(prompt) {
  return await tg.gen(prompt);
}
```

3. Use the function to generate text:
```js
generateText("Your prompt here").then(console.log).catch(console.error);
```

### Example
```js
// Import and initialize the API
const pluginApi = require('@vanakat/plugin-api');
const tg = pluginApi('tg');

// Generate text
(async () => {
  try {
    const text = await tg.gen("Example prompt");
    console.log(text);
  } catch (error) {
    console.error(error);
  }
})();
```

Replace "Example prompt" with your actual text prompt.


