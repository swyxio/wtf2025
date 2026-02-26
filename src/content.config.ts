import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const charts = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/data/charts' }),
  schema: z.object({
    order: z.number(),
    url: z.string().url(),
    img: z.string(),
    extraLinks: z.array(z.object({
      url: z.string().url(),
      label: z.string(),
    })).optional(),
  }),
});

export const collections = { charts };
