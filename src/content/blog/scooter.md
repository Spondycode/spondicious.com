---
title: "Search and Replace with Scooter"
description: "Replace words in multiple files in the same folder"
pubDate: "Aug 27 2025"
heroImage: "/scooter_1.png"
---

## Search & Replace Words in Multiple Files

It can happen that you want to change a word in a number of files in the one folder and folders nested in that folder. It will be more likely if you are a developer and need to change the name of a function which could easily be scattered within a project. Scooter is a tool which does just what you need. It is a typical Linux tool which does one job and does it well.

As you can see in the image above you get a place to put in the word you want to replace. You also get a space to enter the word you want instead. Leave that empty if you want to just delete the word from the files you are searching through.

Then you have a few options - Matching the whole word, Matching the case and Fixed Strings. Matching the whole words means that what you put in the search has to have a space in front and after it for it to get matched. Case sensitivity is self explanatory.

In the Scooter terminal app, the **'Fixed strings'** option means that searches will be performed using plain, literal strings rather than regular expressions. When this option is enabled, Scooter looks for exact matches of the text entered, without interpreting special regex characters or patterns. If 'Fixed strings' is disabled, searches use regular expressions, allowing for more advanced and flexible matching.

## How 'Fixed strings' Works

- **Enabled**: Searches for the exact characters typed, matching only precise instances. This is similar to the `-F` or `--fixed-strings` flag in tools like `grep`, which instructs them to treat the input as a literal string rather than a pattern.
- **Disabled**: Searches interpret the input as a regular expression, enabling pattern matching, wildcards, and capture groups.

## When to Use 'Fixed strings'

- Use when only exact text matches are needed, such as finding a specific variable or keyword in source code.
- Avoid if complex pattern searches or partial matches are required; use regex mode instead.

This option is especially useful in programming or text editing contexts where accidental regex interpretation may yield unintended matches or errors.

## How to Use Scooter

It is so simple to use. After you have installed it with Brew or your installer of choice, type scooter in the terminal. I use [Ghostty](/blog/kitty) Fill in the fields as described above and away you go. You will see a list of the matches. It it looks good press enter to get to the screen where you can choose the files to work on. In the next screen you will get the change to choose which replacements to make. If it has found something you don't want to change just press the space bar to delete the x in the box.

![scooter](/scooter_3.png)

You will then get a screen showing the success of your mission.

![scooter](/scooter_2.png)

## Ignore Some Files

You can manually add files to be ignored by Scooter in the search screen. or you can tell it specifically to look in files you are interested in. Also you can make a .ignore file in the folder if there are folders you always want to ignore. with these two options you can be quite specific which folders get looked into and which ones don't.
