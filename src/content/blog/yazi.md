---
title: 'Yazi - Terminal File Manager'
description: 'Geeky Way to Move Around File System - Works Great With Neovim'
pubDate: 'Dec 31 2024'
heroImage: '/yazi1.png'
---

# Working in the Terminal The Geeky Way

There are a few reasons why working in the terminal is really handy. Neovim has some great tricks you can do using the keyboard to make working with text super easy and fast. You can save a lot of time coding and with whatever sort of writing by not having to reach for the mouse every ten seconds. I often wish which I had Neovim functionality in a Mac app for my work with text. I did try using a Vim plugin for VSCode but it just kind of got in the way. So to complement using Neovim I saw Yazi as a way to get to the files easy and then edit them in my favourite text editor. Yazi brings the Vim keybindings to navigating my way around the file system of my computer. When I get to the file I want I can press enter or the letter O to open the file and I'm ready to work. You can also open image files and it will open them in the correct Mac app.

## Installing Yazi is Easy

I use Homebrew to [install Yazi](https://yazi-rs.github.io/docs/installation). It is a very simple install. Just run the following command:

```zsh
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide imagemagick font-symbols-only-nerd-font
```

This installs Yazi and all the dependencies it needs. It is a very easy install. One of the nice things about Yazi is that I can set up a custom keybinding so that I can use it with Neovim. I like the way Yazi works and it is a very simple way to get to the files I want. I can also use customise it to go to a specific folder with the press of a couple of keys. I can get to the folder I use for this blog just by typing the letter g followed by the letter s (Go Spondicous). Or I can get to the home folder by typing gh - (Go Home). Makes sense right?

## Customisation of Yazi

The customisation of Yazi is also easy.  I made three config files yazi.toml, keymap.toml and theme.toml. Also need a folder to contain the themes called flavors. Only have to get the default settings and then make my changes. All the customisation is done in the TOML files. It's a very simple way to customise Yazi. I only made a change to have it show the invisible files , although just by pressing the full stop key, dot toggles them on and off. I also changed the setting for the left pane to make it wider. 

You get some icons at the left of the file name to help you visually identify the file type.

![Yazi](/yazi3.png)

## Quick keys to do Stuff

* type cc to get the complete file path
* type cn to get the name of the file
* type cd to get the directory of the file
* type f to filter the files in the current directory do you might want to just see all the json files or files with a certain word in the name.
* / Forward slash Find Next and then use n and N to find the next and previous matches.
* s to search for a file in the current directory with fd
* S to search using rg (RipGrep) looking for text within a file
* ,b to sort by creation
* ,B to sort by creation date (reverse)
There are other options for changing the sort order.
* y to Yank (copy)
* p to Put (Paste)
Those two are great to get screenshots from the Screenshots Folder and move them to another folder. Like to the folder I use for images for this blog.
* z to use Zoxide to get to the folder I want.
* Z to use FZF to find and jump to files and folders

##### You Get Help after typing the first character
![Yazi](/yazi4.png)

## The More I use Yazi the more I like it

It is proper Good and Geeky to use this Yazi File Manager. I can work with files quicker and more efficiently and not have to reach for the mouse. I just need to practice a bit more to remember the keybindings and then I'm ready to go. Most of them make sense like the go to keys and I can remember easy enough using z and Z for Zoxide and FZF. s and S for the searches. Here are the [Yazi QuickStart Docs](https://yazi-rs.github.io/docs/quick-start)

## Preview of Images in Yazi

![Yazi](/yazi2.png)