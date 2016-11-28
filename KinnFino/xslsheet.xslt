<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:template match="TheatreAreas">
        <xsl:element name="TheatreAreas">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="TheatreArea">
        <xsl:element name="TheatreArea">
            <xsl:for-each select="*">
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
