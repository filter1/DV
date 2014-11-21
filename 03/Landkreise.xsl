<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 
  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body>
        <h1>Landkreise in Sachsen-Anhalt</h1>
        <br/>

        <xsl:for-each select="land/kreis">
          <xsl:value-of select="name" />
          <ul>
            <li>
              <xsl:value-of select="@kfz" />
            </li>
          </ul>
          <br/>
        </xsl:for-each>

        <xsl:for-each select="land/stadt">
          <xsl:value-of select="name" />
          <ul>
            <li>
              Kreisstadt (<xsl:value-of select="@breite" />, <xsl:value-of select="@laenge" />)
            </li>
          </ul>
          <br/>

        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>