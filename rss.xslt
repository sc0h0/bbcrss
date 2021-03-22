<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:strip-space elements="*"/>
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    
    <xsl:template match="/rss/channel">
        <xsl:for-each select="./item"><xsl:value-of select="position()" />. [<xsl:value-of select="title" />](<xsl:value-of select="link" />) - <xsl:value-of select="pubDate" /> - <xsl:value-of select="description" /><xsl:text>
</xsl:text></xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>