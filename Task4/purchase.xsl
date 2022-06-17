<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl ="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/PurchaseOrder">
        <xsl:apply-templates select="PONumber"/>
        <xsl:apply-templates select="PODate"/>
        <xsl:apply-templates select="seller"/>
        <xsl:apply-templates select="buyer"/>
        <xsl:apply-templates select="ShipTo"/>
        <xsl:apply-templates select="billto"/>
        <xsl:apply-templates select="products"/>
        <xsl:apply-templates select="instructions"/>
    </xsl:template>

    <xsl:template match="PONumber">
        <h1 align="center">david eterprises inc. carolina west , usa</h1>
        Purchase order number:
        <xsl:value-of select="."/>
        <bt/>
    </xsl:template>
    <xsl:template match="PODate">
        Purchase order date:
        <xsl:value-of select="."/>
        <bt/>
    </xsl:template>
    <xsl:template match="seller">
        Seller:
        <xsl:value-of select="."/>
        <bt/>
    </xsl:template>
    <xsl:template match="buyer">
        Buyer:
        <xsl:value-of select="."/>
        <bt/>
    </xsl:template>
    <xsl:template match="ShipTo">
        <h3>Shipping details</h3>
        Company name:
        <xsl:value-of select="name"/>
        <br/>
        Street:
        <xsl:value-of select="street"/>
        <bt/>
        cityZip:
        <xsl:value-of select="cityZip"/>
        <bt/>
        country:
        <xsl:value-of select="country"/>
        <bt/>
    </xsl:template>
    <xsl:template match="billto">
        <h3>Billing details</h3>
        Company name:
        <xsl:value-of select="name"/>
        <br/>
        Street:
        <xsl:value-of select="street"/>
        <bt/>
        cityZip:
        <xsl:value-of select="cityZip"/>
        <bt/>
        country:
        <xsl:value-of select="country"/>
        <bt/>
    </xsl:template>
    <xsl:template match="products">
        <xsl:value-of select="name"/>
        <xsl:value-of select="quantity"/>
        <xsl:value-of select="price"/>
        <bt/>
    </xsl:template>
    <xsl:template match="instructions">
        <bt/>
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>