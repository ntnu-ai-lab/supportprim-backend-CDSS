<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>
            
            <projectId><xsl:value-of select="forms/@projectnumber"/></projectId>
            <taskId>249961490</taskId>
            <taskName>SupportPRIM - Baseline Pasient</taskName>
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
                <!-- Code for condition : 1  START ....................... -->
                
                <xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
                    <pa_sum_1><xsl:value-of select="answer[@selected='true']"/></pa_sum_1>
                </xsl:if>
                <xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
                    <pseq_score_1><xsl:value-of select="answer[@selected='true']"/></pseq_score_1>
                </xsl:if>
                <xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
                    <pa_sum_3><xsl:value-of select="answer[@selected='true']"/></pa_sum_3>
                </xsl:if>
                <xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
                    <hscl10_score_3><xsl:value-of select="answer[@selected='true']"/></hscl10_score_3>
                </xsl:if>
                <xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
                    <pseq_score_3><xsl:value-of select="answer[@selected='true']"/></pseq_score_3>
                </xsl:if>
                
                <!-- Code for condition : 1  ......................... END -->
                
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>