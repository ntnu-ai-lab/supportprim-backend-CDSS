<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    
    <xsl:template match="/">
        
        <xsl:for-each select="//form/groups/group">
            
            <xsl:for-each select="question">
                <tid>
                <xsl:if test="../../../@taskid = '249961490.0'">
                    <xsl:value-of select="../../../@taskid"/>
                </xsl:if>
                </tid>
    
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>