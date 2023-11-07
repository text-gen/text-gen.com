---
title: extract helper function
tags: 
layout: note 
---
The `extract` command is utilized to retrieve content from a variety of sources such as web pages, images, YouTube videos, PDFs, RSS and audio files. It is a versatile command that allows for data acquisition from different media types for further processing or analysis.

## Usage

### Basic Extraction

#### Syntax

```handlebars
{{extract "extractorType" source}}
```

- `"extractorType"`: The type of extractor to be used (e.g., "web", "youtube", "pdf", "image", "audio", "rss").
- `source`: The variable or direct URL/path that points to the content source.

#### Examples

**Extracting content from a web page using a variable or direct URL:**

```handlebars
{{extract "web" weburl}}
{{extract "web" "https://example.com"}}
```

**Using extractors for other media types:**

```handlebars
{{extract "youtube" ytUrl}}
{{extract "pdf" pdfPath}}
{{extract "image" imgPath}}
{{extract "audio" audioPath}}
```

### Processing Input with Blocks

To preprocess input before extraction, the `extract` command can be used in block mode.

#### Syntax

```handlebars
{{#extract "extractorType"}}
 {{inputVariable}}
{{/extract}}
```

#### Example

**Preprocessing a web URL before extraction:**

```handlebars
{{#extract "web"}}
 {{weburl}}
{{/extract}}
```

## Web Extractor Options

The `web` extractor can be used with additional options to tailor the extraction process.

### Output Formatting

By default, the `web` extractor outputs results in markdown. However, if HTML format is required, you can specify this as follows:

#### Syntax

```handlebars
{{extract "web_html" source}}
```

#### Example

**Extracting as HTML:**

```handlebars
{{extract "web_html" "https://example.com"}}
```

### Using CSS Selectors

To focus the extraction on a specific part of a web page, you can utilize a CSS selector.

#### Syntax

```handlebars
{{extract "web_html" source "cssSelector"}}
```

#### Example

**Focusing on an article section of a web page:**

```handlebars
{{extract "web_html" "https://example.com" "article"}}
```

## Key Points

- **Use** the `extract` command to retrieve content from specified sources.
- **Specify** the type of extractor and the source for the content you wish to extract.
- **Process** input before extraction using block syntax for preprocessing needs.
- **Extract** content in markdown or HTML format according to your requirements.
- **Employ** CSS selectors with the `web` extractor to target specific content within a web page.

By leveraging the `extract` command, you can automate the content retrieval process from a range of media, enabling efficient data collection for your workflows.