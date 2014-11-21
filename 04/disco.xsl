<?xml version="1.0"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> 
        <xsl:apply-templates />
     </xsl:template> 
    
    <xsl:template match="track">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>

<!--
<?xml version="1.0"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> 
        <xsl:apply-templates />
     </xsl:template> 
    
    <xsl:template match="track">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>


<?xml version="1.0"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> 
    </xsl:template> 
</xsl:stylesheet>
-->