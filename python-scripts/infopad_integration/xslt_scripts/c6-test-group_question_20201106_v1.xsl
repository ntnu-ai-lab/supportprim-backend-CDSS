<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">


                <!-- Code for condition : 6  START ....................... -->
                
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name='Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name='Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hvordan vil du beskrive arbeidet ditt (lønnet eller ulønnet)?'">
                                        <work_type_1>
                                            <xsl:choose>
                                                <xsl:when test="answer/@selected = 'true'">
                                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                                </xsl:when>
                                                <xsl:when test="answer[not(@selected)]">
                                                    <xsl:value-of select="answer"/>
                                                </xsl:when>
                                                <xsl:otherwise>_unknown_</xsl:otherwise>
                                            </xsl:choose>
                                        </work_type_1>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                
                <!-- Code for condition : 6  ......................... END -->

            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>