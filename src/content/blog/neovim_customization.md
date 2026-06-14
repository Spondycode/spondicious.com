---
description: "Enhancing Neovim with plugins for outlines and markdown formatting"
pubDate: "Feb 16 2025"
heroImage: /Neovim_headlines.png
title: "Customising Neovim: Adding Outline and Markdown Plugins"
---

## Introduction

Neovim's extensibility through plugins makes it a powerful editor that you can customize to fit your workflow perfectly. In this post, I'll show you how to enhance your [Neovim](/blog/neovim_copilot) setup with two useful plugins: one for creating document outlines and another for improving markdown headline visualization.

## Adding an Outline Plugin

For document outlines, we'll use the `outline.nvim` plugin, which provides a clean and efficient way to navigate through code and document structures. This plugin creates a sidebar that shows an overview of your document's structure, making it easier to navigate through sections and headings. You only have to hit `<leader>o` to toggle the outline view. The you get a nice tree view of your document, making it easier to navigate through sections and headings. It works a treat.

![Outline View](/neovim_outline.png)

### Installation

I used the lazyvim plugin manager, add this to your a outlines.lua file:

```lua
return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {
    outfold_depth = false,
    -- outfold_depth = 1
  },
}
```

It worked out of the box and no other configurations were needed.

## Enhancing Markdown Headlines

For better markdown visualization, we'll use `headlines.nvim`, which adds highlighting and underlining to your markdown headers. Ia m a visual sort of person and I like to see my markdown documents look a bit more professional and colourful. I did make some adjustments to the colours to suit me.

### Installation

Installation can be done with lazy.nvim which is my preference, but you could use Packer if that's your preference:

```lua
{
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
}
```

### Configuration

Here's a configuration that provides a clean, modern look:

```lua
-- https://github.com/lukas-reineke/headlines.nvim
-- This already comes installed with lazyvim but I modify the heading colors and
-- also the lines above and below
-- It also adds these { "◉", "○", "✸", "✿" } symbols in headings

return {
  "lukas-reineke/headlines.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    -- Define custom highlight groups using Vimscript
    vim.cmd([[highlight Headline1 guibg=#1e0b7d guifg=white]])
    vim.cmd([[highlight Headline2 guibg=#0038a8 guifg=white]])
    vim.cmd([[highlight Headline3 guibg=#007fff guifg=white]])
    vim.cmd([[highlight Headline4 guibg=#0892e0 guifg=white]])
    vim.cmd([[highlight Headline5 guibg=#9d00ff guifg=white]])
    vim.cmd([[highlight Headline6 guibg=#f900ff guifg=white]])
    -- Defines the codeblock background color to something darker
    vim.cmd([[highlight CodeBlock guibg=#09090d]])
    -- When you add a line of dashes with --- this specifies the color, I'm not
    -- adding a "guibg" but you can do so if you want to add a background color
    vim.cmd([[highlight Dash guifg=white]])

    -- Setup headlines.nvim with the newly defined highlight groups
    require("headlines").setup({
      markdown = {
        -- If set to false, headlines will be a single line and there will be no
        -- "fat_headline_upper_string" and no "fat_headline_lower_string"
        fat_headlines = true,
        --
        -- Lines added above and below the header line makes it look thicker
        -- "lower half block" unicode symbol hex:2584
        -- "upper half block" unicode symbol hex:2580
        fat_headline_upper_string = "▄",
        fat_headline_lower_string = "▀",
        --
        -- You could add a full block if you really like it thick ;)
        -- fat_headline_upper_string = "█",
        -- fat_headline_lower_string = "█",
        --
        -- Other set of lower and upper symbols to try
        -- fat_headline_upper_string = "▃",
        -- fat_headline_lower_string = "-",
        --
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
          "Headline4",
          "Headline5",
          "Headline6",
        },
      },
    })
  end,
}

```

## Putting It All Together

With both plugins installed and configured, you'll have a much improved markdown editing experience in Neovim. The outline plugin provides easy navigation through your document structure, while the headlines plugin makes your markdown files more visually appealing and easier to read.

To make the most of these plugins:

1. Use `<leader>o` to toggle the outline view
2. Headers in your markdown files will automatically get enhanced visualization
3. The outline will update in real-time as you edit your document

## Conclusion

These plugins significantly improve the markdown editing experience in Neovim. The outline feature makes navigation a breeze, while the enhanced header visualization makes your documents more readable during editing. Remember that Neovim's plugin ecosystem is vast, and these are just two examples of how you can customize your editor to better suit your needs.
