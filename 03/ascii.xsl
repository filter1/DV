<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
			</head>
			<body>
				<xsl:apply-templates>
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="*">
		<xsl:call-template name="to-white">
			<xsl:with-param name="counter" select="count(ancestor::*)" />
		</xsl:call-template>
		<xsl:if test="count(ancestor::*) > 0">
			+--
		</xsl:if>
	
		<xsl:value-of select="name(.)" /><br/>
	<xsl:apply-templates />
	</xsl:template>

	<xsl:template name="to-white">
		<xsl:param name="counter" />
		<xsl:if test="$counter > 1">
			    <span style="white-space: pre; color: white;">    W</span>
			    <xsl:call-template name="to-white">
				<xsl:with-param name="counter" select="$counter - 1" />
			</xsl:call-template>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>