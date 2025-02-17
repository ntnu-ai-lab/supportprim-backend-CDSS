<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patientDetails>

            <xsl:for-each select="//form">
            
            <!-- Code for Treatment  START ....................... -->
            
                    <xsl:if test="@taskid = '249966786'">
                        <xsl:if test="@Name='Beskrivelse av tiltak terapeut - supportPRIM'">
                            <xsl:for-each select="groups/group">
                                <xsl:if test="@name='Beskriv tiltak som pasienten har fått så godt at en fysioterapikollega kan gjenta behandlingen mest mulig likt deg på sin pasient.'">
                                    <xsl:if test="question/@name='Viktig bakgrunnsinformasjon for behandlingsutfall'">
                                        <treat_describe_important_3>
                                            <xsl:value-of select="question/answer"/>
                                        </treat_describe_important_3>
                                    </xsl:if>                                
                                    <xsl:if test="question/@name='Pasienten har fått følgende behandling:'">
                                        <treat_describe_3>
                                            <xsl:value-of select="question/answer"/>
                                        </treat_describe_3>
                                    </xsl:if>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                
            <!-- Code for Treatment Describe ......................... END -->
               
            </xsl:for-each>
        </patientDetails>
    </xsl:template>
</xsl:stylesheet>