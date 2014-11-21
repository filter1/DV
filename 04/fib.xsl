<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

  <xsl:output method="text"/>

  <xsl:template match="/input">
      <xsl:for-each select="args">
     		<xsl:call-template name="fastFib">
        		<xsl:with-param name="x" select="x"/>
      		</xsl:call-template>
     	<xsl:text>&#x0a;</xsl:text>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="Fib">
  	<xsl:param name="x"/>

 	<xsl:choose>
 		<xsl:when test="$x = 0">
 			<xsl:value-of select="0"/>
 		</xsl:when>
 		<xsl:when test="$x = 1">
 			<xsl:value-of select="1"/>
 		</xsl:when>
 		<xsl:otherwise>
 			<xsl:call-template name="Fib">
 				<xsl:with-param name="x" select="$x - 1"/>
 			</xsl:call-template>
 			<xsl:call-template name="Fib">
 				<xsl:with-param name="x" select="$x - 2"/>
 			</xsl:call-template>
 		</xsl:otherwise>
 	</xsl:choose>
  </xsl:template>

  <xsl:template name="fastFib">
  	<xsl:param name="x"/>
  	<xsl:call-template name="MyFastFib">
  		<xsl:with-param name="x" select="0"/>
  		<xsl:with-param name="y" select="1"/>
  		<xsl:with-param name="z" select="$x"/>
  	</xsl:call-template>
  </xsl:template>

  <xsl:template name="MyFastFib">
  	<xsl:param name="x" />
  	<xsl:param name="y" />
  	<xsl:param name="z" />

  	<xsl:choose>
  		<xsl:when test="$z = 0">
  			<xsl:value-of select="$x" />
  		</xsl:when>
  		<xsl:otherwise>
  			<xsl:call-template name="MyFastFib">
  				<xsl:with-param name="x" select="$y"/>
  				<xsl:with-param name="y" select="$x + $y"/>
  				<xsl:with-param name="z" select="$z - 1"/>
  			</xsl:call-template>
  		</xsl:otherwise>
  	</xsl:choose>


  </xsl:template>

</xsl:stylesheet>