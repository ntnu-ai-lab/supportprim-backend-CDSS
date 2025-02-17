<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
        
    <xsl:template match="/">
    
        <patientDetails>
        
            <xsl:for-each select="//form">
            
            <!-- Code for condition : 2  START ....................... -->
            
            <xsl:for-each select="groups/group">
                
                <xsl:if test="../../@taskid = '249961490'">
                    <xsl:if test="../../@Name = 'Keele STarT MSK skjema© Selvrapporteringsversjon'">
                        <xsl:if test="@name='Keele STarT MSK skjema© '">
                        <xsl:for-each select="question/answer">
                            <xsl:if test="@name='1) Hvor intense var smertene i gjennomsnitt (der 0 er &quot;ingen smerte&quot; og 10 er &quot;så vondt som det går an å ha&quot;)?'">
                            <mskt_risk_1>
                                <xsl:choose>
                                    <xsl:when test="answer/@selected='true'">
                                        <xsl:value-of select="answer[@selected='true']"/>
                                    </xsl:when>
                                    <xsl:when test="answer[not(@selected)]">
                                        <xsl:value-of select="answer"/>
                                    </xsl:when>
                                    <xsl:otherwise>_unknown_</xsl:otherwise>
                                </xsl:choose>
                            </mskt_risk_1>
                            </xsl:if>
                        </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                </xsl:if>
                
            </xsl:for-each>
            
            <!-- Code for condition : 1  ......................... END -->


            </xsl:for-each>
        </patientDetails>
    </xsl:template>
</xsl:stylesheet>

