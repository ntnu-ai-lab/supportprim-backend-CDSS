<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form/groups/group">

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag i vektbærende stilling'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <neck_move_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </neck_move_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Spurling test positiv'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <neck_spurling_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </neck_spurling_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Ev. kommentar nevrologiske funn'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <neck_comment_neuro_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </neck_comment_neuro_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Konklusjon av nakkevurdering '">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <neck_conclusion_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </neck_conclusion_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Ev. kommentarer:'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <neck_comment_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </neck_comment_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_move_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_move_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Redusert passiv utadrotasjon '">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_passive_extrot_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_passive_extrot_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smertebue '">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_painfularc_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_painfularc_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved Hawkins test'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_hawkins_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_hawkins_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved isometrisk abduksjon'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_iso_abdpain_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_iso_abdpain_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved isometrisk utadrotasjon'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_iso_extrotpain_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_iso_extrotpain_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Nedsatt kraft ved isometrisk abduksjon'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_iso_abdpow_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_iso_abdpow_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Nedsatt kraft ved isometrisk utadrotasjon'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_iso_extrotpow_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_iso_extrotpow_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Eventuelt kommentarer:'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <shoulder_comment_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </shoulder_comment_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Ryggundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle  aktive bevegelsesutslag i stående stilling'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <back_move_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </back_move_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Ryggundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Positiv Straight leg raise (Lasegues prøve) '">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <back_slr_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </back_slr_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Ryggundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Kommentar nevrologiske funn'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <back_comment_neuro_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </back_comment_neuro_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Ryggundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Ev. andre kommentarer:'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <back_comment_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </back_comment_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag '">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <hip_move_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </hip_move_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle passive bevegelsesutslag '">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <hip_move_passive_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </hip_move_passive_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Positiv FABER/Patricks test'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <hip_faber_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </hip_faber_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Positiv FADDIR test (passiv fleksjon adduksjon og innadrotasjon)'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <hip_faddir_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </hip_faddir_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Positiv Trendelenburg'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <hip_trend_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </hip_trend_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle aktive bevegelsesutslag'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_move_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_move_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Reduserte og/eller smertefulle passive bevegelsesutslag'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_move_passive_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_move_passive_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Er det hydrops i kneet'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_hydrops_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_hydrops_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Har pasienten vært utsatt for et traume'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_traumatic_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_traumatic_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Positiv Pivot Shift test'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_pivot_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_pivot_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Positiv Lachman test uten endepunkt'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_lachman_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_lachman_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Positiv Sag test'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_sag_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_sag_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Gjenkjennbar smerte ved McMurrays test'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_mcmurray_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_mcmurray_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Gjenkjennbar smerte ved palpasjon i leddspalten'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_palp_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_palp_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Forøket valgus ved stress test på ekstendert kne'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_valgus_ext_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_valgus_ext_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Forøket valgus ved stress test på 20 graders flektert kne'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_valgus_flex_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_valgus_flex_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Forøket varus ved stress test på ekstendert kne'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_varus_ext_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_varus_ext_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if
                            test="@name = 'Forøket varus ved stress test på 20 graders flektert kne'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_varus_flex_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_varus_flex_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Eventuelt kommentarer:'">
                            <xsl:choose>
                                <xsl:when test="answer/@selected = 'true'">
                                    <knee_comment_1>
                                        <xsl:value-of select="answer[@selected = 'true']"/>
                                    </knee_comment_1>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>