<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">
            
                <!-- Start: Reading the Psfs values and questions  .............. -->
                
                    <xsl:if test="@taskid = '249961490'">
                        <xsl:if test="@Name='Smertetegning siste uke (med regional angivelse)'">
                            <xsl:for-each select="scores/score">
                                    <xsl:choose>
                                        <xsl:when test=". = 'Hode'">
                                            <painsite_head_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_head_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Nakke'">
                                            <painsite_neck_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_neck_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Skuldre'">
                                            <painsite_shou_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_shou_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Øvre del rygg'">
                                            <painsite_uback_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_uback_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Albuer'">
                                            <painsite_elbow_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_elbow_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Håndledd / hender'">
                                            <painsite_hand_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_hand_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Hofter / lår'">
                                            <painsite_thigh_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_thigh_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Korsrygg'">
                                            <painsite_lback_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_lback_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Ankler / føtter'">
                                            <painsite_feet_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_feet_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Knær'">
                                            <painsite_knee_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_knee_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Totalt antall ruter:'">
                                            <painsite_total_sq_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_total_sq_1>
                                        </xsl:when>
                                        <xsl:when test=". = 'Antall affiserte regioner:'">
                                            <painsite_number_1>
                                                <xsl:value-of select="@points"/>
                                            </painsite_number_1>
                                        </xsl:when>
                                    </xsl:choose>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                
                <!-- Code for PSFS  ......................... END -->
                
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>