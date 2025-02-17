<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">
            
                <!-- Start: Reading the Psfs values and questions  .............. -->
                
                    <xsl:if test="@taskid = '249961490'">
                        <xsl:if test="@Name='Smertetegning siste uke (med regional angivelse)'">
                            <body_map>
                                <back>
                                    <xsl:for-each select="groups/group/question/bodymap/square">
                                        <xsl:if test="@side =1">
                                            <b>
                                                <x><xsl:value-of select="@x"/></x>
                                                <y><xsl:value-of select="@y"/></y>
                                            </b>
                                        </xsl:if>
                                    </xsl:for-each>
                                </back>
    
                                <front>
                                    <xsl:for-each select="groups/group/question/bodymap/square">
                                        <xsl:if test="@side =0">
                                            <f>
                                                <x><xsl:value-of select="@x"/></x>
                                                <y><xsl:value-of select="@y"/></y>
                                            </f>
                                        </xsl:if>
                                    </xsl:for-each>
                                </front> 
                            </body_map>
                        </xsl:if>
                    </xsl:if>
                
                <!-- Code for PSFS  ......................... END -->
                
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>