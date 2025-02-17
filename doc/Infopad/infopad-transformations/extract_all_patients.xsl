<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    
    <xsl:template match="/">
        <patient>
            
            <xsl:for-each select="//form">
                
                    <xsl:choose>
                        <xsl:when test="@Name='Bakgrunnsdata - supportPRIM'">
                            <xsl:copy-of select="patient"/>
                        </xsl:when>
                    </xsl:choose>
                
            </xsl:for-each>
        </patient>
    </xsl:template>
    
</xsl:stylesheet>
