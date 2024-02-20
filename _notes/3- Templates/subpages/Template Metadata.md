---
title: Template Metadata
tags: 
layout: note
---
The Template File Metadata is a crucial component of any template in Text Generator. It serves as the header information that provides essential details about the template itself. Properly documenting this metadata ensures clarity, usability, and consistency in your template management. This documentation will guide you through the various fields within the Template File Metadata and how to use them effectively.

## Fields in Template File Metadata

| Field                   | Type                                | Purpose                                                                      | Example                                   |
| ----------------------- | ----------------------------------- | ---------------------------------------------------------------------------- | ----------------------------------------- |
| `promptId`              | String                              | Unique identifier for each prompt. Must match the name of the template file. |                                           |
| `name`                  | String                              | Concise and descriptive name for the prompt.                                 |                                           |
| `description`           | String                              | Explains the purpose of the prompt.                                          |                                           |
| `author`                | String                              | Attributes the prompt to its creator.                                        |                                           |
| `required_values`       | Array of Strings                    | Lists values necessary for template function.                                |                                           |
| `tags`                  | Array of Strings                    | Relevant keywords for filtering prompts.                                     |                                           |
| `version`               | String (Semantic Versioning)        | Indicates prompt version.                                                    |                                           |
| `commands`              | Array of Strings                    | Specifies actions associated with the template.                              | `generate`, `insert&create`               |
| `mode`                  | String                              | Specifies the desired mode for completions.                                  | `insert`, `replace`                       |
| `system and messages`   | Object                              | Configures system behavior and define messages.                              |                                           |
| `max_tokens`            | Number                              | Maximum tokens considered in completion.                                     |                                           |
| `temperature`           | Number                              | Indicates randomness of model output.                                        |                                           |
| `stream`                | Boolean                             | Controls streaming mode operation.                                           | `true`, `false`                           |
| `provider`              | String                              | Service/platform used for processing.                                        | "openAIChat", "ollama"                    |
| `model`                 | String                              | Name of the model for selected provider.                                     |                                           |
| `disableProvider`       | Boolean                             | Allows disabling of template execution (disabled by default).                | `true`, `false`                           |
| `endpoint`              | String                              | Specific endpoint for template use.                                          |                                           |
| `output`                | String                              | Path to retrieve result from response.                                       | `![]({{requestResults.data.0.url}})`      |
| `body`                  | String \| Object                    | Data for the API request.                                                    | `{"n": 1, "prompt": "{{escp prompt}}"}`   |
| `headers`               | String \| Object                    | Sends additional request metadata.                                           | `{"Authorization": "Bearer {{keys.hf}}"}` |
| `chain.loader`          | String                              | Loader function to initialize chain process.                                 | `loadSummarizationChain`                  |
| `chain.type`            | "map_reduce" \| "refine" \| "staff" | Type of langchain chains to utilize.                                         |                                           |
| `chain.verbose`         | Boolean                             | Provides detailed logging for chain process.                                 |                                           |
| `splitter.chunkSize`    | Number                              | Size of each chunk for input data splitting.                                 |                                           |
| `splitter.chunkOverlap` | Number                              | Overlapping elements between consecutive chunks.                             |                                           |
| `strict`                | Boolean                             | Forces the user to fill all the Variables before running the template.       |                                           |
| `viewTypes`              | Array of Strings                    | Tells Obsidan what files are supported (markdown, excalidraw, canvas)        |                                           |

### `promptId`

- **Type**: String
- **Purpose**: The `promptId` field serves as a unique identifier for each prompt in your UI. It distinguishes one template from another, helping users quickly locate and select the desired prompt. It must be the same as the name of the template file.

### `name`

- **Type**: String
- **Purpose**: The `name` field provides a concise and descriptive name for the prompt. It should be short yet precise, enabling users to identify the prompt easily.

### `description`

- **Type**: String
- **Purpose**: The `description` field explains the purpose of the prompt and how users should utilize it. It is essential to keep this description simple, concise, and user-friendly.

### `author`

- **Type**: String
- **Purpose**: The `author` field attributes the prompt to its creator. It helps give credit to the person responsible for creating the template.

### `required_values`

- **Type**: Array of Strings
- **Purpose**: The `required_values` field lists the values that are necessary for the template to function correctly. It informs users of the specific data inputs or parameters they need to provide when using the template.

### `tags`

- **Type**: Array of Strings
- **Purpose**: The `tags` field includes relevant keywords or labels that describe the prompt. These tags are used for filtering prompts, making it easier for users to find templates that match their needs.

### `version`

- **Type**: String (Follows Semantic Versioning)
- **Purpose**: The `version` field indicates the version of the prompt. It is recommended to adhere to Semantic Versioning (semver.org) for versioning, ensuring consistency when updating prompts.

### `commands`

