<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">

            
               
                
                <!-- Code for PSFS  START ....................... -->
                
                <xsl:if test="@taskid = '249961492'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='Pasientspesifikk funksjonsskala'">
                            <psfs1_act_1>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_1> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="@taskid = '249966392'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='nan'">
                            <psfs1_act_w1>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_w1> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="@taskid = '249966394'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='Pasientspesifikk funksjonsskala'">
                            <psfs1_act_w2>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_w2> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="@taskid = '249966420'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='Pasientspesifikk funksjonsskala'">
                            <psfs1_act_w4>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_w4> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="@taskid = '249966422'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='Pasientspesifikk funksjonsskala'">
                            <psfs1_act_w8>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_w8> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="@taskid = '249966782'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='Pasientspesifikk funksjonsskala'">
                            <psfs1_act_p_3>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_p_3> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <xsl:if test="@taskid = '249966786'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name='Pasientspesifikk funksjonsskala'">
                            <psfs1_act_3>
                                <xsl:value-of select="question/@name"/>
                            </psfs1_act_3> 
                            <xsl:for-each select="question[1]/answer">
                                <xsl:choose>
                                    <xsl:when test="@selected='true'">
                                        <psfs1_1><xsl:value-of select="."/></psfs1_1>
                                    </xsl:when>
                                </xsl:choose> 
                            </xsl:for-each>                  
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
                
                <!-- Code for PSFS  ......................... END -->
                
                
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>