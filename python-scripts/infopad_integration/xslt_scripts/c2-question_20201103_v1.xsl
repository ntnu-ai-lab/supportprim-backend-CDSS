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
            </xsl:for-each>

            <xsl:for-each select="//form/groups/group">
                
                <!-- Code for condition : 2  START ....................... -->

    <xsl:for-each select="question">
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='Klinikk'">
            <physio_id>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </physio_id>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='Pasient nr'">
            <journal_id>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </journal_id>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='Fødselsår'">
            <birth_year>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </birth_year>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='Örebro screening skjema - Fysioprim'">
            <oreb_score_1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </oreb_score_1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='Gjennomsnitt:'">
            <hscl_score_1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </hscl_score_1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='Keele STarT MSK skjema© Selvrapporteringsversjon'">
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
     </xsl:if>
     <xsl:if test="../../../@taskid = '249961490'">
        <xsl:if test="@name='1) Hvor intense var smertene i gjennomsnitt (der 0 er ingen smerte&quot; og 10 er &quot;så vondt som det går an å ha&quot;)?&quot;'">
            <mskt_q1_1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </mskt_q1_1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='smallAktivitet 1/small'">
            <psfs1_act_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs1_act_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='smallAktivitet 1/small'">
            <psfs1_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs1_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='smallAktivitet 2/small'">
            <psfs2_act_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs2_act_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='smallAktivitet 2/small'">
            <psfs2_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs2_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='smallAktivitet 3/small'">
            <psfs3_act_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs3_act_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='smallAktivitet 3/small'">
            <psfs3_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs3_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966392'">
        <xsl:if test="@name='Arbeidsevne - Fysioprim'">
            <work_ability_w1>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </work_ability_w1>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966394'">
        <xsl:if test="@name='Pain Self-Efficacy Questionnaire (PSEQ-2)'">
            <pseq_score_w2>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </pseq_score_w2>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966422'">
        <xsl:if test="@name='Pain Self-Efficacy Questionnaire (PSEQ-2)'">
            <pseq_score_w8>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </pseq_score_w8>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Hode'">
            <painsite_head_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_head_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Nakke'">
            <painsite_neck_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_neck_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Skuldre'">
            <painsite_shou_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_shou_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Øvre del rygg'">
            <painsite_uback_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_uback_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Albuer'">
            <painsite_elbow_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_elbow_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Håndledd / hender'">
            <painsite_hand_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_hand_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Hofter / lår'">
            <painsite_thigh_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_thigh_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Korsrygg'">
            <painsite_lback_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_lback_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Ankler / føtter'">
            <painsite_feet_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_feet_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Knær'">
            <painsite_knee_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_knee_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='Antall affiserte regioner:'">
            <painsite_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </painsite_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966782'">
        <xsl:if test="@name='SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
            <mskhq_score_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </mskhq_score_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='smallAktivitet 1/small'">
            <psfs1_act_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs1_act_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='smallAktivitet 1/small'">
            <psfs1_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs1_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='smallAktivitet 2/small'">
            <psfs2_act_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs2_act_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='smallAktivitet 2/small'">
            <psfs2_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs2_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='smallAktivitet 3/small'">
            <psfs3_act_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs3_act_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='smallAktivitet 3/small'">
            <psfs3_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </psfs3_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='Mål'">
            <eval_goal_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </eval_goal_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='Fortsetter behandlingen?'">
            <treat_contin_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </treat_contin_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='Antall konsultasjoner totalt'">
            <_unknown_>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </_unknown_>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='Viktig bakgrunnsinformasjon for behandlingsutfall'">
            <treat_describe_important_3>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </treat_describe_important_3>
        </xsl:if>
     </xsl:if>
     <xsl:if test="../../../@taskid = '249966786'">
        <xsl:if test="@name='Pasienten har fått følgende behandling:'">
            <_unknown_>
                <xsl:choose>
                    <xsl:when test="answer/@selected='true'">
                        <xsl:value-of select="answer[@selected='true']"/>
                    </xsl:when>
                    <xsl:when test="answer[not(@selected)]">
                        <xsl:value-of select="answer"/>
                    </xsl:when>
                    <xsl:otherwise>_unknown_</xsl:otherwise>
                </xsl:choose>
            </_unknown_>
        </xsl:if>
     </xsl:if>
    </xsl:for-each>

   <!-- Code for condition : 2  ......................... END -->

            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>