---
title: "TMUX - Zellij - Or Just Ghostty"
description: "Do I need to use a Terminal Multiplexer?"
pubDate: "Sep 29 2025"
heroImage: "/zellij_sessions.png"
---

## Comparison of Multiplexers and Ghostty by Itself

Which is best TMUX, Zellij or just plain Ghostty on it’s own? There are times when you need to have a couple of terminal windows running at the same time. Usually when you have a running process in one terminal and you want to run another process in another terminal. Like with running npm run dev so you can see the results of the file you are working on in another window using Neovim. Maybe you like to see what’s going on with your files in the project using [Yazi](/blog/yazi), the most likely for me is to have a way to quickly get another file open to reference some text or code. So do you need a terminal multiplexer to do this? You could just have multiple terminal windows or tabs open. Or in the case of [Neovim](/blog/neovim_customization) you could have multiple Neovim windows open. What are the benefits of using a terminal multiplexer?

![Zellij in action](/zellij_1.png)

The only benefit I can think of is that you can have sessions with either Zellij or TMUX that you can resume later. Get back into the session you worked on earlier and everything is as it was when you left it. There would be some time saved by not having to reconfigure the processes you had running in the terminal. Or maybe you like to switch between different panes or windows in the terminal multiplexer. Use keyboard shortcuts to switch between them, keymaps which you can remember easy because they are similar to the keymaps you use in Neovim. Time saved by not having to continually reach for the mouse to switch between windows or panes.

![tmux in action](/tmux1.png)

## Conclusion

I have tried both Zellij and TMUX. They are both goo,d offering similar features. The main difference is that Zellij has a staus line at the bottom of the terminal window with information about the key combinations you can use to do all the things you can do in it. Good for learning the keymaps when you’re new to it. When using TMUX with Yazi, my file manager of choice I can see images in the terminal. For some reason the images don’t show up in Zellij. So for me if I am using Yazi and I need to see the images in the folders I’ll be better off using TMUX.

Sometimes you just need to have multiple terminal windows open. You can do that with Ghostty by opening multiple terminal tabs or windows. If you want to be able to save your sessions and come back to them later then a terminal multiplexer like TMUX or Zellij is the way to go. If you want to be able to see images in the terminal then TMUX is the better choice of the multiplexers. If you want a terminal multiplexer that has a status line at the bottom with keymaps for doing things in it then Zellij is the better choice. Both are good choices, it just depends on your needs and preferences.

For me, I will use whatever suits best for the project I am working on. Most times all I will need is the favourite terminal at the time. Then If I need more I will most likely use Zellij and switch to TMUX if I really a lot of stuff running and also to see images in Yazi. I also like not needing to use a leader key in Zellig, like you need to in TMUX. Sometimes it feels like finger gymnastics to use the leader key and then the actual key you want to get the thing done.
