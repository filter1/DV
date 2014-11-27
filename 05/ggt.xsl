<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jf="http://jfilter.de/">
	<xsl:output method="xml" />

    <xsl:function name="jf:ggt">
        <xsl:param name="a"></xsl:param>
        <xsl:param name="b"></xsl:param>

        <xsl:choose>
        	<xsl:when test="$b = 0">
        		<xsl:value-of select="$a"/>
        	</xsl:when>
        	<xsl:otherwise>
        		<xsl:value-of select="jf:ggt($b, $a mod $b)"/>
        	</xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <xsl:template match="/">
    	<result>
    		<xsl:value-of select="jf:ggt(/ggT/input/n1, /ggT/input/n2)"/>
    	</result>
    </xsl:template>
</xsl:stylesheet>