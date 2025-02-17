<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    
    <xsl:template match="/">
        <patient>                
            <xsl:for-each select="//form/groups/group">
                <xsl:if test="../../@taskid = '249961492'">
                    <amar>_aaaa_</amar>
                    <xsl:if test="@name = 'Nakkeundersøkelse'">
                        <xsl:for-each select="question">
                            <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                <xsl:for-each select="answer">
                                    <xsl:if test=".='Fleksjon'">
                                        <neck_move_rom_flex_1><xsl:value-of select="./@selected"/></neck_move_rom_flex_1>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>