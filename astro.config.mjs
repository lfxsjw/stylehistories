import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// 站点配置：临时用占位域名，上线前替换为真实域名
export default defineConfig({
  site: 'https://stylehistories.com',
  output: 'static',
  devToolbar: { enabled: false },
  integrations: [sitemap()],  // 自动生成 sitemap-index.xml，帮助 Google 收录
});
