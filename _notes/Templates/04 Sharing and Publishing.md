---
title: Sharing and Publishing
tags: 
layout: note 
---
  
**Sharing** your custom template can significantly impact the **`Text Generator`** community, offering fresh perspectives and aiding others in their creative endeavors. Your contribution supports the collective growth of this vibrant technology and allows you to connect with like-minded innovators. 
## Step 1: Preparing the Template

Follow these instructions to set up and prepare your template for the text generator.

### **Initialize** Your Repository

- **Access** the [template repository](https://github.com/text-gen/templates-package) to **start**.
- **Set up** your repository by using the provided template.

### **Edit** Your Files

- **Navigate** to your repository and **open** the editor. This can be done by **changing** `github.com` to `github.dev` in the URL bar, or **clone** the repository locally if you prefer using your code editor.
- **Place** your templates in the `prompts` folder and **remove** the example template.

### **Update** the Manifest

- **Edit** the `manifest.json` file to reflect your package’s information. **Ensure** that the `packageId` is unique.

```json
{
	"packageId": "unique-package-id", 
	"name": "Your Prompts Package Name",
	"version": "0.0.1", 
	"minTextGeneratorVersion": "your-current-version", 
	"description": "Describe your package", 
	"author": "Your Name", 
	"tags" : "relevant, tags", 
	"authorUrl": "your-information-page", 
	"repo":"username/repo" 
}
```

### **Commit** Your Changes

- In the source-control section, **make** a commit with the message `0.0.1` to **match** the version number in your `manifest.json`.

**Remember:** **Increment** the version number in the `manifest.json` each time you update your templates and **commit** with that new version.

<iframe width="100%" height="315" src="https://www.youtube.com/embed/hS9vx5On6Rs?si=xY1jtEGg3gU-RWlo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Step 2: Listing Your Package in Text Generator Packages

When you list your package in `Text Generator` Packages for the first time, follow these steps:

### **Edit** the Community Package File

1. **Go** to [community-packages.json](https://github.com/text-gen/text-generator-packages/edit/main/community-packages.json) and **append** your package's `manifest` at the end.
2. **Make** a commit. If prompted to fork the repository, **do so**.

```json
[
	// ... other packages' manifests
	{
		"packageId": "yourPackageId",
		// Your package details here
	}
]
```

### **Submit** Your Package

1. **Create** a pull request with the changes you've made to the `community-packages.json` file.
2. **Wait** for the review and approval of your pull request.


> [!important]
> This process **does not need** to be repeated for updates to an existing package; only for the initial addition.

<iframe width="100%" height="315" src="https://www.youtube.com/embed/is5fcgmSHSk?si=9LZ0cMqeUk75U1cA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
