<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : ass7.xsl
    Created on : September 14, 2018, 11:47 AM
    Author     : surendra.galwa
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>ass7.xsl</title>
            </head>
            <body>
                <h2>My first XSLT assignment</h2>
                <table>
                    <tr bgcolor="#9acd332">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Stars</th>
                        <th>Facilities</th>
                        <th>Address</th>
                     <!--   <th>Distance</th>
                        <th>Available</th>   -->
                    </tr>
                    <xsl:for-each select="Paris/Hotel">
                       <tr>
                       <td style="font-weight:bold"><xsl:value-of select="ID"/></td>
                       <td style="font-weight:bold"><xsl:value-of select="Name"/></td>
                       <td><xsl:value-of select="Stars"/></td>
                       <td><xsl:value-of select="Facilities"/></td>
                       <td><xsl:value-of select="Address"/></td>
                       </tr>
                    </xsl:for-each>

                    
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
