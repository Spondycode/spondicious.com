---
title: 'Using Avante in Neovim'
description: 'A guide to setting up and using Avante'
pubDate: '2024 12 04' 
heroImage: '/avante1.png'
---

Avante is a way to us AI in Neovim and it is set up using Claude from Antropic by default but and be changes to use ChatGPT from OpenAI
I used it to create this article and it did a rubbish job of reporting on how to use Avante.
It thinks Avant is a file explorer when it is nothing of the sort. Maybe I need to use a better prompt. I think I prefer to use the Windsurf IDE, for which you pay $10 a month.
I did get to use Avante to correct the first attempt of a document and it worked quite well.

It was necessary to pay money to Anthropic to get the API key to work and it needed some time before the payment propagated through so Avante worked for me in Neovim. I am going to publish this on my Astro Blog to test to see how it looks.

The prompt I gave it did give me the Front Matter in the right format for the Astro Blog post and the rest of the Markdown seems correct at first glance also.

That's it! Avante works out of the box with sensible defaults.

## Default Key Mappings

### Key Mappings for Avante AI

- `<leader>a` - Activate Avante prompt
- `<leader>ac` - Send code selection to Claude
- `<leader>ae` - Explain selected code
- `<leader>ar` - Request code review
- `<leader>af` - Fix/improve selected code
- `<leader>ad` - Generate documentation
- `<leader>at` - Generate tests for selection



## The following Command Mode doesn't work so that's another thing Claude and Avante got wrong 
### Command Mode
- `:Avante` - Open Avante prompt
- `:AvanteExplain` - Explain current buffer/selection
- `:AvanteReview` - Review current buffer/selection
- `:AvanteFix` - Fix issues in current buffer/selection
- `:AvanteDoc` - Generate documentation
- `:AvanteTest` - Generate tests

Note: Default leader key is `\`. These mappings can be customized in your Neovim configuration.
## Why Choose Avante?

Avante stands out for several reasons:
- Minimal configuration required
- Fast and lightweight
- Intuitive default mappings
- Clean and modern UI
- Excellent integration with Neovim's native features

The plugin follows Neovim's philosophy of being minimal yet powerful. It provides essential AI assistance features without unnecessary bloat, making it an interesting choice for both beginners and experienced Neovim users who want to leverage AI capabilities directly within their editor.
I am tempted to stick with Windsurf.


