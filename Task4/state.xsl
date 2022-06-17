<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl ="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>State Data</h2>
                <table border="2">
                    <tr bgcolor="#00FFFF">
                        <th>Name</th>
                        <th>Population</th>
                        <th>Capital</th>
                        <th>Bird</th>
                        <th>Flower</th>
                        <th>Area</th>
                    </tr>
                    <xsl:for-each select="states/state">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="population"/></td>
                            <td><xsl:value-of select="capital"/></td>
                            <td><xsl:value-of select="bird"/></td>
                            <td><xsl:value-of select="flower"/></td>
                            <td><xsl:value-of select="area"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>