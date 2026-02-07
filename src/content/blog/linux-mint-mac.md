---
title: "Linux Mint Ldme on an Old Mac"
description: "Breathing Fresh Life into an Old Mac with Linux Mint"
pubDate: "Feb 07 2026"
heroImage: "/coder-linux-guy.png"
---

The old Mac was sitting upstairs without being used, and I really wanted a project to see if I could do something interesting with it. I've seen a few videos on YouTube where people have been putting Linux distributions on to old Macs. It seems to breathe a fresh breath of life into them. I first decided to go with Ubuntu, but a friend told me that Linux Mint is a better option than Ubuntu. I had already put Ubuntu onto the Mac, and it looked okay, but I hadn't really done much with it. I just downloaded Linux Mint Ldme with the Cinnamon desktop on it, which is the latest version of Linux Mint and put that on instead. Immediately after putting it on to the Mac, I decided that there were a few things that I liked better than Ubuntu within a couple of minutes. I've spent the last couple of days getting things set up on there bit by bit. I have a good system on my Macs where I can quickly change between applications I like with shortcut keys. My first priority was to get that set up right and have it working in a similar way. Obviously I need to add some applications to the Linux Mint system as well.

## The Hyper key becomes a Super key

On my Macs, I have it set up that the Hyperkey is the Caps Lock key. So Hyperkey + B will take me to the Brave browser. Hyperkey + T will take me to the terminal. I use the WezTerm terminal, and obviously I had to set that up on the Linux Mint Mac as well. Then I had to delve into the settings in Linux Mint and work out how to set up the shortcut keys.

I had a horrendous time trying to get the keyboard shortcut to open WezTerm the way I wanted it to be opened. I went to the menu in the bottom left-hand corner of Linux Mint. Found the icon for WezTerm. Right-clicked on it and got the properties. Inside the properties, it gives you the command that you need to put into the custom keyboard shortcuts. When I first did this, every time I used the keyboard shortcut it just opened up a new instance of WezTerm. I didn't want that. If there was a WezTerm already opened, I wanted it to go to that one rather than starting up a new one. Thank goodness for [Perplexity](/blog/perplexity) with a lot of back-and-forth and trying different ways of doing it. We eventually came up with a toggle which checks to see if WezTerm is open. If it is, it goes to the open instance. If not, it will open up a new instance of [WezTerm](/blog/developer-tools). I think I'm going to have to do something similar with Brave. With other applications like ProtonPass for instance, I've been able to set it up with the command I got from the menu in the bottom left-hand corner, and it's opened up into the application just the way I wanted it to do so.

## There will be some applications that I will miss

I will miss Raycast. I have tried an application called Vicinae and I'm still not sure about it, although I can run the Raycast extensions. Some of them will work, and some of them won't. But I'm also going to try an application called Flare, which is an alternative to Raycast for Linux. In the end I just put on uLauncher and that will be enough for the moment.

It doesn't really matter if there are some applications that I can't use on Linux, because obviously I still have my two Macs, my MacBook Pro and my Mac Mini. Some applications, for example Craft. There isn't a native application for it on Linux, but I can get at it through the browser. Same with Perplexity, I was able to use that through the browser to get the job done with setting up the keyboard shortcuts this morning.

I've just asked Perplexity if there is a version of Anti-Gravity for Linux, and it tells me that there is, so I'll give that a try. In any case, I'll still be able to use Gemini from the command line in WezTerm on Linux Mint. I have already installed Warp on the system, and I’ve already used that to help me set up some of the applications I needed.

## Using NeoVim on Linux Mint

Using the software manager on Linux Mint, I was able to just get the version of NeoVim 10.2. This wasn't really any good for me because I wanted to use it with Lazy Vim, and it needed a version of 11.x or higher. A couple of times I managed to get Lazy Vim working with the later version of Neo Vim, but then something or other messed it up again, and I had to start fresh again. I used Warp to help me get this sorted out, and in the end, I went with AstroVim. I would have preferred to stick with Lazy Vim, but at the same time, it's always nice to try something new and different.

## File management on Linux Mint

Of course, you have something which is like Finder to be able to move files around. Didn't really want to use that because you have to start using the mouse, and I prefer to do things with the keyboard if at all possible. For that on my Mac, I use Yazi. I've managed to set this up on Linux Mint, although it did take a little bit of doing and I had to get the help of Warp to get it working.

To get some of these configurations set up, I should have been using Dotstate. Well, I did kind of use [Dotstate](/blog/stoworchezmoi), but I did it by going into the GitHub repository I have for my dotfiles and I copied and pasted what I needed into the various config files. So I was able to get Yazi looking and working the way I have it on my Mac by doing that. I also did that for the configuration of Tmux. Though to be honest I'd rather use [Zellij](/blog/tmux_or_zellij). I've tried installing Zellij, but haven't managed to get it to work just yet. I haven't given up, though.

## What will I do with my Linux Mint Mac?

To begin with, for the moment, it is just a toy for me to play with because I have my Mac Mini and my MacBook Pro to use. My office can be a little bit cold at this time of the year, so for the most part, I tend to use the MacBook Pro while sitting on the sofa and making use of a nice blanket to keep warm. The Linux Mint Mac is upstairs, and it's even colder up there. I don't have any room for it in the office at the moment. All of the surfaces are full of computers already. I suppose I could get a bigger desk. Just joking!

It's still early days with Linux Mint, but I'm liking what I see so far. I can see that I could do some useful work with the computer at a later stage. There's no reason why I can't do some of the AI coding on there. Just get stuck in there with Anti-Gravity, Warp, or using Gemini in the command line. I do think that it has breathed new life into the old Mac. It feels a bit zippier than it used to. Happy days!
