<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">
            
                <!-- Start: Reading the Painsites Start:  .............. -->
                
                    <xsl:if test="@taskid = '249961490'">
                        <xsl:if test="@Name='Smertetegning siste uke (med regional angivelse)'">
                            <xsl:for-each select="scores/score">
                                    <xsl:choose>
                                        <xsl:when test=". = 'Antall affiserte regioner:'">
                                            <painsite_number_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_number_1>
                                        </xsl:when>
                                    </xsl:choose>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                
                <!-- Code for Painsites  ......................... END -->
                
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>