import { chromium } from 'playwright';
const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width: 1440, height: 900 } });
await page.goto('https://stylehistories.com/blog/afghan-coat/', { waitUntil: 'networkidle' });
const result = await page.evaluate(() => {
  const btn = document.querySelector('.cta-button');
  if (!btn) return { found: false };
  const cs = getComputedStyle(btn);
  const rect = btn.getBoundingClientRect();
  return {
    found: true,
    text: btn.textContent.trim(),
    href: btn.href,
    rel: btn.getAttribute('rel'),
    backgroundColor: cs.backgroundColor,
    textColor: cs.color,
    borderTop: cs.borderTopWidth + ' ' + cs.borderTopColor,
    pageCenter: 720,
    buttonCenterX: Math.round(rect.x + rect.width / 2),
    isCentered: Math.abs(rect.x + rect.width / 2 - 720) < 30,
    fontSize: cs.fontSize,
    letterSpacing: cs.letterSpacing,
    textTransform: cs.textTransform
  };
});
console.log(JSON.stringify(result, null, 2));
await browser.close();
