<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:strip-space elements="*"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:template match= "html">
        <grad-data>
            <xsl:apply-templates/>
        </grad-data>
    </xsl:template>
    
    <xsl:template match= "body">
        <grad-data>
            <xsl:apply-templates/>
        </grad-data>
    </xsl:template>
    
    <xsl:template match= "head"/>
    
    <xsl:template match= "div">
        <body-text>
            <xsl:apply-templates/>
        </body-text>
    </xsl:template>
    
    <xsl:template match= "p">
        <paragraph>
            <xsl:apply-templates/>
        </paragraph>
    </xsl:template>
    
    <xsl:template match= "a/span">
        <name>
            <xsl:apply-templates/>
        </name>
        <webpage>
            <xsl:value-of select="concat('https:www.cur.org', @href)"/>
        </webpage>
    </xsl:template>
    
    <xsl:template match= "a/img">
        <web-image>
            <xsl:apply-templates/>
        </web-image>
    </xsl:template>
    
    <xsl:template match= "div/img">
        <web-image>
            <xsl:apply-templates/>
        </web-image>
    </xsl:template>

</xsl:stylesheet>
