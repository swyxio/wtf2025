# AGENTS.md

## Cursor Cloud specific instructions

This is a simple Astro single-page site ("WTF Happened in 2025?") deployed to Cloudflare Workers. No databases, APIs, Docker, or external services are needed for local development.

### Running the dev server

```
pnpm run dev --host 0.0.0.0
```

Site is served at `http://localhost:4321/`. See `README.md` for the full list of `pnpm` scripts.

### Key caveats

- **No test framework is configured.** There are no unit or integration tests. Validation is manual (load the page, scroll through chart cards).
- **No linter is configured.** There is no ESLint/Prettier setup in this project. You can run `pnpm astro check` for Astro-specific type checking.
- The Cloudflare adapter emits a warning about `sharp` not being supported at runtime — this is expected and harmless for local dev.
- `pnpm run preview` builds and runs `wrangler dev` (Cloudflare local emulator); it requires no Cloudflare auth for local preview but is slower than `pnpm run dev`.
- All content is static images in `public/images/` and hardcoded chart data in the frontmatter of `src/pages/index.astro`.
