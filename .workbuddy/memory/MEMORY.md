# 个人网站项目长期记忆

## 项目概况
- 英文时尚穿搭史博客「Dressed in History」，面向美国/欧美用户
- 技术栈：Astro 4 静态站，工作区 `/Users/harry/Desktop/个人网站/`
- 仓库：github.com/lfxsjw/stylehistories（main 分支，SSH 推送，密钥 ~/.ssh/id_ed25519）
- 部署：Cloudflare Pages（Git 集成自动部署），正式域名 **stylehistories.com**
- 上线日期：2026-11-02

## Harry 的多窗口分工约定（2026-11-02 定，当晚更新）
- **本窗口（小文）职责：网站维护 + 每日巡检**——整理网站页面、更新页面信息、修复 bug；每日 10:00 自动巡检网站健康与待办（automation id: 9ebe96d0-11c6-4b01-909d-5c43c2afbf38）。改完代码记得 git push（Cloudflare 自动上线）
- **每日博客发文：由本窗口（小文）负责**（2026-11-02 晚 Harry 明确改口）。每天定时写一篇英文时尚博客并发布，automation id: ebe7f542-7cfb-4641-b737-c4d9665a0caa（每日 10:00）
- **重要：每个工作区/项目是独立隔开的**，不要相互串联。本网站项目只做英文博客；Harry 其他空间（小文写中文文案的今日头条流水线等）与本项目无关，不引用、不混淆
- 巡检发现发文相关问题时只汇报提醒 Harry，不代为处理发文事务

## 内容规范（写文章必须遵守）
- 事实必须准确（年份/人物/事件），不确定的细节宁可不用
- 严禁 AI 腔：不用 "Whether you are..." 句式、三连排比、滥用 timeless/iconic 空洞大词、结尾总结升华套话
- 开头 80 词必须有钩子；正文 1000-1600 词
- 联盟变现预留：文末可自然带单品推荐位，联盟链接等有流量后再接（合规：/privacy /disclosure 已备好）

## 配图审美标准（2026-11-02 Harry 强调，必须严格遵守）
- **图文必须强相关**：标题/主题是什么，配图就必须是什么，读者一眼能对上，不能图文两张皮
- **多渠道找图**，不锁死 Wikimedia Commons：可搜 Wikimedia、Pexels、Unsplash、博物馆公版库（如大都会博物馆 MET、V&A、Rijksmuseum）、Library of Congress、电影剧照公版源等
- **选图要有审美**：优先「主体清晰、构图完整、一眼点题」的图；少用纯细节特写、橱窗模特、模糊截图来应付
- **必须视觉验证**：找到图后一定要实际看一眼图片内容，确认和主题一致再采用；找不到合适的不硬配
- 用了图要登记到 /credits 页（注明来源与授权）

## 技术备注
- 本地预览：`npm run dev` → http://localhost:4321
- 构建命令：npm run build，输出 dist/；Node 版本锁定 20（.nvmrc）
- @astrojs/sitemap 必须用 3.x（最新版不兼容 Astro 4）
- Harry 电脑开着代理：dig 会返回 198.18.x.x 假 IP，验证 DNS 用 DoH（dns.google），验证网站多 curl 几次防抖动
- Cloudflare Pages 创建入口在 "Continue to Pages" 小字链接（新版默认走 Workers，别走错）
- 遗留：页脚邮箱 hello@dressedinhistory.com 是占位符待换真实邮箱；www.stylehistories.com 未绑定