- **Type**: Array of Strings
- **Purpose**: The `commands` field specifies various actions that can be associated with the template. Each action corresponds to a specific command, which can be assigned a hotkey in obsidian for user convenience. Here are the available commands and their purposes:

   - `generate`: Compiles the template and runs content through LLM, inserting the result into the active note.
   - `generate&create`: Compiles the template and runs content through LLM, inserting the result into a new note.
   - `insert`: Compiles the template and inserts the result into the active note without running it using LLM.
   - `insert&create`: Compiles the template and inserts the result into a new note without running it using LLM.
   - `model`: Shows the template as a form of inputs and inserts the result into the active note.
   - `clipboard`: Compiles the template and runs content through LLM, writing the result to the clipboard.
   
### `mode`

- **Type**: String
- **Purpose**: The `mode` field allows users to specify the desired mode for completions when using the template. This field provides flexibility in how completions are integrated into the content. The available modes are:
   - `insert`: Inserts the completion at the cursor's position.
   - `replace`: Replaces the selected text with the completion.
   - `rename`: Renames the title of the active file with the completion.

```yaml
mode: insert
```
### `system and messages`

- **Type**: Object
- **Purpose**: The `system` and `messages` fields in the config file allow you to configure the system's behavior and define messages for various interactions with the LLM. For example, you can configure the system to act as an English translator, spelling corrector, and improver that responds in corrected and improved English. The `system` field is a string describing the system, and the `messages` field is an array containing user and assistant messages in alternating order, defining the conversation flow.
```yaml
system: <Your system description>
messages:
- <user Message>
- <assistant Message>
- <user Message>
- <assistant Message>
```

### `max_tokens`
- **Type**: Number
- **Purpose**: `max_tokens` is the maximum number of tokens that will be considered in the completion.
### `temperature`
- **Type**: Number
- **Purpose**: `temperature` is a value indicating the randomness of the language model's output. Higher values result in more randomness.
### `stream`
- **Type**: Boolean
- **Purpose**: The `stream` field controls whether the template operates in streaming mode or not. Streaming mode allows for real-time interaction with the Text Generator. You can set it to `true` for streaming mode or `false` for non-streaming mode. 
### `provider`
- **Type**: String
- **Purpose**: Determines the service or platform to be used for processing or handling the request.
- **Options**: "custom", "openAIChat", "openAIInstruct", "azureOpenaiChat", "azureOpenaiInstruct", "palm", "anthropic", "ollama", "hf".

### `model`

- **Type**: String
- **Purpose**: Specifies the name of the model to be used for the selected provider.

### `disableProvider`
- **Type**: Boolean
- **Purpose**: The `disableProvider` field allows you to disable the execution of the template and only compile it. Set it to `true` if you don't want the template to run and generate content.
### `endpoint`
- **Type**: String
- **Purpose**: The `endpoint` field specifies a specific endpoint to use for the template. This is useful when you want to target a particular API endpoint for communication.

### `output`
- **Type**: String
- **Purpose**: The `output` field defines the path to retrieve the result from the response when using the template. This path can be customized to extract specific data from the response.
* Example 
```js
\n![]({{requestResults.data.0.url}})
```
### `body`
- **Type**: String | Object
- **Purpose**: Provides data for the API request; format varies by provider.
- **Example (For DALL-E-2)**: 
```js
{"n": 1, "size": "1024x1024", "prompt": "{{escp prompt}}"}
```

### `headers`
- **Type**: String | Object
- **Purpose**: Sends additional request metadata, often for authentication.
- **Example (For Huggingface)**: 
 ```js
 {"Authorization": "Bearer {{keys.hf}}"}
 ```

### `strict`
- **Type**: Boolean
- **Purpose**: Forces the user to fill all the Variables before running the template.
- **Note:** It only works if the user is not using custom Form or if the variable ends with `_optional`.

### `viewTypes`
- **Type**: String[]
- **Purpose**: Tells Obsidan what views are supported (markdown, excalidraw, canvas).
- **Default:** all view types
![[Pasted image 20231223212338.png]]
### `chain.loader`
- **Type**: String
- **Purpose**: Specifies the loader function to initialize a particular chain process.
- **Default**: `loadSummarizationChain`
- **More Options**: Refer to the `chains` object for additional loader functions.
### `chain.type`
- **Type**: "map_reduce" | "refine" | "staff"
- **Purpose**: Determines which type of langchain chains to utilize for processing.
- **Note**: If `chain.type` has a value, langchain chains will be used.
### `chain.verbose`
- **Type**: Boolean
- **Purpose**: When `true`, provides detailed logging or output for the chain process.
### `splitter.chunkSize`
- **Type**: Number
- **Purpose**: Defines the size of each chunk or segment for splitting the input data.
### `splitter.chunkOverlap`
- **Type**: Number
- **Purpose**: Specifies the number of overlapping elements or size between consecutive chunks when splitting.

## Best Practices

To create a professional and clear Template File Metadata, follow these best practices:

- Use clear and concise language in the `description` field.
- Ensure that the `name` field provides a meaningful title for the prompt.
- Add relevant tags in the `tags` field to aid in prompt filtering.
- Follow Semantic Versioning for the `version` field.
- Consider user convenience when assigning commands to the `commands` field.
