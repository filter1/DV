<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:template match="/">
    	<result>
            <xsl:call-template name="lets_have_some_fun_with_pythagorean_triples">
                <xsl:with-param name="limit" select="/pythago/limit"/>
            </xsl:call-template>
    	</result>
    </xsl:template>

    <xsl:template name="lets_have_some_fun_with_pythagorean_triples">
        <xsl:param name="limit"/>

        <xsl:call-template name="pythagorean_tripples_rek">
            <xsl:with-param name="x" select="0" />
            <xsl:with-param name="y" select="0" />
            <xsl:with-param name="z" select="0" />
            <xsl:with-param name="max" select="$limit" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="pythagorean_tripples_rek">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        <xsl:param name="z"/>
        <xsl:param name="max"/>

        <xsl:choose>
            <xsl:when test="$x*$x + $y*$y = $z*$z">
                <pTuple>
                    <x><xsl:value-of select="$x" /></x>
                    <y><xsl:value-of select="$y" /></y>
                    <z><xsl:value-of select="$z" /></z>
                </pTuple>

                <xsl:if test="$z &lt; $max">
                    <xsl:call-template name="pythagorean_tripples_rek">
                        <xsl:with-param name="x" select="$x" />
                        <xsl:with-param name="y" select="$y" />
                        <xsl:with-param name="z" select="$z + 1" />
                        <xsl:with-param name="max" select="$max" />
                    </xsl:call-template>
                </xsl:if>

            </xsl:when>

            <xsl:when test="$x*$x + $y*$y &lt; $z*$z">
                <xsl:call-template name="pythagorean_tripples_rek">
                    <xsl:with-param name="x" select="$x + 1" />
                    <xsl:with-param name="y" select="$y" />
                    <xsl:with-param name="z" select="$z" />
                    <xsl:with-param name="max" select="$max" />
                </xsl:call-template>
                <xsl:call-template name="pythagorean_tripples_rek">
                    <xsl:with-param name="x" select="$x" />
                    <xsl:with-param name="y" select="$y + 1" />
                    <xsl:with-param name="z" select="$z" />
                    <xsl:with-param name="max" select="$max" />
                </xsl:call-template>
            </xsl:when>

            <xsl:when test="$x*$x + $y*$y &gt; $z*$z">
                <xsl:if test="$z &lt; $max">
                    <xsl:call-template name="pythagorean_tripples_rek">
                        <xsl:with-param name="x" select="$x" />
                        <xsl:with-param name="y" select="$y" />
                        <xsl:with-param name="z" select="$z + 1" />
                        <xsl:with-param name="max" select="$max" />
                    </xsl:call-template>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>