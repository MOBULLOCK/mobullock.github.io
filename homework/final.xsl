<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
   <xsl:template match="TABLE">
       <html>
           <head>
               <title>Table</title>
               <link rel="stylesheet" type="text/css" href="https://mobullock.github.io/css/main.css"/>
               
           </head>
           <body>
               <h1>The Global Black Literature Archive</h1>
               <table>
                   <tr>
                       <th>cell[1]</th>
                       <th>cell[2]</th>
                       <th>cell[3]</th>
                       <th>cell[4]</th>
                       <th>cell[5]</th>
                   </tr>
                   <xsl:apply-templates/>
               </table>
           </body>
       </html>
   </xsl:template>
     
    <xsl:template match="ROW">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>    
    
    <xsl:template match="CELL[1]">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="CELL[2]">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="CELL[3]">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="CEll[4]">
        <td><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="CELL[5]">
        <td><xsl:apply-templates/></td>
    </xsl:template>
</xsl:stylesheet>