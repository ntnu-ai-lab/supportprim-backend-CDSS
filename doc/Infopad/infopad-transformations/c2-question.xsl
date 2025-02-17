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
                <xsl:for-each select="question">

                    <xsl:if test="@name = 'Klinikk'">
                        <physio_id>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </physio_id>
                    </xsl:if>

                    <xsl:if test="@name = 'Pasient nr'">
                        <journal_id>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </journal_id>
                    </xsl:if>

                    <xsl:if test="@name = 'Fødselsår'">
                        <birth_year>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </birth_year>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Hvordan vil du beskrive arbeidet ditt (lønnet eller ulønnet)?'">
                        <work_type_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_type_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne'">
                        <work_ability_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Når du tenker på barndommen/ oppveksten din vil du beskrive den som: '">
                        <childhood_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </childhood_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <como_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </como_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Hvor redusert er ditt daglige aktivitetsnivå på grunn av smerter eller plager?'">
                        <activity_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </activity_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Hvor engstelig er du for at dine plager forverres med fysisk aktivitet eller bevegelse?'">
                        <fear_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </fear_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Spesifiser:'">
                        <treat12m_othersp_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat12m_othersp_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Hvor mange slike behandlinger har du hatt i løpet av de siste 12 måneder?'">
                        <treat12m_numb_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat12m_numb_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <employ_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </employ_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Høyde'">
                        <height_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </height_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Vekt'">
                        <weight_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </weight_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Røyker du?'">
                        <smoking_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </smoking_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Ditt høyeste utdanningsnivå:'">
                        <education_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </education_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hva er høyeste utdanning?'">
                        <education_othersp_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </education_othersp_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor er du født?'">
                        <ethnicity_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </ethnicity_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Sivilstand'">
                        <marital_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </marital_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Bosituasjon'">
                        <family_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </family_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor mange barn under 18 år har du daglig omsorg for?'">
                        <family_child_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </family_child_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Kjønn'">
                        <gender_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </gender_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Bruker du ganghjelpemidler?'">
                        <walk_aid_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </walk_aid_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Jeg tror at fysioterapi vil bedre min funksjon:'">
                        <treat_belief_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_belief_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Store nattsmerter?'">
                        <red_flag_nightpain_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </red_flag_nightpain_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Tidligere kreftdiagnose?'">
                        <red_flag_cancer_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </red_flag_cancer_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Uforklarlig vekttap dårlig matlyst uforklarlig feber?'">
                        <red_flag_weight_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </red_flag_weight_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Problemer med vannlating avføring og/eller seksualfunksjon?'">
                        <red_flag_urination_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </red_flag_urination_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Har du vanskelig for å forstå helseinformasjon som du mottar?'">
                        <health_lit_info_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </health_lit_info_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Synes du at du har en god forståelse av din nåværende helsesituasjon (muligheter og begrensninger)?'">
                        <health_lit_sit_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </health_lit_sit_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Gange'">
                        <eq5d_walk_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_walk_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Personlig stell'">
                        <eq5d_care_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_care_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Vanlige gjøremål '">
                        <eq5d_adl_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_adl_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Smerter/ ubehag'">
                        <eq5d_pain_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_pain_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Angst/ depresjon'">
                        <eq5d_depr_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_depr_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Søvn'">
                        <qol15d_q5_sleep_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </qol15d_q5_sleep_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Livskraft'">
                        <qol15d_q14_vital_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </qol15d_q14_vital_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Örebro screening skjema - Fysioprim'">
                        <oreb_score_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_score_1>
                    </xsl:if>

                    <xsl:if test="@name = '1. Hvor lenge har du hatt dine nåværende plager?'">
                        <oreb_q1_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q1_1>
                    </xsl:if>

                    <xsl:if test="@name = '2. Hvor mye smerter har du hatt den SISTE UKEN?'">
                        <oreb_q2_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q2_1>
                    </xsl:if>

                    <xsl:if test="@name = '3. Jeg kan utføre lettere arbeid under en time.'">
                        <oreb_q3_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q3_1>
                    </xsl:if>

                    <xsl:if test="@name = '4. Jeg kan sove på natten.'">
                        <oreb_q4_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q4_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '5. Hvor anspent eller stresset har du kjent deg den SISTE UKEN?'">
                        <oreb_q5_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q5_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '6. I hvilken grad har du kjent deg nedstemt den SISTE UKEN?'">
                        <oreb_q6_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q6_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '7. Hvor stor risiko mener du det er for at dine nåværende plager kan bli langvarige?'">
                        <oreb_q7_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q7_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '8. Ut fra din vurdering hvor stor er sjansen for at du er i arbeid om TRE MÅNEDER?'">
                        <oreb_q8_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q8_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '9. Om plagene øker er det et signal på at jeg bør slutte med det jeg holder på med til plagene minker.'">
                        <oreb_q9_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q9_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '10. Jeg bør ikke utføre mine normale aktiviteter eller arbeid med den smerten jeg har nå.'">
                        <oreb_q10_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q10_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Er smerten av varierende intensitet?'">
                        <pain_vary_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_vary_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvordan vil du beskrive smertevariasjonen best?'">
                        <pain_variation_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_variation_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor ofte har du vanligvis disse smertene?'">
                        <pain_freq_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_freq_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                        <medic_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </medic_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvilke medisiner?'">
                        <medic_type>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </medic_type>
                    </xsl:if>

                    <xsl:if test="@name = 'Gjennomsnitt:'">
                        <hscl_score_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_score_1>
                    </xsl:if>

                    <xsl:if test="@name = '1. Plutselig skremt uten grunn'">
                        <hscl_q1_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q1_1>
                    </xsl:if>

                    <xsl:if test="@name = '2. Føler du deg svimmel eller kraftesløs'">
                        <hscl_q2_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q2_1>
                    </xsl:if>

                    <xsl:if test="@name = '3. Føler deg anspent eller opphisset'">
                        <hscl_q3_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q3_1>
                    </xsl:if>

                    <xsl:if test="@name = '4. Anfall av redsel eller panikk'">
                        <hscl_q4_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q4_1>
                    </xsl:if>

                    <xsl:if test="@name = '5. Anklager deg selv for ting'">
                        <hscl_q5_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q5_1>
                    </xsl:if>

                    <xsl:if test="@name = '6. Vanskelig for å sove'">
                        <hscl_q6_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q6_1>
                    </xsl:if>

                    <xsl:if test="@name = '7. Følelse av håpløshet mhp. framtiden'">
                        <hscl_q7_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q7_1>
                    </xsl:if>

                    <xsl:if test="@name = '8. Føler deg nedfor'">
                        <hscl_q8_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q8_1>
                    </xsl:if>

                    <xsl:if test="@name = '9. Føler at alt krever stor anstrengelse'">
                        <hscl_q9_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q9_1>
                    </xsl:if>

                    <xsl:if test="@name = '10. Føler at du ikke er noe verd'">
                        <hscl_q10_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl_q10_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Mosjon og Trening Fysioprim'">
                        <pa_sum_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_sum_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor ofte driver du mosjon eller trening?'">
                        <pa_freq_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_freq_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor hardt mosjonerer / trener du?'">
                        <pa_int_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_int_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor lenge holder du på hver gang?'">
                        <pa_dur_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_dur_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Keele STarT MSK skjema© Selvrapporteringsversjon'">
                        <mskt_risk_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_risk_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '1) Hvor intense var smertene i gjennomsnitt (der 0 er ingen smerte&quot; og 10 er &quot;så vondt som det går an å ha&quot;)?&quot;'">
                        <mskt_q1_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q1_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '2) Føler du deg ofte usikker på hvordan du skal håndtere smertene dine?'">
                        <mskt_q2_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q2_1>
                    </xsl:if>

                    <xsl:if test="@name = '3) Har smertene dine plaget deg mye de siste to ukene?'">
                        <mskt_q3_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q3_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '4) Har du bare klart å gå korte avstander på grunn av smertene dine?'">
                        <mskt_q4_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q4_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '5) Har du vært plaget med ledd- eller muskelsmerter flere steder i kroppen?'">
                        <mskt_q5_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q5_1>
                    </xsl:if>

                    <xsl:if test="@name = '6) Tror du plagene dine kommer til å vare lenge?'">
                        <mskt_q6_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q6_1>
                    </xsl:if>

                    <xsl:if test="@name = '7) Har du andre vesentlige helseplager?'">
                        <mskt_q7_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q7_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '8) Har smertene gjort deg nedtrykt eller deprimert de siste to ukene?'">
                        <mskt_q8_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q8_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '9) Føler du at det er utrygt for deg med din helsetilstand å være fysisk aktiv (f.eks. å gå løfte trene bøye seg)?'">
                        <mskt_q9_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q9_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '10) Har du hatt dine nåværende smerteproblemer i 6 måneder eller lenger?'">
                        <mskt_q10_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskt_q10_1>
                    </xsl:if>

                    <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
                        <mskhq_score_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_score_1>
                    </xsl:if>

                    <xsl:if test="@name = '1. Smerte/stivhet i løpet av dagen'">
                        <mskhq_q1_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q1_1>
                    </xsl:if>

                    <xsl:if test="@name = '2. Smerter/stivhet om natten.'">
                        <mskhq_q2_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q2_1>
                    </xsl:if>

                    <xsl:if test="@name = '3. Gange'">
                        <mskhq_q3_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q3_1>
                    </xsl:if>

                    <xsl:if test="@name = '4. Vaske seg/påkledning'">
                        <mskhq_q4_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q4_1>
                    </xsl:if>

                    <xsl:if test="@name = '5. Fysisk aktivitetsnivå'">
                        <mskhq_q5_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q5_1>
                    </xsl:if>

                    <xsl:if test="@name = '6. Arbeid/daglige aktiviteter'">
                        <mskhq_q6_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q6_1>
                    </xsl:if>

                    <xsl:if test="@name = '7. Sosiale aktiviteter og hobbyer'">
                        <mskhq_q7_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q7_1>
                    </xsl:if>

                    <xsl:if test="@name = '8. Behov for hjelp'">
                        <mskhq_q8_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q8_1>
                    </xsl:if>

                    <xsl:if test="@name = '9. Søvn'">
                        <mskhq_q9_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q9_1>
                    </xsl:if>

                    <xsl:if test="@name = '10. Utmattelse eller lite energi '">
                        <mskhq_q10_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q10_1>
                    </xsl:if>

                    <xsl:if test="@name = '11. Følelsesmessig velvære'">
                        <mskhq_q11_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q11_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '12. Forståelse av dine helseplager og pågående behandling'">
                        <mskhq_q12_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q12_1>
                    </xsl:if>

                    <xsl:if test="@name = '13. Tro på å mestre symptomene dine'">
                        <mskhq_q13_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q13_1>
                    </xsl:if>

                    <xsl:if test="@name = '14. Generell påvirkning'">
                        <mskhq_q14_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q14_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Fysisk aktivitetsnivå'">
                        <mskhq_pa_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_pa_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
                        <pseq_score_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_score_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
                        <pseq_q1_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q1_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
                        <pseq_q2_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q2_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Hva er hovedmålet med behandlingen'">
                        <treat_goal_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_goal_1>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Definer hovedproblem (dette utløser spesifikke tester for gitt område)'">
                        <body_main_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </body_main_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Bokstav'">
                        <icpc_letter_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </icpc_letter_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Nummerkode'">
                        <icpc_nr_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </icpc_nr_1>
                    </xsl:if>

                    <xsl:if test="@name = 'Fritekst (må fylles ut)'">
                        <diagnose_1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </diagnose_1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
                        <work_ability_w1>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_w1>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
                        <work_ability_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor mye smerter har du hatt den SISTE UKEN?'">
                        <oreb_q2_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q2_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
                        <pseq_score_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_score_w2>
                    </xsl:if>

                    <xsl:if
                        test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
                        <pseq_q1_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q1_w2>
                    </xsl:if>

                    <xsl:if
                        test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
                        <pseq_q2_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q2_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'Siden behandling startet er jeg :'">
                        <gpe_w2>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </gpe_w2>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
                        <work_ability_w3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_w3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
                        <work_ability_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'Siden behandling startet er jeg :'">
                        <gpe_w4>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </gpe_w4>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
                        <work_ability_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor mye smerter har du hatt den SISTE UKEN?'">
                        <oreb_q2_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q2_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
                        <pseq_score_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_score_w8>
                    </xsl:if>

                    <xsl:if
                        test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
                        <pseq_q1_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q1_w8>
                    </xsl:if>

                    <xsl:if
                        test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
                        <pseq_q2_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q2_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'Siden behandling startet er jeg :'">
                        <gpe_w8>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </gpe_w8>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_p_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_p_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_p_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_p_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_p_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_p_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Gange'">
                        <eq5d_walk_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_walk_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Personlig stell'">
                        <eq5d_care_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_care_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Vanlige gjøremål '">
                        <eq5d_adl_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_adl_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Smerter/ ubehag'">
                        <eq5d_pain_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_pain_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Angst/ depresjon'">
                        <eq5d_depr_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eq5d_depr_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Søvn'">
                        <qol15D_q5_sleep_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </qol15D_q5_sleep_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Livskraft'">
                        <qol15D_q14_vital_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </qol15D_q14_vital_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor mye smerter har du hatt den SISTE UKEN?'">
                        <oreb_q2_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </oreb_q2_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hode'">
                        <painsite_head_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_head_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Nakke'">
                        <painsite_neck_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_neck_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Skuldre'">
                        <painsite_shou_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_shou_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Øvre del rygg'">
                        <painsite_uback_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_uback_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Albuer'">
                        <painsite_elbow_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_elbow_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Håndledd / hender'">
                        <painsite_hand_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_hand_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hofter / lår'">
                        <painsite_thigh_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_thigh_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Korsrygg'">
                        <painsite_lback_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_lback_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Ankler / føtter'">
                        <painsite_feet_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_feet_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Knær'">
                        <painsite_knee_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_knee_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Antall affiserte regioner:'">
                        <painsite_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </painsite_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Er smerten kontinuerlig'">
                        <pain_continuous_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_continuous_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Er smerten av varierende intensitet?'">
                        <pain_vary_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_vary_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvordan vil du beskrive smertevariasjonen best?'">
                        <pain_variation_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_variation_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor ofte har du vanligvis disse smertene?'">
                        <pain_freq_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pain_freq_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Antall medisiner du bruker daglig:'">
                        <medic_number_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </medic_number_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Arbeidsevne - Fysioprim'">
                        <work_ability_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </work_ability_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Mosjon og Trening Fysioprim'">
                        <pa_sum_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_sum_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor ofte driver du mosjon eller trening?'">
                        <pa_freq_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_freq_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor hardt mosjonerer / trener du?'">
                        <pa_int_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_int_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Hvor lenge holder du på hver gang?'">
                        <pa_dur_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pa_dur_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Gjennomsnitt:'">
                        <hscl10_score_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_score_3>
                    </xsl:if>

                    <xsl:if test="@name = '1. Plutselig skremt uten grunn'">
                        <hscl10_q1_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q1_3>
                    </xsl:if>

                    <xsl:if test="@name = '2. Føler du deg svimmel eller kraftesløs'">
                        <hscl10_q2_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q2_3>
                    </xsl:if>

                    <xsl:if test="@name = '3. Føler deg anspent eller opphisset'">
                        <hscl10_q3_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q3_3>
                    </xsl:if>

                    <xsl:if test="@name = '4. Anfall av redsel eller panikk'">
                        <hscl10_q4_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q4_3>
                    </xsl:if>

                    <xsl:if test="@name = '5. Anklager deg selv for ting'">
                        <hscl10_q5_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q5_3>
                    </xsl:if>

                    <xsl:if test="@name = '6. Vanskelig for å sove'">
                        <hscl10_q6_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q6_3>
                    </xsl:if>

                    <xsl:if test="@name = '7. Følelse av håpløshet mhp. framtiden'">
                        <hscl10_q7_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q7_3>
                    </xsl:if>

                    <xsl:if test="@name = '8. Føler deg nedfor'">
                        <hscl10_q8_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q8_3>
                    </xsl:if>

                    <xsl:if test="@name = '9. Føler at alt krever stor anstrengelse'">
                        <hscl10_q9_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q9_3>
                    </xsl:if>

                    <xsl:if test="@name = '10. Føler at du ikke er noe verd'">
                        <hscl10_q10_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </hscl10_q10_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Siden behandling startet er jeg :'">
                        <gpe_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </gpe_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'I hvilken grad har du hatt nytte av fysioterapibehandling?'">
                        <treat_benefit_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_benefit_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'I hvilken grad ble dine forventninger til fysioterapi innfridd?'">
                        <treat_expect_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_expect_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Jeg ble hørt og forstått av min fysioterapeut?'">
                        <patient_physio_q1_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </patient_physio_q1_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Jeg har høy tiltro til min fysioterapeuts faglige kvalifikasjoner'">
                        <patient_physio_q2_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </patient_physio_q2_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Samlet sett er jeg svært godt fornøyd med oppfølgingen jeg fikk av min terapeut'">
                        <patient_physio_q3_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </patient_physio_q3_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Har du gjennomført øvelsene som anbefalt av fysioterapeuten?'">
                        <compliance_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </compliance_3>
                    </xsl:if>

                    <xsl:if test="@name = 'SPØRRESKJEMA OM MUSKEL- OG SKJELETTHELSE (MSK-HQ)'">
                        <mskhq_score_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_score_3>
                    </xsl:if>

                    <xsl:if test="@name = '1. Smerte/stivhet i løpet av dagen'">
                        <mskhq_q1_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q1_3>
                    </xsl:if>

                    <xsl:if test="@name = '2. Smerter/stivhet om natten.'">
                        <mskhq_q2_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q2_3>
                    </xsl:if>

                    <xsl:if test="@name = '3. Gange'">
                        <mskhq_q3_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q3_3>
                    </xsl:if>

                    <xsl:if test="@name = '4. Vaske seg/påkledning'">
                        <mskhq_q4_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q4_3>
                    </xsl:if>

                    <xsl:if test="@name = '5. Fysisk aktivitetsnivå'">
                        <mskhq_q5_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q5_3>
                    </xsl:if>

                    <xsl:if test="@name = '6. Arbeid/daglige aktiviteter'">
                        <mskhq_q6_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q6_3>
                    </xsl:if>

                    <xsl:if test="@name = '7. Sosiale aktiviteter og hobbyer'">
                        <mskhq_q7_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q7_3>
                    </xsl:if>

                    <xsl:if test="@name = '8. Behov for hjelp'">
                        <mskhq_q8_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q8_3>
                    </xsl:if>

                    <xsl:if test="@name = '9. Søvn'">
                        <mskhq_q9_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q9_3>
                    </xsl:if>

                    <xsl:if test="@name = '10. Utmattelse eller lite energi '">
                        <mskhq_q10_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q10_3>
                    </xsl:if>

                    <xsl:if test="@name = '11. Følelsesmessig velvære'">
                        <mskhq_q11_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q11_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = '12. Forståelse av dine helseplager og pågående behandling'">
                        <mskhq_q12_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q12_3>
                    </xsl:if>

                    <xsl:if test="@name = '13. Tro på å mestre symptomene dine'">
                        <mskhq_q13_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q13_3>
                    </xsl:if>

                    <xsl:if test="@name = '14. Generell påvirkning'">
                        <mskhq_q14_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_q14_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Fysisk aktivitetsnivå'">
                        <mskhq_pa_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </mskhq_pa_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Pain Self-Efficacy Questionnaire (PSEQ-2)'">
                        <pseq_score_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_score_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = '1. Jeg kan gjøre noen former for arbeid til tross for smerten (arbeid inkluderer husarbeid og lønnet/ulønnet arbeid)'">
                        <pseq_q1_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q1_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = '2. Jeg kan leve en normal livsstil til tross for smerten'">
                        <pseq_q2_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </pseq_q2_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Mål '">
                        <eval_goal_p_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eval_goal_p_3>
                    </xsl:if>

                    <xsl:if
                        test="@name = 'Hva tror du har vært den viktigste faktoren for bedring/ manglende bedring for dine plager (En til to setninger)'">
                        <treatmentfactor_patient_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treatmentfactor_patient_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_act_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_act_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 1/small'">
                        <psfs1_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs1_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_act_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_act_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 2/small'">
                        <psfs2_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs2_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_act_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_act_3>
                    </xsl:if>

                    <xsl:if test="@name = 'smallAktivitet 3/small'">
                        <psfs3_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </psfs3_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Mål'">
                        <eval_goal_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </eval_goal_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Fortsetter behandlingen?'">
                        <treat_contin_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_contin_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Antall konsultasjoner totalt'">
                        <consultation_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </consultation_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Viktig bakgrunnsinformasjon for behandlingsutfall'">
                        <treat_describe_important_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_describe_important_3>
                    </xsl:if>

                    <xsl:if test="@name = 'Pasienten har fått følgende behandling:'">
                        <treat_describe_treat_3>
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <xsl:value-of select="answer[@selected = 'true']"/>
                                </xsl:when>
                                <xsl:otherwise>nan</xsl:otherwise>
                            </xsl:choose>
                        </treat_describe_treat_3>
                    </xsl:if>

                </xsl:for-each>
            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>