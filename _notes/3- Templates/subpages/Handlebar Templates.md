---
title: Handlebar Templates
tags: 
layout: note
---
Handlebars helper functions extend the capabilities of templates by providing utility functions for various tasks such as managing variables, handling files, formatting text, and more. These helpers are crucial for creating dynamic and interactive templates that can handle complex logic and data manipulation.

> [!note] Template engine
> For more information about the template engine, please see [handlebarsjs](https://handlebarsjs.com/)

## Variable Management

Variable management helpers are crucial for storing and retrieving data within templates. These functions enable the setting and accessing of variables that can be used throughout the template.

### `set`
Stores a value in a variable for later use within the template. This can be done in either inline mode or block mode.

#### Example: Inline Mode
```handlebars
{{set "var1" selection}}
```

#### Example: Block Mode
```handlebars
{{#set "var1"}}
 {{selection}}
{{/set}}
```

Note: Variables set using this helper are stored in the `vars` object.

### `get`
Retrieves the value of a variable that was previously set.

#### Example:
```handlebars
{{get "var1"}}
or
{{vars.var1}}
```

## File Operations

File operations helpers allow reading from and writing to files within the vault, facilitating content management directly through templates.

### `write`
Writes text to a file specified by the given filename.

#### Example:
```handlebars
{{#write "readme.md"}}
... content of readme.md file in the document ...
{{/write}}
```

### `read`
Reads the content of a file from the vault using its path.

#### Example:
```handlebars
{{read "readme.md"}}
```

#### Output:
```
... content of readme.md file in the document ...
```

## Template Operations

Template operations helpers involve executing another template within the current context, which allows for reusability and modular design.

### [[run helper function|run]]

Executes another template within the context of the current one, which can be used to include common template parts or run complex scripts.  Additional details about its functionality can be found on the [[run helper function|run]] page.

## Information Extraction

Information extraction helpers are designed to gather data from various sources such as web pages, images, and documents, enhancing the template's ability to interact with external content.

### [[extract helper function|extract]]
The `extract` helper is used to obtain information from different sources, enhancing the template's capabilities in processing and analyzing content.  Additional details about its functionality can be found on the [[extract helper function|extract]] page.

## Text Formatting

Text formatting helpers provide functionality for manipulating and adjusting string values, which is essential for preparing content for display or further processing.

### `escp`
Removes newlines from a string, ensuring the text is formatted in a single line.

#### Example:
```handlebars
{{escp "hello \n world"}}
```

#### Output:
```
hello  world
```

### `escp2`
Removes newlines and trims the string, cleaning up whitespace and line breaks.

#### Example:
```handlebars
{{escp2 "     hello \n world      "}}
```

#### Output:
```
hello world
```

### `length`
Calculates the length of a string, which is useful for validation or formatting operations.

#### Example:
```handlebars
{{length "hello"}}
```

#### Output:
```
5
```

### `substring`
Extracts a portion of a string based on the provided start and end indices.

#### Example:
```handlebars
{{substring "hello world" 0 5}}
```

#### Output:
```
hello
```

### `replace`
Replaces all occurrences of a search string within a given string with a replacement string.

#### Example:
```handlebars
{{replace "hello world" "world" "there"}}
```

#### Output:
```
hello there
```

### `truncate`
Shortens a string to a specified length and appends an ellipsis, indicating that the text has been cut off.

#### Example:
```handlebars
{{truncate "This is a long text." 10}}
```

#### Output:
```
This is a ...
```

### `tail`
Retrieves the last specified number of characters from a string, prepending an ellipsis to indicate the truncation.

#### Example:
```handlebars
{{tail "This is a long text." 10}}
```

#### Output:
``` 
...ong text.  
```

### `split`
Divides a string into an array of substrings, using the given separator.

#### Example:
```handlebars
{{split "apple,banana,orange" ","}}
```

#### Output:
```   
["apple","banana","orange"]
```

### `join`
Combines an array of strings into a single string, using the specified separator.

#### Example:
```handlebars
{{join ["apple","banana","orange"] "| "}}
```

#### Output:
```    
apple| banana| orange    
```

### `unique`
Filters an array to contain only unique elements, removing duplicates.

#### Example:
```handlebars
{{unique ["apple", "banana", "apple", "orange", "banana"]}}
```

#### Output:
```     
["apple","banana","orange"]     
```

### `trim`
Trims whitespace from both ends of a string, which is often needed for clean text input and output.

#### Example:
```handlebars
{{trim "    hello world    "}}
```

#### Output:
```    
hello world    
```

## User Interaction

User interaction helpers are designed to provide feedback or prompt a response from the user, essential for creating an interactive template experience.

### `log`
Outputs a message to the console, useful for debugging or informing the user of background processes.

#### Example:
```handlebars
{{log "Working on something..."}}
```

The output is shown in the console as a log message.

### `notice`
Displays a notice message to the user, which can be used for providing non-critical information.

#### Example:
```handlebars
{{notice "Working on something..."}}
```

The output is shown to the user as a notice message.

### `error`
Displays an error message and halts the execution of the template, used for critical issues where continuation is not possible.

#### Example:
```handlebars
{{error "Sorry, this template won't work without a note"}}
```

Useful for ensuring that necessary conditions, such as the presence of a selection, are met before proceeding.

## Miscellaneous

Miscellaneous helpers include functions that don't fit neatly into other categories but provide essential capabilities for the templates.

### `date`
Fetches the current date and time, which can be used for timestamping or other date-related operations.

#### Example:
```handlebars
{{date}}
```

The output will be the current date and time.

### `getRandomFile`
Select a file at random that matches pattern in its file path and falls within a specified range of minimum and maximum content lengths.
#### Example:
```handlebars
{{getRandomFile "input/" 100 1500}} // to filter just the notes in input folder
```

```handlebars
{{getRandomFile pattern minLength maxLength}}
```

The `getRandomFile` function takes three parameters:
- `pattern`: A string representing the pattern to match in the file path. It is used to filter the files and select only those that have this pattern in their path.
- `minLength`: An integer representing the minimum content length of the file. Files with content shorter than this length will not be selected.
- `maxLength`: An integer representing the maximum content length of the file. Files with content longer than this length will not be selected.

#### Output:
```
filename: [random file name] 
content: [random file content]
```

> [!note] Note
>  More helper functions will added in the future releases. Our [discord server](https://discord.gg/BRYqetyjag) is a great place to ask for assistance or suggest new features.
