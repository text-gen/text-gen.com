---
title: Helper Functions
tags: #template
layout: note 
---
## Helper Functions
These are functions that help in dealing with the variables. in addition to [Built-in Helpers](https://handlebarsjs.com/guide/builtin-helpers.html) in  [Handlebars](https://handlebarsjs.com/): 

### `run`
Runs another template and passes context to it.

**Example:**
```handlebars
{{run "summary" selection}}
```
- The simplest form is to pass the `selection` to the next template.

```handlebars
{{run "summary" "text to be summarized"}}
```
- You can also pass a string directly as the `selection`.

```handlebars
{{#run "summary"}}
  text to be summarized
{{/run}}
```
- To do more processing before sending the `selection`, you can enclose the content within the `run` block.

```handlebars
{{#run "summary"}}
{
  "selection": "text to be summarized",
  ... other config
}
{{/run}}
```
- You can pass additional variables or context by wrapping them in a `run` block. Ensure that the context is JSON-serializable.

```handlebars
{{run "summary" selection "customName"}}

{{#run "summary" "customName"}}
  text to be summarized
{{/run}}
```
- You can also give it a custom name for the get helper, this is helpful when you have multiple run commands with the same template and you want to distinguish between them.


**Output:**
```
lorem
```

### `get`
Gets the result from running another template.

**Example:**
```handlebars
{{get "summary"}}
```

**Output:**
```
lorem
```

### `extract`
Executes extractors to retrieve content from various sources like web, images, YouTube, PDFs, and audio.

**Example:**
```handlebars
{{extract "web" weburl}}
```
- This example executes the web extractor, using the `weburl` context variable set by the user.

You can also use other extractors:

```handlebars
{{extract "youtube" ytUrl}}
{{extract "pdf" pdfPath}}
{{extract "image" imgPath}}
{{extract "audio" audioPath}}
```

You can pass values directly as well:

```handlebars
{{extract "web" "http://..."}}
{{extract "web" selection}}
```

To process input before sending it to the extractor, you can use a block:

```handlebars
{{#extract "web"}}
 {{weburl}}
{{/extract}}
```

**Output:**
```
lorem
```

### `escp`
Removes newlines from text.

**Example:**
```handlebars
{{escp "hello \n world"}}
```

**Output:**
```
hello  world
```

### `escp2`
Removes newlines and trims text.

**Example:**
```handlebars
{{escp2 "     hello \n world      "}}
```

**Output:**
```
hello world
```

### `notice`
Shows a notice to the user.

**Example:**
```handlebars
{{notice "Working on something..."}}
```

**Output:** (Shows a notice message)

### `error`
Shows an error message and stops the template from continuing.

**Example:**
```handlebars
{{error "Sorry, this template won't work without a note"}}
```
- In this example, it checks if there's a `selection`, otherwise, it shows an error message.

```handlebars
{{#unless selection}}
	{{error "You need to provide selection first"}}
{{/unless}}
```

**Output:** (Shows an error message)

#### `length`
Get the length of a string.
##### Example 
###### Code
```handlebars
{{length "hello"}}
```
###### Output
```
5
```

#### `substring`
Get a substring from a string between the start and end indices.
##### Example 
###### Code
```handlebars
{{substring "hello world" 0 5}}
```
###### Output
```
hello
```

#### `replace`
Replace all occurrences of a search string with a replace string in the given string.
##### Example 
###### Code
```handlebars
{{replace "hello world" "world" "there"}}
```
###### Output
```
hello there
```

#### `date`
Get the current date and time as a string.
##### Example 
###### Code
```handlebars
{{date}}
```
###### Output
```
[current date and time]
```

#### `truncate`
Truncate a string to a specified length and append '...'.
##### Example 
###### Code
```handlebars
{{truncate "This is a long text." 10}}
```
###### Output
```
This is a ...
```

#### `tail` 
Get the last specified number of characters from a string, prepending '...'.
##### Example 
###### Code
```handlebars
{{tail "This is a long text." 10}}
``` 
###### Output  
``` 
...ong text.  
``` 

#### `split`  
Split a string into an array using the given separator.  
##### Example   
###### Code  
```handlebars
{{split "apple,banana,orange" ","}}  
```   
###### Output   
```   
["apple","banana","orange"]  
```   

#### `join`  
Join an array of strings using the given separator.   
##### Example    
###### Code    
```handlebars
{{join ["apple","banana","orange"] ", "}}    
```    
###### Output    
```    
apple, banana, orange    
```    

#### `unique`   
Return an array containing only unique elements from the input array.     
##### Example     
###### Code     
```handlebars
{{unique ["apple", "banana", "apple", "orange", "banana"]}}     
```     
###### Output     
```     
["apple","banana","orange"]     
```     

#### `trim`   
Trim whitespace from both ends of a string.    
##### Example     
###### Code    
```handlebars
{{trim "    hello world    "}}    
```    
###### Output    
```    
hello world    
```    

#### `getRandomFile`  
Get a random file matching the given pattern with content length within the specified range.   
##### Example   
###### Code   
```handlebars
{{getRandomFile "pattern" 100 1500}}
```
###### Output   
```
filename: [random file name] 
content: [random file content]
```

> [!note] Note
>  More helper functions will added in the future releases. Our [discord server](https://discord.gg/BRYqetyjag) is a great place to ask for assistance or suggest new features.


>  
> 
