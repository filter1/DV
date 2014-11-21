<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<shallow>
			<xsl:text>&#xa;</xsl:text>
			<xsl:call-template name="loop" select="//*">
				<xsl:with-param name="fnord" select="''" />
			</xsl:call-template>
		</shallow>
	</xsl:template>

	<xsl:template name="loop">
		<xsl:param name="fnord" />

		<xsl:if test="$fnord != ''">
			<xsl:element name="{substring-after($fnord,'-')}" />
			<xsl:text>&#xa;</xsl:text>
		</xsl:if>

		<xsl:for-each select="./*">
			<xsl:call-template name="loop">
				<xsl:with-param name="fnord" select="concat($fnord,'-',name(.))" />
			</xsl:call-template>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>