<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

  <!--
    XLST-Prozessor: xlstproc
    Rechner: MacBook Pro (Retina, 13-inch, Mid 2014)
    Zeit: 170ms
  -->

  <xsl:output method="text"/>

  <xsl:template match="/input">
    <xsl:for-each select="args">
      <xsl:call-template name="A">
        <xsl:with-param name="x" select="x"/>
        <xsl:with-param name="y" select="y"/>
      </xsl:call-template>
      <xsl:text>&#x0a;</xsl:text>
    </xsl:for-each>
  </xsl:template>

<xsl:template name="A">
  <xsl:param name="x"/>
  <xsl:param name="y"/>

  <xsl:choose>
    <xsl:when test="$x = 0">
      <xsl:value-of select="$y+1"/>
    </xsl:when>

    <xsl:when test="$y = 0">
      <xsl:call-template name="A">
        <xsl:with-param name="x" select="$x - 1"/>
        <xsl:with-param name="y" select="1"/>
      </xsl:call-template>
    </xsl:when>

    <xsl:otherwise>

      <xsl:variable name="fnord">
        <xsl:call-template name="A">
          <xsl:with-param name="x" select="$x"/>
          <xsl:with-param name="y" select="$y - 1"/>
        </xsl:call-template>   
      </xsl:variable>

      <xsl:call-template name="A">
        <xsl:with-param name="x" select="$x - 1"/>
        <xsl:with-param name="y" select="$fnord"/>
      </xsl:call-template>

    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>