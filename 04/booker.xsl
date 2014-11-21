<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
 <xsl:output method="html"/>

  <xsl:template match="/">

    <html><head></head>
      <body>
        <table>
          <tr>
            <th>Author</th>
            <th>Title</th>
            <th>Year</th>
          </tr>
          <xsl:apply-templates select="booker/award">
            <xsl:sort select="year" order="descending"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="award">
    <tr>
      <td>
        <xsl:value-of select="author" />
      </td>
      <td>
        <xsl:value-of select="title" />
      </td>
      <td>
        <xsl:value-of select="year" />
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>