# WTF Happened in 2025?

Live at **[https://wtfhappened2025.com/](https://wtfhappened2025.com/)**

A curated collection of charts, screenshots, and visualizations documenting the wild developments in AI and tech throughout 2025.

## Adding a chart

1. Add your image to `public/images/`
2. Create a new `.md` file in `src/data/charts/` with this format:

```markdown
---
order: 18
url: "https://example.com/source-link"
img: "/images/your-image.png"
extraLinks:                              # optional
  - url: "https://example.com/related"
    label: "source name"
---

Short description of what the chart shows.
```

Set `order` to control display position (check existing files for the current max).

## Commands

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `pnpm install`             | Installs dependencies                            |
| `pnpm run dev`             | Starts local dev server at `localhost:4321`      |
| `pnpm run build`           | Build your production site to `./dist/`          |
| `pnpm run preview`         | Preview your build locally, before deploying     |
| `pnpm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `pnpm run astro -- --help` | Get help using the Astro CLI                     |
