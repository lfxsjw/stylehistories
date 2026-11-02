# Style Histories (Dressed in History)

An English fashion history blog targeting US/EU readers — the stories behind what we wear, one garment at a time.

- **Live site:** https://stylehistories.com
- **Stack:** [Astro](https://astro.build) (static site generator)
- **Hosting:** Cloudflare Pages
- **Content:** One new story published every day (automated)

## Local development

```bash
npm install
npm run dev      # http://localhost:4321
npm run build    # builds to ./dist
```

## Adding a post

Create a new Markdown file in `src/content/blog/` with frontmatter:

```yaml
---
title: "Your Story Title"
description: "One-sentence summary for listings and SEO."
pubDate: 2026-11-03
category: "Icons"        # Icons / Denim / Outerwear
tags: ["Tag1", "Tag2"]
heroImage: "/images/your-image.jpg"
---
```

Then write the article in Markdown below the frontmatter.
