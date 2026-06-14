# GEMINI.md - Project Context

## Project Overview
**Spondicious.com** is a personal blog and portfolio site built using the **Astro** web framework. It serves as a platform for sharing thoughts on software development, tools, and personal projects.

### Main Technologies
- **Framework:** [Astro](https://astro.build/) (v6.x)
- **Styling:** [Tailwind CSS](https://tailwindcss.com/) with the `@tailwindcss/typography` plugin.
- **Content:** [MDX](https://mdxjs.com/) and Markdown for blog posts and static pages.
- **Integrations:**
    - `@astrojs/mdx`: Support for MDX components in blog posts.
    - `@astrojs/sitemap`: Automatic sitemap generation.
    - `@astrojs/tailwind`: Tailwind CSS integration.
    - `@astrojs/rss`: RSS feed generation for the blog.

## Project Structure
- `src/pages/`: Contains the routes of the website. `index.md` and `about.md` are managed as Markdown files using `PageLayout.astro`.
- `src/content/blog/`: Markdown and MDX files for blog posts.
- `src/components/`: Reusable Astro components (Header, Footer, BaseHead, etc.).
- `src/layouts/`: Base layouts for pages, including `BlogPost.astro` and `PageLayout.astro`.
- `src/styles/`: Global CSS styles.
- `public/`: Static assets like images and fonts.

## Building and Running
The following commands are defined in `package.json`:

| Command | Action |
| :--- | :--- |
| `npm run dev` | Starts the local development server at `localhost:4321`. |
| `npm run build` | Builds the production site into the `dist/` directory. |
| `npm run preview` | Previews the production build locally. |
| `npm run astro` | Runs the Astro CLI for tasks like `check` or adding integrations. |

## Development Conventions
### Static Pages
`index.md` and `about.md` use `src/layouts/PageLayout.astro`, allowing them to be edited directly in Markdown.

### Content Collections
The blog uses Astro's **Content Collections**. All blog posts must be located in `src/content/blog/`.

**Blog Post Schema (`src/content.config.ts`):**
```typescript
{
  title: string;
  description: string;
  pubDate: Date;
  updatedDate?: Date;
  heroImage?: string;
}
```

### Styling
- **Tailwind CSS:** Preferred for most styling. Global styles are managed in `src/styles/global.css`.
- **Typography:** The `@tailwindcss/typography` plugin is used for rendering Markdown content (via the `prose` class).

### Linting
- **Markdown Linting:** Configured via `.markdownlint.json`. Note that `MD013` (line length) is disabled.

### Source Control
- The project appears to use both **Git** and **Jujutsu (`jj`)** for version control.
