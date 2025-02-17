<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    
    <xsl:template match="/">
<!--        <patient>-->
        <xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="./forms/form">
                <xsl:value-of select="@id"/>
                <xsl:text>&#xA;</xsl:text>
                    <!--<xsl:choose>
                        <xsl:when test="@Name='Bakgrunnsdata - supportPRIM'">
                            <xsl:copy-of select="patient"/>
                        </xsl:when>
                    </xsl:choose>-->
                
            </xsl:for-each>
        <!--</patient>-->
    </xsl:template>
    
</xsl:stylesheet>
