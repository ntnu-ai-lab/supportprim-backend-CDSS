<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form/groups/group">

                <xsl:if test="@name = '1. Redusert aktivitet, hvile, avlastning'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_rest_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_rest_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '2. Økt fysisk aktivitet'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_pa_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_pa_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '3. Å Motvirke frykt for bevegelse og aktivitet'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_fear_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_fear_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '4. Egenmestring av plagene i hverdagen'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_selfman_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_selfman_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if
                    test="@name = '5. Arbeid og tilpasning av arbeid, inkludert oppgaver i hjemmet'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_work_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_work_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '6. Søvn'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_sleep_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_sleep_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '7. Vektendring (økt eller redusert)'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_weight_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_weight_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '8. Sosial deltakelse'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_social_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_social_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '9. Mestring av stress, angst, depresjon e.l'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_distress_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_distress_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '10. Forventninger, prognose og forløp'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_advice_expect_3>
                                    <xsl:value-of select="answer"/>
                                </treat_advice_expect_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '1. Spesifikke styrkeøvelser'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_active_strength_3>
                                    <xsl:value-of select="answer"/>
                                </treat_active_strength_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '2. Utholdenhetstrening'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_active_cardio_3>
                                    <xsl:value-of select="answer"/>
                                </treat_active_cardio_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '3. Spesifikke balanse- eller koordinasjonsøvelser'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_active_balance_3>
                                    <xsl:value-of select="answer"/>
                                </treat_active_balance_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '4. Spesifikke muskeltøyninger eller leddmobilisering'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_active_stretch_3>
                                    <xsl:value-of select="answer"/>
                                </treat_active_stretch_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if
                    test="@name = '5. Spesifikk trening for postural kontroll, holdning eller avspenning'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_active_posture_3>
                                    <xsl:value-of select="answer"/>
                                </treat_active_posture_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '6. Generelle øvelser og tøyninger'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_active_general_3>
                                    <xsl:value-of select="answer"/>
                                </treat_active_general_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '1. Spesifikke oppgaver eller øvelser hjemme (skriftlig)'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_home_3>
                                    <xsl:value-of select="answer"/>
                                </treat_home_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '1. Massasje og bløtdelsbehandling, inkludert tverrmassasje'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_passive_massage_3>
                                    <xsl:value-of select="answer"/>
                                </treat_passive_massage_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '2. Leddmobilisering og -manipulasjon'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_passive_joint_3>
                                    <xsl:value-of select="answer"/>
                                </treat_passive_joint_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '3. Tøyninger'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_passive_stretch_3>
                                    <xsl:value-of select="answer"/>
                                </treat_passive_stretch_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '4. Triggerpunkt-, nålebehandling eller akupunktur'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_passive_trigger_3>
                                    <xsl:value-of select="answer"/>
                                </treat_passive_trigger_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = '5. Trykkbølgebehandling'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_passive_shockwave_3>
                                    <xsl:value-of select="answer"/>
                                </treat_passive_shockwave_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Individuell behandling'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_setting_individual_3>
                                    <xsl:value-of select="answer"/>
                                </treat_setting_individual_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Behandling i gruppe'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_setting_group_3>
                                    <xsl:value-of select="answer"/>
                                </treat_setting_group_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Egentrening'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_setting_self_3>
                                    <xsl:value-of select="answer"/>
                                </treat_setting_self_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Behandlingen har foregått hos'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_physio_3>
                                    <xsl:value-of select="answer"/>
                                </treat_physio_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Fastlege'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_discuss_gp_3>
                                    <xsl:value-of select="answer"/>
                                </treat_discuss_gp_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Spesialist'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_discuss_specialist_3>
                                    <xsl:value-of select="answer"/>
                                </treat_discuss_specialist_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Psykolog'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_discuss_psycho_3>
                                    <xsl:value-of select="answer"/>
                                </treat_discuss_psycho_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Annen fysioterapeut'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_discuss_physio_3>
                                    <xsl:value-of select="answer"/>
                                </treat_discuss_physio_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Annen helseprofesjon'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_discuss_other_3>
                                    <xsl:value-of select="answer"/>
                                </treat_discuss_other_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'NAV'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_contact_nav_3>
                                    <xsl:value-of select="answer"/>
                                </treat_contact_nav_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Bedriftshelsetjenesten'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_contact_occup_3>
                                    <xsl:value-of select="answer"/>
                                </treat_contact_occup_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Arbeidsgiver'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_contact_employ_3>
                                    <xsl:value-of select="answer"/>
                                </treat_contact_employ_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Familie'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_contact_family_3>
                                    <xsl:value-of select="answer"/>
                                </treat_contact_family_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if
                    test="@name = 'Beskriv tiltak som pasienten har fått så godt at en fysioterapikollega kan gjenta behandlingen mest mulig likt deg på sin pasient.'">
                    <xsl:for-each select="question">
                        <xsl:choose>
                            <xsl:when test="answer/@selected = 'true'">
                                <treat_describe_3>
                                    <xsl:value-of select="answer"/>
                                </treat_describe_3>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:if>

            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>