---
description: 'Setting up GitHub Copilot with Neovim for AI-powered coding'
pubDate: 'Feb 11 2025'
heroImage: /neovim_copilot.png
title: 'Integrating GitHub Copilot with Neovim'
---

## Introduction

In this post, I'll walk through the process of setting up GitHub Copilot in Neovim and share some tips for getting the most out of this powerful AI coding assistant. I watched a couple of videos on YouTube and set up Copilot in Neovim. What is annoying me about it is that it is a bit fiddly to get it running. In one video the tutor say "Do it this way" and then it doen't work, so I have to go and find another video to get other  information to get the software doing what I want. At least with  [Windsurf](/blog/windsurf_gemini_2_flash) it is plain sailing, even if I have to pay for it. The only thing is that I don't get all the keyboard goodness I have when using Neovim. I also noticed that Copilot in Neovim is a bit slow to respond.

## What worked for me

I created a new file in the plugins folder in neovim and called completions.lua. In this file I put the following code:

```lua
return {
  {
    "github/copilot.vim",
  },
}
```

Then I had to run 'Copilot auth' as a command in [Neovim](/blog/neovim_customization). I got a code to enter in the Github website and within a minute I was in business.This time after 3 previous attempts as per the other tutorial, it worked for me. All that came next was the disappointment of the Copilot AI in Neovim.
I have the little Copilot logo in the status bar at the bottom of the screen. Just not a lot of AI help in the file I'm working on.

## Neovim Niggles

I am getting an error message sometimes in markdown files about the line length. I was able to get rid of that by creating a file with a message to the linting plugin to ignore the line length error. I also added a plug in to surround a word or selected words with whatever I want such as quotation marks, square brackets or whatever. It works OK with putting one character in there but no good if I wanted a whole html tag. Then to get the surrounding characters removed there is a key combination to do it but it doesn't always work. 

So why stick with Neovim? I will still persevere and use it for my coding because it has great tools for finding files and moving around the file system. Also good for doing a global find and replace with one of the plug ins. It feels like a proper geeky, nerdy professional tool for coding. However, Windsurf is pretty nice and easy to use. What I lose in poroductivity because it hasn't got the same smarts as Neovim, it makes up for in other ways. Like the inclusion of AI and the ability to use other LLMs to get the AI done. I used Claude 3.5 Sonnet today because I could add an image to give context to the code or text I'm working on. 

![Different LLMs](/llms.png)

