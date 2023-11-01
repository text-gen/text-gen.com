---
title: Template Metadata
tags: 
layout: note 
---
# TODOs
* [ ] Add the new metadata

# Template File Metadata Documentation

## Overview

The Template File Metadata is a crucial component of any template in Text Generator. It serves as the header information that provides essential details about the template itself. Properly documenting this metadata ensures clarity, usability, and consistency in your template management. This documentation will guide you through the various fields within the Template File Metadata and how to use them effectively.

## Fields in Template File Metadata

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
- **Purpose**: The `commands` field specifies various actions that can be associated with the template. Each action corresponds to a specific command, which can be assigned a hotkey for user convenience. Here are the available commands and their purposes:

   - `generate`: Compiles the template and generates content through LLM, inserting the result into the active note.
   - `generate&create`: Compiles the template and generates content through LLM, inserting the result into a new note.
   - `insert`: Compiles the template and inserts the result into the active note without using LLM.
   - `insert&create`: Compiles the template and inserts the result into a new note without using LLM.
   - `model`: Shows the template as a form of inputs and inserts the result into the active note.
   - `clipboard`: Compiles the template and generates content through LLM, writing the result to the clipboard.

## Best Practices

To create a professional and clear Template File Metadata, follow these best practices:

- Use clear and concise language in the `description` field.
- Ensure that the `name` field provides a meaningful title for the prompt.
- Add relevant tags in the `tags` field to aid in prompt filtering.
- Follow Semantic Versioning for the `version` field.
- Consider user convenience when assigning commands to the `commands` field.

By documenting your Template File Metadata comprehensively and adhering to these best practices, you can enhance the usability and clarity of your templates. This, in turn, will improve the overall user experience and efficiency when sharing it with the community.


## References 
* old documentation: [[Template File Metadata]]
