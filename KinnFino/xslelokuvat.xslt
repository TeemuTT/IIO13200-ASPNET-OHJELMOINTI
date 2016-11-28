<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:template match="Events">
        <xsl:element name="Events">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="Event">
        <xsl:element name="Event">
            
            <xsl:for-each select="Title">
                <xsl:attribute name="Title">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            
            <xsl:for-each select="Images">
                <xsl:attribute name="MediumImage">
                    <xsl:value-of select="EventMediumImagePortrait"/>
                </xsl:attribute>
                <!-- Jos kuvaa ei ole, tehdään tyhjä attribuutti ettei Eval kaadu. -->
                <xsl:if test="not(EventMediumImagePortrait)">
                    <xsl:attribute name="MediumImage"></xsl:attribute>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
