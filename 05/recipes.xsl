<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
 	<xsl:output method="xml" indent="yes"/>
 
	<!-- Copy Stuff to Output -->
    <xsl:template match="@* | node()">
    	<xsl:copy>
        	<xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
 
    <!-- Remove Attributes And Create Elementes -->
  	<xsl:template match="@*" priority="5">
  		<xsl:element name="{name()}"><xsl:value-of select="."/></xsl:element>
  	</xsl:template>
 
 	<!-- Uppercase Titles -->
	 <xsl:template match="rcp:title" xmlns:rcp="http://www.brics.dk/ixwt/recipes">
	 	<rcp:title>
	 		<xsl:value-of select="upper-case(.)"/>
	 	</rcp:title>
	 </xsl:template>

	<!-- Overview -->
	<xsl:template match="/" xmlns:rcp="http://www.brics.dk/ixwt/recipes">
		<xsl:apply-templates/> <!-- At First: Do the Stuff Above -->

		<overview>
			<xsl:for-each-group select="/rcp:collection/rcp:recipe/rcp:ingredient" group-by="@unit">
	 			<unit><xsl:value-of select="current-grouping-key()"/></unit>
				<xsl:for-each select="current-group()">
					<rcp:name><xsl:value-of select="@name" /></rcp:name>
				</xsl:for-each>
	 		</xsl:for-each-group>
		</overview>
  	</xsl:template>
</xsl:stylesheet>