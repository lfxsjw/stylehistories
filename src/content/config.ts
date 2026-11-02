import { defineCollection, z } from 'astro:content';

// 博客文章集合：定义每篇文章的元信息结构
// 以后自动化写文章时，就按这个结构生成
const blog = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),            // 文章标题
    description: z.string(),      // 摘要（SEO 描述，展示在列表和搜索结果）
    pubDate: z.coerce.date(),     // 发布日期
    updatedDate: z.coerce.date().optional(),
    category: z.string(),                    // 分类（每篇文章归一个大类）
    tags: z.array(z.string()).default([]),   // 标签（更细的关键词）
    heroImage: z.string().optional(),        // 封面图
    draft: z.boolean().default(false),       // 是否为草稿
  }),
});

export const collections = { blog };
