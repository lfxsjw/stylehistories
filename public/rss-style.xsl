<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8"/>
  <xsl:template match="/rss/channel">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title><xsl:value-of select="title"/> — RSS Feed</title>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
        <link href="https://fonts.googleapis.com/css2?family=Bodoni+Moda:ital,opsz,wght@0,6..96,400..700;1,6..96,400..600&amp;family=Inter:wght@400;500;600&amp;display=swap" rel="stylesheet"/>
        <style>
          * { box-sizing: border-box; margin: 0; padding: 0; }
          body {
            background: #f7f3ec; color: #17130f;
            font-family: Georgia, serif; line-height: 1.75;
            -webkit-font-smoothing: antialiased;
          }
          .wrap { max-width: 640px; margin: 0 auto; padding: 70px 24px 90px; }
          .kicker {
            font-family: 'Inter', sans-serif; font-size: 0.66rem; font-weight: 600;
            letter-spacing: 0.3em; text-transform: uppercase; color: #8e2f26;
            margin-bottom: 16px;
          }
          h1 {
            font-family: 'Bodoni Moda', Georgia, serif;
            font-size: 2.4rem; font-weight: 600; letter-spacing: 0.05em;
            text-transform: uppercase; line-height: 1.15; margin-bottom: 20px;
          }
          .note {
            font-style: italic; color: #6f6960; font-size: 1.05rem;
            margin-bottom: 28px;
          }
          .howto {
            font-family: 'Inter', sans-serif; font-size: 0.85rem; color: #6f6960;
            border-top: 2px solid #17130f; border-bottom: 1px solid #dcd3c4;
            padding: 18px 0; margin-bottom: 30px; line-height: 1.8;
          }
          .howto strong { color: #17130f; }
          .feedurl {
            font-family: 'Inter', monospace, sans-serif; font-size: 0.78rem;
            background: #eee7da; border: 1px solid #dcd3c4; border-radius: 4px;
            padding: 10px 14px; display: block; margin-bottom: 40px;
            word-break: break-all; color: #8e2f26;
          }
          .label {
            font-family: 'Inter', sans-serif; font-size: 0.66rem; font-weight: 600;
            letter-spacing: 0.28em; text-transform: uppercase; color: #6f6960;
            margin-bottom: 20px;
          }
          article { border-top: 1px solid #dcd3c4; padding: 26px 0 30px; }
          article h2 {
            font-family: 'Bodoni Moda', Georgia, serif;
            font-size: 1.4rem; font-weight: 500; line-height: 1.3; margin-bottom: 10px;
          }
          article h2 a { color: #17130f; text-decoration: none; }
          article h2 a:hover { color: #8e2f26; }
          .meta {
            font-family: 'Inter', sans-serif; font-size: 0.64rem;
            letter-spacing: 0.2em; text-transform: uppercase; color: #7d7466;
            margin-bottom: 12px;
          }
          .desc { color: #6f6960; font-size: 1rem; }
        </style>
      </head>
      <body>
        <div class="wrap">
          <p class="kicker">RSS Feed</p>
          <h1><xsl:value-of select="title"/></h1>
          <p class="note"><xsl:value-of select="description"/></p>

          <div class="howto">
            <strong>This is an RSS feed.</strong> It is how reader apps subscribe to
            this journal. Copy the address below into a reader such as Feedly,
            NetNewsWire, or Inoreader, and every new story arrives automatically —
            no algorithm, no noise.
          </div>
          <code class="feedurl"><xsl:value-of select="link"/>rss.xml</code>

          <p class="label">Latest stories in this feed</p>
          <xsl:for-each select="item">
            <article>
              <p class="meta"><xsl:value-of select="pubDate"/></p>
              <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
              <p class="desc"><xsl:value-of select="description"/></p>
            </article>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
