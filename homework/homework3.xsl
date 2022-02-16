<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="CATALOG">
        <html>
            <head>
                <title>Catalog</title>
                <link rel="stylesheet" type="text/css" href="https://mobullock.github.io/css/main.css"/>
                    
            </head>
            <body>
                <h1>Catalog of Plants</h1>
                <table>
                    <tr>
                        <th>common name</th>
                        <th>botantical</th>
                        <th>zone</th>
                        <th>light</th>
                        <th>price</th>
                        <th>availability</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="PLANT">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    
    <xsl:template match="COMMON">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="BOTANICAL">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="ZONE">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="LIGHT">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="PRICE">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="AVAILABILITY">
        <td><xsl:apply-templates/></td>
    </xsl:template>
</xsl:stylesheet>