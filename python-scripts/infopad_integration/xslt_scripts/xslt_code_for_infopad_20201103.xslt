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
                        <startDate>                            <xsl:value-of select="substring-before(@start, ' ')"/>
                        </startDate>
                        <startTime>
                            <xsl:value-of select="substring-after(@start, ' ')"/>
                        </startTime>
                    </xsl:if>
                </xsl:for-each>

                <xsl:for-each select="//form/groups/group">
   <!-- Code for condition : 0  START ....................... -->


   <!-- Code for condition : 0  ......................... END -->


   <!-- Code for condition : 1  START ....................... -->

<xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
    <pa_sum_1><xsl:value-of select="answer[@selected='true']"/></pa_sum_1>
</xsl:if>
<xsl:if test="answer[@selected='true'] and answer='infopad_var_not_defined'">
    <pseq_score_1><xsl:value-of select="answer[@selected='true']"/></pseq_score_1>
</xsl:if>

   <!-- Code for condition : 1  ......................... END -->


   <!-- Code for condition : 2  START ....................... -->

    <xsl:for-each select="question">
    </xsl:for-each>

   <!-- Code for condition : 2  ......................... END -->


   <!-- Code for condition : 3  START ....................... -->

    <xsl:for-each select="question">
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = 'Klinikk'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <physio_id><xsl:value-of select="./@selected"/></physio_id>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = 'Pasient nr'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <journal_id><xsl:value-of select="./@selected"/></journal_id>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = 'Fødselsår'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <birth_year><xsl:value-of select="./@selected"/></birth_year>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = 'Örebro screening skjema - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <oreb_score_1><xsl:value-of select="./@selected"/></oreb_score_1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = 'Gjennomsnitt:'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl_score_1><xsl:value-of select="./@selected"/></hscl_score_1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = 'Keele STarT MSK skjema© Selvrapporteringsversjon'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskt_risk_1><xsl:value-of select="./@selected"/></mskt_risk_1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name = '1) Hvor intense var smertene i gjennomsnitt (der 0 er ingen smerte&quot; og 10 er &quot;så vondt som det går an å ha&quot;)?&quot;'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskt_q1_1><xsl:value-of select="./@selected"/></mskt_q1_1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_w1><xsl:value-of select="./@selected"/></psfs1_act_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_w1><xsl:value-of select="./@selected"/></psfs1_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_w1><xsl:value-of select="./@selected"/></psfs2_act_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_w1><xsl:value-of select="./@selected"/></psfs2_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_w1><xsl:value-of select="./@selected"/></psfs3_act_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_w1><xsl:value-of select="./@selected"/></psfs3_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <work_ability_w1><xsl:value-of select="./@selected"/></work_ability_w1>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_w2><xsl:value-of select="./@selected"/></psfs1_act_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_w2><xsl:value-of select="./@selected"/></psfs1_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_w2><xsl:value-of select="./@selected"/></psfs2_act_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_w2><xsl:value-of select="./@selected"/></psfs2_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_w2><xsl:value-of select="./@selected"/></psfs3_act_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_w2><xsl:value-of select="./@selected"/></psfs3_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <work_ability_w2><xsl:value-of select="./@selected"/></work_ability_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'Hvor mye smerter har du hatt den SISTE UKEN?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <oreb_q2_w2><xsl:value-of select="./@selected"/></oreb_q2_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_score_w2><xsl:value-of select="./@selected"/></pseq_score_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_q1_w2><xsl:value-of select="./@selected"/></pseq_q1_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_q2_w2><xsl:value-of select="./@selected"/></pseq_q2_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name = 'Siden behandling startet er jeg :'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <gpe_w2><xsl:value-of select="./@selected"/></gpe_w2>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_w3><xsl:value-of select="./@selected"/></psfs1_act_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_w3><xsl:value-of select="./@selected"/></psfs1_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_w3><xsl:value-of select="./@selected"/></psfs2_act_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_w3><xsl:value-of select="./@selected"/></psfs2_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_w3><xsl:value-of select="./@selected"/></psfs3_act_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_w3><xsl:value-of select="./@selected"/></psfs3_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966418'">
        <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <work_ability_w3><xsl:value-of select="./@selected"/></work_ability_w3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_w4><xsl:value-of select="./@selected"/></psfs1_act_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_w4><xsl:value-of select="./@selected"/></psfs1_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_w4><xsl:value-of select="./@selected"/></psfs2_act_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_w4><xsl:value-of select="./@selected"/></psfs2_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_w4><xsl:value-of select="./@selected"/></psfs3_act_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_w4><xsl:value-of select="./@selected"/></psfs3_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <work_ability_w4><xsl:value-of select="./@selected"/></work_ability_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966420'">
        <xsl:if test="@name = 'Siden behandling startet er jeg :'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <gpe_w4><xsl:value-of select="./@selected"/></gpe_w4>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_w8><xsl:value-of select="./@selected"/></psfs1_act_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_w8><xsl:value-of select="./@selected"/></psfs1_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_w8><xsl:value-of select="./@selected"/></psfs2_act_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_w8><xsl:value-of select="./@selected"/></psfs2_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_w8><xsl:value-of select="./@selected"/></psfs3_act_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_w8><xsl:value-of select="./@selected"/></psfs3_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <work_ability_w8><xsl:value-of select="./@selected"/></work_ability_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'Hvor mye smerter har du hatt den SISTE UKEN?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <oreb_q2_w8><xsl:value-of select="./@selected"/></oreb_q2_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_score_w8><xsl:value-of select="./@selected"/></pseq_score_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_q1_w8><xsl:value-of select="./@selected"/></pseq_q1_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_q2_w8><xsl:value-of select="./@selected"/></pseq_q2_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name = 'Siden behandling startet er jeg :'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <gpe_w8><xsl:value-of select="./@selected"/></gpe_w8>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_p_3><xsl:value-of select="./@selected"/></psfs1_act_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_p_3><xsl:value-of select="./@selected"/></psfs1_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_p_3><xsl:value-of select="./@selected"/></psfs2_act_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_p_3><xsl:value-of select="./@selected"/></psfs2_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_p_3><xsl:value-of select="./@selected"/></psfs3_act_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_p_3><xsl:value-of select="./@selected"/></psfs3_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Gange'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eq5d_walk_3><xsl:value-of select="./@selected"/></eq5d_walk_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Personlig stell'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eq5d_care_3><xsl:value-of select="./@selected"/></eq5d_care_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Vanlige gjøremål '">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eq5d_adl_3><xsl:value-of select="./@selected"/></eq5d_adl_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Smerter/ ubehag'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eq5d_pain_3><xsl:value-of select="./@selected"/></eq5d_pain_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angst/ depresjon'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eq5d_depr_3><xsl:value-of select="./@selected"/></eq5d_depr_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Søvn'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <qol15D_q5_sleep_3><xsl:value-of select="./@selected"/></qol15D_q5_sleep_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Livskraft'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <qol15D_q14_vital_3><xsl:value-of select="./@selected"/></qol15D_q14_vital_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hvor mye smerter har du hatt den SISTE UKEN?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <oreb_q2_3><xsl:value-of select="./@selected"/></oreb_q2_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hode'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_head_3><xsl:value-of select="./@selected"/></painsite_head_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Nakke'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_neck_3><xsl:value-of select="./@selected"/></painsite_neck_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Skuldre'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_shou_3><xsl:value-of select="./@selected"/></painsite_shou_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Øvre del rygg'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_uback_3><xsl:value-of select="./@selected"/></painsite_uback_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Albuer'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_elbow_3><xsl:value-of select="./@selected"/></painsite_elbow_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Håndledd / hender'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_hand_3><xsl:value-of select="./@selected"/></painsite_hand_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hofter / lår'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_thigh_3><xsl:value-of select="./@selected"/></painsite_thigh_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Korsrygg'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_lback_3><xsl:value-of select="./@selected"/></painsite_lback_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Ankler / føtter'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_feet_3><xsl:value-of select="./@selected"/></painsite_feet_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Knær'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_knee_3><xsl:value-of select="./@selected"/></painsite_knee_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Antall affiserte regioner:'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <painsite_3><xsl:value-of select="./@selected"/></painsite_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Er smerten kontinuerlig'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pain_continuous_3><xsl:value-of select="./@selected"/></pain_continuous_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Er smerten av varierende intensitet?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pain_vary_3><xsl:value-of select="./@selected"/></pain_vary_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hvordan vil du beskrive smertevariasjonen best?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pain_variation_3><xsl:value-of select="./@selected"/></pain_variation_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hvor ofte har du vanligvis disse smertene?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pain_freq_3><xsl:value-of select="./@selected"/></pain_freq_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Paracetamol Paracet Panodil Pimol Pinex eller Perfalgan'">
                     <medic_paracet_3><xsl:value-of select="./@selected"/></medic_paracet_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Albyl-E (500 mg) Aspirin Globoid eller Dispril'">
                     <medic_albyle_3><xsl:value-of select="./@selected"/></medic_albyle_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Ibuprofen Ibux Ibuprox Ibumetin Brufen Naproxen Naprosyn eller Ladox'">
                     <medic_ibux_3><xsl:value-of select="./@selected"/></medic_ibux_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Andre'">
                     <medic_other_3><xsl:value-of select="./@selected"/></medic_other_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Hvilke andre medisiner?'">
                     <medic_other_spec_3><xsl:value-of select="./@selected"/></medic_other_spec_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Antall medisiner du bruker daglig:'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <medic_number_3><xsl:value-of select="./@selected"/></medic_number_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='I lønnet arbeid'">
                     <employ_paid_3><xsl:value-of select="./@selected"/></employ_paid_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Skoleelev / Student'">
                     <employ_stud_3><xsl:value-of select="./@selected"/></employ_stud_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Pensjonist'">
                     <employ_retired_3><xsl:value-of select="./@selected"/></employ_retired_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Uføretrygdet'">
                     <employ_disability_3><xsl:value-of select="./@selected"/></employ_disability_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Sykmeldt'">
                     <employ_sick_3><xsl:value-of select="./@selected"/></employ_sick_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Arbeidsavklaring'">
                     <employ_assess_3><xsl:value-of select="./@selected"/></employ_assess_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Ulønnet arbeid (eks. hjemme/frivillighetsarbeid)'">
                     <employ_unpaid_3><xsl:value-of select="./@selected"/></employ_unpaid_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Arbeidsledig'">
                     <employ_unempl_3><xsl:value-of select="./@selected"/></employ_unempl_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Angi stillingsprosent'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Foreldrepermisjon'">
                     <employ_parentleave_3><xsl:value-of select="./@selected"/></employ_parentleave_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Angi stillingsprosent'">
                     <employ_situation_paidp_3><xsl:value-of select="./@selected"/></employ_situation_paidp_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Angi uføregrad i prosent'">
                     <employ_situation_disabilityp_3><xsl:value-of select="./@selected"/></employ_situation_disabilityp_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
            <xsl:for-each select="answer">
                <xsl:if test=".='Angi sykmeldingsgrad i prosent'">
                     <employ_situation_sickp_3><xsl:value-of select="./@selected"/></employ_situation_sickp_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <work_ability_3><xsl:value-of select="./@selected"/></work_ability_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Mosjon og Trening Fysioprim'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pa_sum_3><xsl:value-of select="./@selected"/></pa_sum_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hvor ofte driver du mosjon eller trening?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pa_freq_3><xsl:value-of select="./@selected"/></pa_freq_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hvor hardt mosjonerer / trener du?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pa_int_3><xsl:value-of select="./@selected"/></pa_int_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hvor lenge holder du på hver gang?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pa_dur_3><xsl:value-of select="./@selected"/></pa_dur_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Gjennomsnitt:'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_score_3><xsl:value-of select="./@selected"/></hscl10_score_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '1. Plutselig skremt uten grunn'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q1_3><xsl:value-of select="./@selected"/></hscl10_q1_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '2. Føler du deg svimmel eller kraftesløs'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q2_3><xsl:value-of select="./@selected"/></hscl10_q2_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '3. Føler deg anspent eller opphisset'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q3_3><xsl:value-of select="./@selected"/></hscl10_q3_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '4. Anfall av redsel eller panikk'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q4_3><xsl:value-of select="./@selected"/></hscl10_q4_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '5. Anklager deg selv for ting'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q5_3><xsl:value-of select="./@selected"/></hscl10_q5_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '6. Vanskelig for å sove'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q6_3><xsl:value-of select="./@selected"/></hscl10_q6_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '7. Følelse av håpløshet mhp. framtiden'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q7_3><xsl:value-of select="./@selected"/></hscl10_q7_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '8. Føler deg nedfor'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q8_3><xsl:value-of select="./@selected"/></hscl10_q8_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '9. Føler at alt krever stor anstrengelse'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q9_3><xsl:value-of select="./@selected"/></hscl10_q9_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '10. Føler at du ikke er noe verd'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <hscl10_q10_3><xsl:value-of select="./@selected"/></hscl10_q10_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Siden behandling startet er jeg :'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <gpe_3><xsl:value-of select="./@selected"/></gpe_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'I hvilken grad har du hatt nytte av fysioterapibehandling?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <treat_benefit_3><xsl:value-of select="./@selected"/></treat_benefit_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'I hvilken grad ble dine forventninger til fysioterapi innfridd?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <treat_expect_3><xsl:value-of select="./@selected"/></treat_expect_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Jeg ble hørt og forstått av min fysioterapeut?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <patient_physio_q1_3><xsl:value-of select="./@selected"/></patient_physio_q1_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Jeg har høy tiltro til min fysioterapeuts faglige kvalifikasjoner'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <patient_physio_q2_3><xsl:value-of select="./@selected"/></patient_physio_q2_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Samlet sett er jeg svært godt fornøyd med oppfølgingen jeg fikk av min terapeut'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <patient_physio_q3_3><xsl:value-of select="./@selected"/></patient_physio_q3_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Har du gjennomført øvelsene som anbefalt av fysioterapeuten?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <compliance_3><xsl:value-of select="./@selected"/></compliance_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_score_3><xsl:value-of select="./@selected"/></mskhq_score_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '1. Smerte/stivhet i løpet av dagen'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q1_3><xsl:value-of select="./@selected"/></mskhq_q1_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '2. Smerter/stivhet om natten.'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q2_3><xsl:value-of select="./@selected"/></mskhq_q2_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '3. Gange'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q3_3><xsl:value-of select="./@selected"/></mskhq_q3_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '4. Vaske seg/påkledning'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q4_3><xsl:value-of select="./@selected"/></mskhq_q4_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '5. Fysisk aktivitetsnivå'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q5_3><xsl:value-of select="./@selected"/></mskhq_q5_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '6. Arbeid/daglige aktiviteter'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q6_3><xsl:value-of select="./@selected"/></mskhq_q6_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '7. Sosiale aktiviteter og hobbyer'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q7_3><xsl:value-of select="./@selected"/></mskhq_q7_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '8. Behov for hjelp'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q8_3><xsl:value-of select="./@selected"/></mskhq_q8_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '9. Søvn'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q9_3><xsl:value-of select="./@selected"/></mskhq_q9_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '10. Utmattelse eller lite energi '">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q10_3><xsl:value-of select="./@selected"/></mskhq_q10_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '11. Følelsesmessig velvære'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q11_3><xsl:value-of select="./@selected"/></mskhq_q11_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '12. Forståelse av dine helseplager og pågående behandling'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q12_3><xsl:value-of select="./@selected"/></mskhq_q12_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '13. Tro på å mestre symptomene dine'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q13_3><xsl:value-of select="./@selected"/></mskhq_q13_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '14. Generell påvirkning'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_q14_3><xsl:value-of select="./@selected"/></mskhq_q14_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Fysisk aktivitetsnivå'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <mskhq_pa_3><xsl:value-of select="./@selected"/></mskhq_pa_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_score_3><xsl:value-of select="./@selected"/></pseq_score_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_q1_3><xsl:value-of select="./@selected"/></pseq_q1_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <pseq_q2_3><xsl:value-of select="./@selected"/></pseq_q2_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Mål '">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eval_goal_p_3><xsl:value-of select="./@selected"/></eval_goal_p_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name = 'Hva tror du har vært den viktigste faktoren for bedring/ manglende bedring for dine plager (En til to setninger)'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <treatmentfactor_patient_3><xsl:value-of select="./@selected"/></treatmentfactor_patient_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_act_3><xsl:value-of select="./@selected"/></psfs1_act_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'smallAktivitet 1/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs1_3><xsl:value-of select="./@selected"/></psfs1_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_act_3><xsl:value-of select="./@selected"/></psfs2_act_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'smallAktivitet 2/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs2_3><xsl:value-of select="./@selected"/></psfs2_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_act_3><xsl:value-of select="./@selected"/></psfs3_act_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'smallAktivitet 3/small'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <psfs3_3><xsl:value-of select="./@selected"/></psfs3_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'Mål'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <eval_goal_3><xsl:value-of select="./@selected"/></eval_goal_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'Fortsetter behandlingen?'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <treat_contin_3><xsl:value-of select="./@selected"/></treat_contin_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
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
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'Antall konsultasjoner totalt'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <ism_var_not_defined><xsl:value-of select="./@selected"/></ism_var_not_defined>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'Viktig bakgrunnsinformasjon for behandlingsutfall'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <treat_describe_important_3><xsl:value-of select="./@selected"/></treat_describe_important_3>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name = 'Pasienten har fått følgende behandling:'">
            <xsl:for-each select="answer">
                <xsl:if test=".='infopad_var_not_defined'">
                     <ism_var_not_defined><xsl:value-of select="./@selected"/></ism_var_not_defined>
                 </xsl:if>
            </xsl:for-each>
        </xsl:if>
     </xsl:if>
    </xsl:for-each>

   <!-- Code for condition : 3  ......................... END -->


   <!-- Code for condition : 4  START ....................... -->


   <!-- Code for condition : 4  ......................... END -->


   <!-- Code for condition : 6  START ....................... -->


   <!-- Code for condition : 6  ......................... END -->


   <!-- Code for condition : 7  START ....................... -->

     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvordan vil du beskrive arbeidet ditt (lønnet eller ulønnet)?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <work_type_1><xsl:value-of select="./@selected"/></work_type_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Arbeidsevne'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <work_ability_1><xsl:value-of select="./@selected"/></work_ability_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Når du tenker på barndommen/ oppveksten din, vil du beskrive den som: '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <childhood_1><xsl:value-of select="./@selected"/></childhood_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Revmatisk sykdom'">
                           <como_ra_1><xsl:value-of select="./@selected"/></como_ra_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Hjertesykdom'">
                           <como_heart_1><xsl:value-of select="./@selected"/></como_heart_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Astma/ lungesykdom'">
                           <como_asthma_1><xsl:value-of select="./@selected"/></como_asthma_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Nevrologisk sykdom (f.eks tidligere hjerneslag eller MS)'">
                           <como_neuro_1><xsl:value-of select="./@selected"/></como_neuro_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Kreft/ tidligere kreft'">
                           <como_cancer_1><xsl:value-of select="./@selected"/></como_cancer_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Psykiske plager'">
                           <como_psych_1><xsl:value-of select="./@selected"/></como_psych_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Demens/ kognitiv svikt'">
                           <como_dementhia_1><xsl:value-of select="./@selected"/></como_dementhia_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Osteoporose'">
                           <como_osteoporosis_1><xsl:value-of select="./@selected"/></como_osteoporosis_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Diabetes'">
                           <como_diabetes_1><xsl:value-of select="./@selected"/></como_diabetes_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Magesmerter'">
                           <como_stomach_pain_1><xsl:value-of select="./@selected"/></como_stomach_pain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Hodepine/svimmelhet'">
                           <como_headache_1><xsl:value-of select="./@selected"/></como_headache_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utmattelse'">
                           <como_fatigue_1><xsl:value-of select="./@selected"/></como_fatigue_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Annet'">
                           <como_other_1><xsl:value-of select="./@selected"/></como_other_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Beskriv annet:'">
                           <como_other_spec_1><xsl:value-of select="./@selected"/></como_other_spec_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor redusert er ditt daglige aktivitetsnivå på grunn av smerter eller plager?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <activity_1><xsl:value-of select="./@selected"/></activity_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor engstelig er du for at dine plager forverres med fysisk aktivitet eller bevegelse?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <fear_1><xsl:value-of select="./@selected"/></fear_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Spesifiser:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <treat12m_othersp_1><xsl:value-of select="./@selected"/></treat12m_othersp_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor mange slike behandlinger har du hatt i løpet av de siste 12 måneder?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <treat12m_numb_1><xsl:value-of select="./@selected"/></treat12m_numb_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='I lønnet arbeid'">
                           <employ_paid_1><xsl:value-of select="./@selected"/></employ_paid_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Skoleelev / Student'">
                           <employ_stud_1><xsl:value-of select="./@selected"/></employ_stud_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Pensjonist'">
                           <employ_retired_1><xsl:value-of select="./@selected"/></employ_retired_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Uføretrygdet'">
                           <employ_disability_1><xsl:value-of select="./@selected"/></employ_disability_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Sykmeldt'">
                           <employ_sick_1><xsl:value-of select="./@selected"/></employ_sick_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Arbeidsavklaring'">
                           <employ_assess_1><xsl:value-of select="./@selected"/></employ_assess_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ulønnet arbeid (eks. hjemme/frivillighetsarbeid)'">
                           <employ_unpaid_1><xsl:value-of select="./@selected"/></employ_unpaid_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Arbeidsledig'">
                           <employ_unempl_1><xsl:value-of select="./@selected"/></employ_unempl_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Foreldrepermisjon'">
                           <employ_parentleave_1><xsl:value-of select="./@selected"/></employ_parentleave_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi stillingsprosent'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <employ_paidp_1><xsl:value-of select="./@selected"/></employ_paidp_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi uføregrad i prosent'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <employ_disabilityp_1><xsl:value-of select="./@selected"/></employ_disabilityp_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi sykmeldingsgrad i prosent'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <employ_sickp_1><xsl:value-of select="./@selected"/></employ_sickp_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Høyde'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <height_1><xsl:value-of select="./@selected"/></height_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Vekt'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <weight_1><xsl:value-of select="./@selected"/></weight_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Røyker du?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <smoking_1><xsl:value-of select="./@selected"/></smoking_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Ditt høyeste utdanningsnivå:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <education_1><xsl:value-of select="./@selected"/></education_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er høyeste utdanning?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <education_othersp_1><xsl:value-of select="./@selected"/></education_othersp_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor er du født?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <ethnicity_1><xsl:value-of select="./@selected"/></ethnicity_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Sivilstand'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <marital_1><xsl:value-of select="./@selected"/></marital_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Bosituasjon'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <family_1><xsl:value-of select="./@selected"/></family_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor mange barn under 18 år har du daglig omsorg for?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <family_child_1><xsl:value-of select="./@selected"/></family_child_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Bakgrunnsdata'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Kjønn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <gender_1><xsl:value-of select="./@selected"/></gender_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Ganghjelpemidler'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Bruker du ganghjelpemidler?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <walk_aid_1><xsl:value-of select="./@selected"/></walk_aid_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Tro på behandlingen'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Jeg tror at fysioterapi vil bedre min funksjon:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <treat_belief_1><xsl:value-of select="./@selected"/></treat_belief_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Har du:'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Store nattsmerter?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <red_flag_nightpain_1><xsl:value-of select="./@selected"/></red_flag_nightpain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Har du:'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Tidligere kreftdiagnose?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <red_flag_cancer_1><xsl:value-of select="./@selected"/></red_flag_cancer_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Har du:'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Uforklarlig vekttap, dårlig matlyst, uforklarlig feber?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <red_flag_weight_1><xsl:value-of select="./@selected"/></red_flag_weight_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Har du:'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Problemer med vannlating avføring og/eller seksualfunksjon? '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <red_flag_urination_1><xsl:value-of select="./@selected"/></red_flag_urination_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Health literacy'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Har du vanskelig for å forstå helseinformasjon som du mottar?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <health_lit_info_1><xsl:value-of select="./@selected"/></health_lit_info_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Health literacy'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Synes du at du har en god forståelse av din nåværende helsesituasjon (muligheter og begrensninger)?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <health_lit_sit_1><xsl:value-of select="./@selected"/></health_lit_sit_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Marker den ENE boksen som best beskriver helsen din I DAG'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Gange'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <eq5d_walk_1><xsl:value-of select="./@selected"/></eq5d_walk_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Marker den ENE boksen som best beskriver helsen din I DAG'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Personlig stell'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <eq5d_care_1><xsl:value-of select="./@selected"/></eq5d_care_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Marker den ENE boksen som best beskriver helsen din I DAG'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Vanlige gjøremål '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <eq5d_adl_1><xsl:value-of select="./@selected"/></eq5d_adl_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Marker den ENE boksen som best beskriver helsen din I DAG'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter/ ubehag'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <eq5d_pain_1><xsl:value-of select="./@selected"/></eq5d_pain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Marker den ENE boksen som best beskriver helsen din I DAG'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angst/ depresjon'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <eq5d_depr_1><xsl:value-of select="./@selected"/></eq5d_depr_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Søvn og livskraft'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Søvn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <qol15d_q5_sleep_1><xsl:value-of select="./@selected"/></qol15d_q5_sleep_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Søvn og livskraft'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Livskraft'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <qol15d_q14_vital_1><xsl:value-of select="./@selected"/></qol15d_q14_vital_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '1. Hvor lenge har du hatt dine nåværende plager?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q1_1><xsl:value-of select="./@selected"/></oreb_q1_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '2. Hvor mye smerter har du hatt den SISTE UKEN?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q2_1><xsl:value-of select="./@selected"/></oreb_q2_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '3. Jeg kan utføre lettere arbeid under en time.'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q3_1><xsl:value-of select="./@selected"/></oreb_q3_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '4. Jeg kan sove på natten.'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q4_1><xsl:value-of select="./@selected"/></oreb_q4_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '5. Hvor anspent eller stresset har du kjent deg den SISTE UKEN?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q5_1><xsl:value-of select="./@selected"/></oreb_q5_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '6. I hvilken grad har du kjent deg nedstemt den SISTE UKEN?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q6_1><xsl:value-of select="./@selected"/></oreb_q6_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '7. Hvor stor risiko mener du det er for at dine nåværende plager kan bli langvarige?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q7_1><xsl:value-of select="./@selected"/></oreb_q7_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '8. Ut fra din vurdering hvor stor er sjansen for at du er i arbeid om TRE MÅNEDER?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q8_1><xsl:value-of select="./@selected"/></oreb_q8_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '9. Om plagene øker er det et signal på at jeg bør slutte med det jeg holder på med til plagene minker.'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q9_1><xsl:value-of select="./@selected"/></oreb_q9_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Örebro Screening skjema'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '10. Jeg bør ikke utføre mine normale aktiviteter eller arbeid med den smerten jeg har nå.'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <oreb_q10_1><xsl:value-of select="./@selected"/></oreb_q10_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Tidsaspekt smerte'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Er smerten av varierende intensitet?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pain_vary_1><xsl:value-of select="./@selected"/></pain_vary_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Tidsaspekt smerte'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvordan vil du beskrive smertevariasjonen best?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pain_variation_1><xsl:value-of select="./@selected"/></pain_variation_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Tidsaspekt smerte'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor ofte har du vanligvis disse smertene?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pain_freq_1><xsl:value-of select="./@selected"/></pain_freq_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'medisinbruk'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <medic_1><xsl:value-of select="./@selected"/></medic_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'medisinbruk'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvilke medisiner?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <medic_type><xsl:value-of select="./@selected"/></medic_type>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'medisinbruk'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvilke medisiner?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Paracetamol, Paracet, Panodil, Pimol, Pinex eller Perfalgan'">
                           <medic_type_paracet_1><xsl:value-of select="./@selected"/></medic_type_paracet_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'medisinbruk'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvilke medisiner?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Albyl-E (500 mg), Aspirin, Globoid eller Dispril'">
                           <medic_type_albyle_1><xsl:value-of select="./@selected"/></medic_type_albyle_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'medisinbruk'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvilke medisiner?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ibuprofen, Ibux, Ibuprox, Ibumetin, Brufen, Naproxen, Naprosyn eller Ladox'">
                           <medic_type_ibux_1><xsl:value-of select="./@selected"/></medic_type_ibux_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'medisinbruk'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvilke medisiner?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Andre'">
                           <medic_type_other_1><xsl:value-of select="./@selected"/></medic_type_other_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '1. Plutselig skremt uten grunn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q1_1><xsl:value-of select="./@selected"/></hscl_q1_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '2. Føler du deg svimmel eller kraftesløs'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q2_1><xsl:value-of select="./@selected"/></hscl_q2_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '3. Føler deg anspent eller opphisset'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q3_1><xsl:value-of select="./@selected"/></hscl_q3_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '4. Anfall av redsel eller panikk'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q4_1><xsl:value-of select="./@selected"/></hscl_q4_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '5. Anklager deg selv for ting'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q5_1><xsl:value-of select="./@selected"/></hscl_q5_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '6. Vanskelig for å sove'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q6_1><xsl:value-of select="./@selected"/></hscl_q6_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '7. Følelse av håpløshet mhp. framtiden'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q7_1><xsl:value-of select="./@selected"/></hscl_q7_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '8. Føler deg nedfor'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q8_1><xsl:value-of select="./@selected"/></hscl_q8_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '9. Føler at alt krever stor anstrengelse'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q9_1><xsl:value-of select="./@selected"/></hscl_q9_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Hvordan har du det?'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '10. Føler at du ikke er noe verd'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hscl_q10_1><xsl:value-of select="./@selected"/></hscl_q10_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Mosjon og Trening'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor ofte driver du mosjon eller trening?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pa_freq_1><xsl:value-of select="./@selected"/></pa_freq_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Mosjon og Trening'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor hardt mosjonerer / trener du?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pa_int_1><xsl:value-of select="./@selected"/></pa_int_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Mosjon og Trening'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hvor lenge holder du på hver gang?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pa_dur_1><xsl:value-of select="./@selected"/></pa_dur_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '2) Føler du deg ofte usikker på hvordan du skal håndtere smertene dine?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q2_1><xsl:value-of select="./@selected"/></mskt_q2_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '3) Har smertene dine plaget deg mye de siste to ukene?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q3_1><xsl:value-of select="./@selected"/></mskt_q3_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '4) Har du bare klart å gå korte avstander på grunn av smertene dine?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q4_1><xsl:value-of select="./@selected"/></mskt_q4_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '5) Har du vært plaget med ledd- eller muskelsmerter flere steder i kroppen?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q5_1><xsl:value-of select="./@selected"/></mskt_q5_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '6) Tror du plagene dine kommer til å vare lenge?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q6_1><xsl:value-of select="./@selected"/></mskt_q6_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '7) Har du andre vesentlige helseplager?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q7_1><xsl:value-of select="./@selected"/></mskt_q7_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '8) Har smertene gjort deg nedtrykt eller deprimert de siste to ukene?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q8_1><xsl:value-of select="./@selected"/></mskt_q8_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '9) Føler du at det er utrygt for deg med din helsetilstand å være fysisk aktiv (f.eks. å gå løfte trene bøye seg)?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q9_1><xsl:value-of select="./@selected"/></mskt_q9_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Keele STarT MSK skjema© '">
          <xsl:for-each select="question">
              <xsl:if test="@name = '10) Har du hatt dine nåværende smerteproblemer i 6 måneder eller lenger?'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskt_q10_1><xsl:value-of select="./@selected"/></mskt_q10_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '1. Smerte/stivhet i løpet av dagen'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q1_1><xsl:value-of select="./@selected"/></mskhq_q1_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '2. Smerter/stivhet om natten.'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q2_1><xsl:value-of select="./@selected"/></mskhq_q2_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '3. Gange'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q3_1><xsl:value-of select="./@selected"/></mskhq_q3_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '4. Vaske seg/påkledning'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q4_1><xsl:value-of select="./@selected"/></mskhq_q4_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '5. Fysisk aktivitetsnivå'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q5_1><xsl:value-of select="./@selected"/></mskhq_q5_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '6. Arbeid/daglige aktiviteter'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q6_1><xsl:value-of select="./@selected"/></mskhq_q6_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '7. Sosiale aktiviteter og hobbyer'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q7_1><xsl:value-of select="./@selected"/></mskhq_q7_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '8. Behov for hjelp'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q8_1><xsl:value-of select="./@selected"/></mskhq_q8_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '9. Søvn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q9_1><xsl:value-of select="./@selected"/></mskhq_q9_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '10. Utmattelse eller lite energi '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q10_1><xsl:value-of select="./@selected"/></mskhq_q10_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '11. Følelsesmessig velvære'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q11_1><xsl:value-of select="./@selected"/></mskhq_q11_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '12. Forståelse av dine helseplager og pågående behandling'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q12_1><xsl:value-of select="./@selected"/></mskhq_q12_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '13. Tro på å mestre symptomene dine'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q13_1><xsl:value-of select="./@selected"/></mskhq_q13_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '14. Generell påvirkning'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_q14_1><xsl:value-of select="./@selected"/></mskhq_q14_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Fysisk aktivitetsnivå'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <mskhq_pa_1><xsl:value-of select="./@selected"/></mskhq_pa_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Smerte'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pseq_q1_1><xsl:value-of select="./@selected"/></pseq_q1_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961490'">
      <xsl:if test="@name = 'Smerte'">
          <xsl:for-each select="question">
              <xsl:if test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <pseq_q2_1><xsl:value-of select="./@selected"/></pseq_q2_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hovedmål med behandlingen'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Hva er hovedmålet med behandlingen'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <treat_goal_1><xsl:value-of select="./@selected"/></treat_goal_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Diagnose'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Definer hovedproblem (dette utløser spesifikke tester for gitt område)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <body_main_1><xsl:value-of select="./@selected"/></body_main_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag i vektbærende stilling'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <neck_move_1><xsl:value-of select="./@selected"/></neck_move_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <neck_move_rom_flex_1><xsl:value-of select="./@selected"/></neck_move_rom_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <neck_move_rom_ext_1><xsl:value-of select="./@selected"/></neck_move_rom_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Rotasjon'">
                           <neck_move_rom_rot_1><xsl:value-of select="./@selected"/></neck_move_rom_rot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Lateralfleksjon'">
                           <neck_move_rom_lat_1><xsl:value-of select="./@selected"/></neck_move_rom_lat_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <neck_move_rom_not_1><xsl:value-of select="./@selected"/></neck_move_rom_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <neck_move_pain_flex_1><xsl:value-of select="./@selected"/></neck_move_pain_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <neck_move_pain_ext_1><xsl:value-of select="./@selected"/></neck_move_pain_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Rotasjon'">
                           <neck_move_pain_rot_1><xsl:value-of select="./@selected"/></neck_move_pain_rot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Lateralfleksjon'">
                           <neck_move_pain_lat_1><xsl:value-of select="./@selected"/></neck_move_pain_lat_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ingen smerter ved aktive bevgelsesutslag'">
                           <neck_move_pain_not_1><xsl:value-of select="./@selected"/></neck_move_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Spurling test positiv'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <neck_spurling_1><xsl:value-of select="./@selected"/></neck_spurling_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi nevrologiske funn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke aktuelt'">
                           <neck_neuro_not_1><xsl:value-of select="./@selected"/></neck_neuro_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi nevrologiske funn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Redusert kraft'">
                           <neck_neuro_pow_1><xsl:value-of select="./@selected"/></neck_neuro_pow_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi nevrologiske funn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Redusert sensibilitet'">
                           <neck_neuro_sens_1><xsl:value-of select="./@selected"/></neck_neuro_sens_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Angi nevrologiske funn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Unormale reflekser'">
                           <neck_neuro_reflex_1><xsl:value-of select="./@selected"/></neck_neuro_reflex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Ev. kommentar nevrologiske funn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <neck_neuro_other_1><xsl:value-of select="./@selected"/></neck_neuro_other_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Konklusjon av nakkevurdering '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <neck_conclusion_1><xsl:value-of select="./@selected"/></neck_conclusion_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nakkeundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Ev. kommentarer:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <neck_comment_1><xsl:value-of select="./@selected"/></neck_comment_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_move_1><xsl:value-of select="./@selected"/></shoulder_move_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <shoulder_move_rom_flex_1><xsl:value-of select="./@selected"/></shoulder_move_rom_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Abduksjon'">
                           <shoulder_move_rom_abd_1><xsl:value-of select="./@selected"/></shoulder_move_rom_abd_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Adduksjon'">
                           <shoulder_move_rom_add_1><xsl:value-of select="./@selected"/></shoulder_move_rom_add_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utadrotasjon'">
                           <shoulder_move_rom_extrot_1><xsl:value-of select="./@selected"/></shoulder_move_rom_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Innadrotasjon'">
                           <shoulder_move_rom_introt_1><xsl:value-of select="./@selected"/></shoulder_move_rom_introt_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <shoulder_move_rom_not_1><xsl:value-of select="./@selected"/></shoulder_move_rom_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <shoulder_move_pain_flex_1><xsl:value-of select="./@selected"/></shoulder_move_pain_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Abduksjon'">
                           <shoulder_move_pain_abd_1><xsl:value-of select="./@selected"/></shoulder_move_pain_abd_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Adduksjon'">
                           <shoulder_move_pain_add_1><xsl:value-of select="./@selected"/></shoulder_move_pain_add_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utadrotasjon'">
                           <shoulder_move_pain_extrot_1><xsl:value-of select="./@selected"/></shoulder_move_pain_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Innadrotasjon'">
                           <shoulder_move_pain_introt_1><xsl:value-of select="./@selected"/></shoulder_move_pain_introt_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <shoulder_move_pain_not_1><xsl:value-of select="./@selected"/></shoulder_move_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Redusert passiv utadrotasjon '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_passive_extrot_1><xsl:value-of select="./@selected"/></shoulder_passive_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smertebue '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_painfularc_1><xsl:value-of select="./@selected"/></shoulder_painfularc_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved Hawkins test'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_hawkins_1><xsl:value-of select="./@selected"/></shoulder_hawkins_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved isometrisk abduksjon'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_iso_abdpain_1><xsl:value-of select="./@selected"/></shoulder_iso_abdpain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved isometrisk utadrotasjon'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_iso_extrotpain_1><xsl:value-of select="./@selected"/></shoulder_iso_extrotpain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nedsatt kraft ved isometrisk abduksjon'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_iso_abdpow_1><xsl:value-of select="./@selected"/></shoulder_iso_abdpow_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nedsatt kraft ved isometrisk utadrotasjon'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_iso_extrotpow_1><xsl:value-of select="./@selected"/></shoulder_iso_extrotpow_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Skulderundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Eventuelt kommentarer:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <shoulder_comment_1><xsl:value-of select="./@selected"/></shoulder_comment_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle  aktive bevegelsesutslag i stående stilling'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <back_move_1><xsl:value-of select="./@selected"/></back_move_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <back_move_rom_flex_1><xsl:value-of select="./@selected"/></back_move_rom_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <back_move_rom_ext_1><xsl:value-of select="./@selected"/></back_move_rom_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Rotasjon'">
                           <back_move_rom_rot_1><xsl:value-of select="./@selected"/></back_move_rom_rot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Lateralfleksjon'">
                           <back_move_rom_lat_1><xsl:value-of select="./@selected"/></back_move_rom_lat_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <back_move_rom_not_1><xsl:value-of select="./@selected"/></back_move_rom_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <back_move_pain_flex_1><xsl:value-of select="./@selected"/></back_move_pain_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <back_move_pain_ext_1><xsl:value-of select="./@selected"/></back_move_pain_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Rotasjon'">
                           <back_move_pain_rot_1><xsl:value-of select="./@selected"/></back_move_pain_rot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Lateralfleksjon'">
                           <back_move_pain_lat_1><xsl:value-of select="./@selected"/></back_move_pain_lat_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Ryggundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ingen smerter ved aktive bevgelsesutslag'">
                           <back_move_pain_not_1><xsl:value-of select="./@selected"/></back_move_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Straight leg raise (Lasegues prøve) '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv Straight leg raise (Lasegues prøve) '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <back_slr_1><xsl:value-of select="./@selected"/></back_slr_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nevrologiske funn '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nevrologiske funn '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke aktuelt'">
                           <back_neuro_not_1><xsl:value-of select="./@selected"/></back_neuro_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nevrologiske funn '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nevrologiske funn '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Redusert kraft'">
                           <back_neuro_pow_1><xsl:value-of select="./@selected"/></back_neuro_pow_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nevrologiske funn '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nevrologiske funn '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Redusert sensibilitet'">
                           <back_neuro_sens_1><xsl:value-of select="./@selected"/></back_neuro_sens_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nevrologiske funn '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nevrologiske funn '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Unormale reflekser'">
                           <back_neuro_reflex_1><xsl:value-of select="./@selected"/></back_neuro_reflex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nevrologiske funn '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Kommentar nevrologiske funn'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <back_comment_neuro_1><xsl:value-of select="./@selected"/></back_comment_neuro_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Nevrologiske funn '">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Ev. andre kommentarer:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <back_comment_1><xsl:value-of select="./@selected"/></back_comment_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hip_move_1><xsl:value-of select="./@selected"/></hip_move_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <hip_move_rom_flex_1><xsl:value-of select="./@selected"/></hip_move_rom_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <hip_move_rom_ext_1><xsl:value-of select="./@selected"/></hip_move_rom_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Abduksjon'">
                           <hip_move_rom_abd_1><xsl:value-of select="./@selected"/></hip_move_rom_abd_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Adduksjon'">
                           <hip_move_rom_add_1><xsl:value-of select="./@selected"/></hip_move_rom_add_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utadrotasjon'">
                           <hip_move_rom_extrot_1><xsl:value-of select="./@selected"/></hip_move_rom_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Innadrotasjon'">
                           <hip_move_rom_introt_1><xsl:value-of select="./@selected"/></hip_move_rom_introt_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <hip_move_rom_not_1><xsl:value-of select="./@selected"/></hip_move_rom_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <hip_move_pain_flex_1><xsl:value-of select="./@selected"/></hip_move_pain_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <hip_move_pain_ext_1><xsl:value-of select="./@selected"/></hip_move_pain_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Abduksjon'">
                           <hip_move_pain_abd_1><xsl:value-of select="./@selected"/></hip_move_pain_abd_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Adduksjon'">
                           <hip_move_pain_add_1><xsl:value-of select="./@selected"/></hip_move_pain_add_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utadrotasjon'">
                           <hip_move_pain_extrot_1><xsl:value-of select="./@selected"/></hip_move_pain_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Innadrotasjon'">
                           <hip_move_pain_introt_1><xsl:value-of select="./@selected"/></hip_move_pain_introt_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ingen smerter ved aktive bevegelser'">
                           <hip_move_pain_not_1><xsl:value-of select="./@selected"/></hip_move_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle passive bevegelsesutslag '">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hip_move_passive_1><xsl:value-of select="./@selected"/></hip_move_passive_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <hip_move_passive_rom_flex_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <hip_move_passive_rom_ext_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Abduksjon'">
                           <hip_move_passive_rom_abd_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_abd_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Adduksjon'">
                           <hip_move_passive_rom_add_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_add_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utadrotasjon'">
                           <hip_move_passive_rom_extrot_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Innadrotasjon'">
                           <hip_move_passive_rom_introt_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_introt_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <hip_move_passive_rom_not_1><xsl:value-of select="./@selected"/></hip_move_passive_rom_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <hip_move_passive_pain_flex_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <hip_move_passive_pain_ext_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Abduksjon'">
                           <hip_move_passive_pain_abd_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_abd_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Adduksjon'">
                           <hip_move_passive_pain_add_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_add_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Utadrotasjon'">
                           <hip_move_passive_pain_extrot_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_extrot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Innadrotasjon'">
                           <hip_move_passive_pain_introt_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_introt_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ingen smerter ved aktive bevegelser'">
                           <hip_move_passive_pain_not_1><xsl:value-of select="./@selected"/></hip_move_passive_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv FABER/Patricks test'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hip_faber_1><xsl:value-of select="./@selected"/></hip_faber_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv FADDIR test (passiv fleksjon adduksjon og innadrotasjon)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hip_faddir_1><xsl:value-of select="./@selected"/></hip_faddir_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv Trendelenburg'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <hip_trend_1><xsl:value-of select="./@selected"/></hip_trend_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke aktuelt'">
                           <hip_pain_not_1><xsl:value-of select="./@selected"/></hip_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Lateralt'">
                           <hip_pain_lat_1><xsl:value-of select="./@selected"/></hip_pain_lat_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Medial/lyske'">
                           <hip_pain_med_1><xsl:value-of select="./@selected"/></hip_pain_med_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Posteriort'">
                           <hip_pain_post_1><xsl:value-of select="./@selected"/></hip_pain_post_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Hofteundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Anteriort'">
                           <hip_pain_ant_1><xsl:value-of select="./@selected"/></hip_pain_ant_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_move_1><xsl:value-of select="./@selected"/></knee_move_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <knee_move_rom_flex_1><xsl:value-of select="./@selected"/></knee_move_rom_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <knee_move_rom_ext_1><xsl:value-of select="./@selected"/></knee_move_rom_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <knee_move_rom_not_1><xsl:value-of select="./@selected"/></knee_move_rom_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <knee_move_pain_flex_1><xsl:value-of select="./@selected"/></knee_move_pain_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <knee_move_pain_ext_1><xsl:value-of select="./@selected"/></knee_move_pain_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ingen smerter ved aktive bevegelser'">
                           <knee_move_pain_not_1><xsl:value-of select="./@selected"/></knee_move_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte og/eller smertefulle passive bevegelsesutslag'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_move_passive_1><xsl:value-of select="./@selected"/></knee_move_passive_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <knee_passive_flexlim_1><xsl:value-of select="./@selected"/></knee_passive_flexlim_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <knee_passive_extlim_1><xsl:value-of select="./@selected"/></knee_passive_extlim_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                           <knee_passive_notlim_1><xsl:value-of select="./@selected"/></knee_passive_notlim_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Fleksjon'">
                           <knee_passive_flexpain_1><xsl:value-of select="./@selected"/></knee_passive_flexpain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ekstensjon'">
                           <knee_passive_extpain_1><xsl:value-of select="./@selected"/></knee_passive_extpain_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Smerter ved'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='Ingen smerter ved passive bevegelser'">
                           <knee_passive_pain_not_1><xsl:value-of select="./@selected"/></knee_passive_pain_not_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Er det hydrops i kneet'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_hydrops_1><xsl:value-of select="./@selected"/></knee_hydrops_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Har pasienten vært utsatt for et traume'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_traumatic_1><xsl:value-of select="./@selected"/></knee_traumatic_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv Pivot Shift test'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_pivot_1><xsl:value-of select="./@selected"/></knee_pivot_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv Lachman test uten endepunkt'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_lachman_1><xsl:value-of select="./@selected"/></knee_lachman_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Positiv Sag test'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_sag_1><xsl:value-of select="./@selected"/></knee_sag_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Gjenkjennbar smerte ved McMurrays test'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_mcmurray_1><xsl:value-of select="./@selected"/></knee_mcmurray_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Gjenkjennbar smerte ved palpasjon i leddspalten'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_palp_1><xsl:value-of select="./@selected"/></knee_palp_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Forøket valgus ved stress test på ekstendert kne'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_valgus_ext_1><xsl:value-of select="./@selected"/></knee_valgus_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Forøket valgus ved stress test på 20 graders flektert kne'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_valgus_flex_1><xsl:value-of select="./@selected"/></knee_valgus_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Forøket varus ved stress test på ekstendert kne'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_varus_ext_1><xsl:value-of select="./@selected"/></knee_varus_ext_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Forøket varus ved stress test på 20 graders flektert kne'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_varus_flex_1><xsl:value-of select="./@selected"/></knee_varus_flex_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'Kneundersøkelse'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Eventuelt kommentarer:'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <knee_comment_1><xsl:value-of select="./@selected"/></knee_comment_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'ICPC kode/ Diagnose'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Bokstav'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <icpc_letter_1><xsl:value-of select="./@selected"/></icpc_letter_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'ICPC kode/ Diagnose'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Nummerkode'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <icpc_nr_1><xsl:value-of select="./@selected"/></icpc_nr_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../@taskid = '249961492'">
      <xsl:if test="@name = 'ICPC kode/ Diagnose'">
          <xsl:for-each select="question">
              <xsl:if test="@name = 'Fritekst (må fylles ut)'">
                  <xsl:for-each select="answer">
                      <xsl:if test=".='infopad_var_not_defined'">
                           <diagnose_1><xsl:value-of select="./@selected"/></diagnose_1>
                      </xsl:if>
                  </xsl:for-each>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
     </xsl:if>

   <!-- Code for condition : 7  ......................... END -->


            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>
