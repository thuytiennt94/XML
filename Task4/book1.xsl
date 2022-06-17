<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl ="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/book">
        <body>
            <h1 align="center">
                <xsl:value-of select="ISBN"/>
                <xsl:text>,</xsl:text>
                <xsl:value-of select="title"/>
            </h1>
            <h2 align="center">
                <xsl:text>by</xsl:text>
                <xsl:value-of select="author/firstname"/>
                <xsl:text>,</xsl:text>
                <xsl:value-of select="author/lastname"/>
            </h2>
            <table border="1">
                <tr>
                    <td align="right">
                        <xsl:text>perface</xsl:text>
                        <xsl:value-of select="chapters/perface/number"/>
                    </td>
                    <td>
                        <xsl:value-of select="chapters/perface/name"/>
                        <xsl:text> ( </xsl:text>
                        <xsl:value-of select="chapters/perface/pages"/>
                        <xsl:text> pages ) </xsl:text>
                    </td>
                </tr>
                <xsl:for-each select="chapters/chapter">
                    <xsl:sort select="number" case-order="ascending"/>
                    <tr>
                        <td align="right">
                            <xsl:text>Chapter</xsl:text>
                            <xsl:value-of select="number"/>
                        </td>
                        <td>
                            <xsl:value-of select="name"/>
                            <xsl:text> ( </xsl:text>
                            <xsl:value-of select="pages"/>
                            <xsl:text> pages ) </xsl:text>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </xsl:template>
</xsl:stylesheet>