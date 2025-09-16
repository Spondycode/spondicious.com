---
title: "Hammerflow Leader Key or Raycast"
description: "Keyboard hacks to get things done"
pubDate: "Sep 07 2025"
heroImage: "//leader_key1.png"
---

## Comparison of these three utilities

Which one to use? Or use a mix of a couple of them, or all of them. Keep it simple or give yourself a lot of options. There is always a balance to make between setting up your computer to give you maximum productivity with various ways. Or have you overdone it and confused the whole thing.

One way to do it is to set all the utilities and then see which one gets used and finds its way into your muscle memory.

## What can you do with Hammerflow?

- You can use [Hammerflow](https://hammerflow.dev/) to launch apps.
- Open a website with Hammerflow.
- Control app windows
- Use it to get into Raycast, like using the emoji picker.
- If you are using something else as a launcher and you have run out of letters on the keyboard, then you can use Hammerflow to get another way in. For example you have used Hyperkey-T to open the terminal you use. And you want to open another app which begins with the letter T.
- Organise your launching with nested lists of apps. Use L for Launch and then follow up with the letter to give you the app. Or T for the terminal apps followed by W for Warp or G for Ghostty. It's all about getting it to make sense in your head so you don't have to think about it too much.

**Cheatsheet for Hammerflow**
![cheatsheet for Hammerflow](/hammerflow2.jpeg)
Nice to have some clues about the letters you have set up in [Hammerflow](https://hammerflow.dev/).Some will take you directly to whatever you set up for that letter and other letters will take you to another choice. For example L will open up a panel to choose links. You can nest at least a couple of levels.

### Easy to set up

**Note** that you have to set up Hammerspoon to allow Hammerflow to work.
All the set up is in a config file and there is an example config to give you ideas of what you can do and the syntax you need to use.

```toml

#################################################
# This file is a sample of some things you 
# can do with this leader key setup. It's active
# right now! Set leader_key below and try it! The 
# lua prioritizes home.toml, then work.toml,
# then falls back to this sample.toml. If you
# want different profile names, you can add it
# to the list in ~/.hammerspoon/init.lua. 
#################################################

# settings
leader_key = "f18"        # required, the leader key that starts the sequence
leader_key_mods = ""      # optional, default "", not recommended - a dedicated leader key is better
                             # supports cmd ctrl alt shift
auto_reload = true        # optional, default true, reload when any file in this directory is saved
toast_on_reload = true    # optional, default false, show a toast when the config is reloaded
show_ui = true            # optional, default true, show the ui with your key maps
key_maps_per_line = 3     # optional, default 5, number of key maps per line in the ui


# set a key to open an app
t = "Terminal"


# or a url
g = "https://google.com"


# use an array to change the label in the popup
v = ["Visual Studio Code", "VS Code"]


# create groups to nest actions
[l]
label = "[links]" # the "label" key is reserved to change the label of the group
g = "https://github.com"
b = "https://bsky.app"
t = "https://twitter.com"


# groups can be nested too!
[l.m]
label = "[me]"
g = ["https://github.com/saml-dev", "my github"]
b = ["https://bsky.app/profile/saml.dev", "my bluesky"]
t = ["https://twitter.com/saml_dev", "my twitter"]


# raycast deep links are supported
[r]
label = "[raycast]"
c = ["raycast://extensions/raycast/raycast/confetti", "confetti"]
e = ["raycast://extensions/raycast/emoji-symbols/search-emoji-symbols", "emoji"]


# use prefixes for special actions
[p]
label = "[prefixes]"
t = "text:sam@saml.dev"       # types "sam@saml.dev"
z = "cmd:code ~/.zshrc"       # run any terminal command
x = "code: ~/.zshrc"          # open a file or directory in VS Code
s = "shortcut:cmd shift 4"    # trigger a keyboard shortcut
r = "reload"                  # reserved for reloading your hammerspoon config (helpful when auto_reload is false)
i = "input:https://google.com/search?q={input}" # capture input and insert it into any other action


# we have window management too!
[w]
label = "[window]"
h = "window:left-half"                    # use presets listed in the README
c = "window:center-half"                  # use presets listed in the README
s = ["window:.4,.3,.2,.4","small center"] # or use 4 percentages for x,y,width,height for custom placement - more details in README


# or use raycast for window management if you prefer
[w.r]
label = "[raycast-window]"
h = ["raycast://extensions/raycast/window-management/left-half", "left half"]
l = ["raycast://extensions/raycast/window-management/right-half", "right half"]
c = ["raycast://extensions/raycast/window-management/center-half", "center half"]


# this group is handy to copy over
# for quick access to your config
[h]
label = "[hammerspoon]"
c = "code: ~/.hammerspoon"
r = "reload" # reserved for reloading your hammerspoon config (helpful when auto_reload is false)


# glhf :) share your cool ideas with me on
# twitter @saml_dev - <leader> l m t
# bluesky @saml.dev - <leader> l m b
# github saml-dev   - <leader> l m g


# for advanced hammerspoon users, you can use
# the hs: prefix as an escape hatch to run any
# hammerspoon command you want.
[z]
z = "hs:hs.alert('Hello, world!')"
```

I changed the leader key to F9 because I don't have a keyboard with an F18. As you can see in the code, it is easy enough the add keys to do things. You just have to put it where you want it. Just the letter by itself to do the action straight away. Or under a letter with square brackets around it to make it nested.
There is a letter L inside brackets like this... [L] which has links underneath, such as G - Which you use Leader Key (F9) followed by L G to get the link to open
I like the way this works because you can have more letter combinations available to you. Use G to get to Github in the L group and have G on it's own to open Ghostty, or inside another group. There will be no conflicts even with the same letter being used.

---

# Leader Key

### Why [Leader Key](https://github.com/mikker/LeaderKey.app)?
### Problems with traditional launchers:
Typing the name of the thing can be slow and give unpredictable results.
Global shortcuts have limited combinations.
Leader Key offers predictable, nested shortcuts -- like combos in a fighting game.

#### Example Shortcuts:

- Launch Messages (open messages)
- Mute audio (media mute)
- Maximize current window (window maximize)


Leader key is so similar to Hammerflow. Although it does have a more GUI interface which some people will prefer. For a Muggle, the idea of opening up a config file will be a step too far. Something to leave to the nerds of the world. Much easier to open up the gui configuration of the app and click on a few buttons to add groups, add actions and set what you want to use as your leader key.

![leader key image 1](/leader_key1.png)

There is a cheatsheet with this app, it looks slightly better than the cheatsheet you get with Hammerflow. You can set the timing of when it shows on the screen. Mine comes up after 2 seconds. Seems to work well enough for me.

![leader key image 2](/leader-key2.png)


---

# Which App is Better?

I honestly like them both. The Leader Key app is prettier and is easier to set up. Apart from that there's not much difference. Both have similar functionality. You could try them both and see which works better for you. Just have a different leaderkey set up to activate them.

## What about Raycast?

Well it could be Raycast or Alfred. I use Raycast and it gives me the extensions to set up launching of apps very easily. I use Hyperkey-T to open the Ghostty terminal. I have the window management set up so it is Option-H to push a window to the left half. Option-M makes it fill the screen, Option-F to toggle Full Screen. it is as much as I need. I use the Hyperkey plus the letter to go instantly between my most used apps. Don't have to use the Raycast window to start typing in the name if the app. Great for productivity to use keyboard shortcuts like this. Less time wasted reaching for the mouse or Touchpad.

![Raycast Window management](/raycast1.jpeg)

I think I will have to leave these running for a month or two and see which sticks. Could be I remove both Leaderkey type apps and use only Raycast. Or maybe I will find one of the other two apps become part of my muscle memory. Let's see.

![Raycast Window management](/raycast2.jpeg)
