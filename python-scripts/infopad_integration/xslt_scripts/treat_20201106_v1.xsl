<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">
            
                <!-- Start: Reading the Treatment values and questions  .............. -->
                
                <xsl:if test="@taskid = '249966786'">
                        <xsl:if test="@Name='Tiltaksliste - supportPRIM'">
                            <xsl:for-each select="groups/group">
                                <xsl:if test="@name='1. Redusert aktivitet, hvile, avlastning'">
                                    <xsl:for-each select="question/answer">
                                        <xsl:if test="@selected = 'true'">
                                            <treat_advice_rest_3>
                                                <xsl:value-of select="."/>
                                            </treat_advice_rest_3>
                                        </xsl:if>
                                    </xsl:for-each>
                                 </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                
                <!-- Code for Treatment  ......................... END -->
                
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>