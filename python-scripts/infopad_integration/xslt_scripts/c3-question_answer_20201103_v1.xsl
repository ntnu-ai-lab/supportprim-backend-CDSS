<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    
    <xsl:template match="/">
        
        <patientDetails>
            
            <projectId><xsl:value-of select="forms/@projectnumber"/></projectId>
            
            <!--<taskId>249961490</taskId>-->
            <!--<taskName>SupportPRIM - Baseline Pasient</taskName>-->
            
            <clinicName><xsl:value-of select="forms/form/patient/@medicalOffice"/></clinicName>
            <journalId><xsl:value-of select="forms/form/patient/@journalId"/></journalId>
            <birthYear><xsl:value-of select="forms/form/patient/@birthYear"/></birthYear>
            
            <!--Get the star date and time-->
            <xsl:for-each select="//form">
                <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                    <startDate>
                        <xsl:value-of select="substring-before(@start, ' ')"/>
                    </startDate>
                    <startTime>
                        <xsl:value-of select="substring-after(@start, ' ')"/>
                    </startTime>
                </xsl:if>
                
                <!--</xsl:for-each> -->
                <!-- <xsl:for-each select="//form/groups/group"> -->
                <!-- <xsl:for-each select="//form"> -->
                

                <!-- Code for condition : 3  START ....................... -->
                
                <xsl:for-each select="groups/group/question">
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Behov opphørt'">
                                    <end_cause_patient_3><xsl:value-of select="./@selected"/></end_cause_patient_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Effektstagnasjon'">
                                    <end_cause_effect_3><xsl:value-of select="./@selected"/></end_cause_effect_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Ingen effekt'">
                                    <end_cause_noeffect_3><xsl:value-of select="./@selected"/></end_cause_noeffect_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Pasienten ønsker ikke videre behandling'">
                                    <end_cause_followup_3><xsl:value-of select="./@selected"/></end_cause_followup_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Flyttet ut av kommune'">
                                    <end_cause_move_3><xsl:value-of select="./@selected"/></end_cause_move_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Forverret medsinsk tilstand'">
                                    <end_cause_medic_3><xsl:value-of select="./@selected"/></end_cause_medic_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Død'">
                                    <end_cause_death_3><xsl:value-of select="./@selected"/></end_cause_death_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="../../../@taskid = '249966786'">
                        <xsl:if test="@name = 'Årsak til avslutning:'">
                            <xsl:for-each select="answer">
                                <xsl:if test=".='Annet'">
                                    <end_cause_other_3><xsl:value-of select="./@selected"/></end_cause_other_3>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                </xsl:for-each>
                
                <!-- Code for condition : 3  ......................... END -->

            </xsl:for-each>
        </patientDetails>
    </xsl:template>
</xsl:stylesheet>

