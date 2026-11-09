import { chromium } from 'playwright';
const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width: 1440, height: 900 } });
await page.goto('https://stylehistories.com/blog/afghan-coat/', { waitUntil: 'networkidle' });
// 滚到按钮位置并截取按钮周围区域
const btn = page.locator('.cta-button');
await btn.scrollIntoViewIfNeeded();
await page.waitForTimeout(1500);
await btn.screenshot({ path: '.screenshots/cta-btn-closeup.png' });
// 同时截取按钮上下文（含 note）
const ctx = page.locator('.cta-button, .cta-note');
const box = await btn.boundingBox();
console.log('按钮位置:', JSON.stringify(box));
await page.screenshot({ path: '.screenshots/cta-context.png', clip: { x: Math.max(0, (box.x ?? 0) - 300), y: Math.max(0, (box.y ?? 0) - 150), width: 1040, height: 400 } });
await browser.close();
console.log('截图完成');
