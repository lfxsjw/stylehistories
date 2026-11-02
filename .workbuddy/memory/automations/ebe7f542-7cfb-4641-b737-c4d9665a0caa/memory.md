# 每日博客发文自动化 · 执行记录

## 2026-11-02（首次运行）
- 发布文章：《The White T-Shirt: How Underwear Became the Most Worn Garment on Earth》
- 核心角度：白 T 恤从 1913 美国海军内衣 → 1950s 好莱坞反叛制服 → 全球最普及单品，切入点"一件被设计成隐形的衣服反而成了最显眼的衣服"。
- 配图：Marlon Brando 在《欲望号街车》(1951) 预告片截图，Wikimedia Commons 公有领域（1931-1977 无版权声明），已登记 /credits 页。
- 文件：src/content/blog/white-t-shirt.md；图片 public/images/white-t-shirt.jpg。
- 状态：已 git push 到 main（commit 09f660b），Cloudflare Pages 自动构建上线。
- 备注：正文约 1000 词。已避开既有主题（blue-jeans / little-black-dress / trench-coat）。

## 注意事项（供后续运行参考）
- 站点已写主题：blue-jeans、little-black-dress、trench-coat、white-t-shirt。下次选题需避开。
- 配图优先 Wikimedia Commons 公版历史图；电影预告片截图常见公有领域（1931-1977 无版权声明）。
- frontmatter schema 见 src/content/config.ts（title/description/pubDate/category/tags/heroImage 可选）。
- 写完 npm run build 验证，再 git push。
