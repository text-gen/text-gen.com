---
title: Helper Functions
tags: #template
layout: note 
---
## Helper Functions
These are functions that help in dealing with the variables. in addition to [Built-in Helpers](https://handlebarsjs.com/guide/builtin-helpers.html) in  [Handlebars](https://handlebarsjs.com/): 

#### `length`
Get the length of a string.
##### Example 
###### Code
```
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
```
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
```
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
```
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
```
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
``` 
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
```   
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
```    
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
```     
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
```    
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
```
{{getRandomFile "pattern" 100 1500}}
```
###### Output   
```
filename: [random file name] 
content: [random file content]
```


write a item about helper function to include in the realses notes 
