<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form/groups/group">

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <neck_move_rom_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_rom_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <neck_move_rom_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_rom_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Rotasjon'">
                                    <neck_move_rom_rot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_rom_rot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Lateralfleksjon'">
                                    <neck_move_rom_lat_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_rom_lat_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <neck_move_rom_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_rom_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <neck_move_pain_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_pain_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <neck_move_pain_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_pain_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Rotasjon'">
                                    <neck_move_pain_rot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_pain_rot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Lateralfleksjon'">
                                    <neck_move_pain_lat_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_pain_lat_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ingen smerter ved aktive bevgelsesutslag'">
                                    <neck_move_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_move_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Angi nevrologiske funn'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke aktuelt'">
                                    <neck_neuro_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_neuro_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Angi nevrologiske funn'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Redusert kraft'">
                                    <neck_neuro_pow_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_neuro_pow_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Angi nevrologiske funn'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Redusert sensibilitet'">
                                    <neck_neuro_sens_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_neuro_sens_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Nakkeundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Angi nevrologiske funn'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Unormale reflekser'">
                                    <neck_neuro_reflex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </neck_neuro_reflex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <shoulder_move_rom_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_rom_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Abduksjon'">
                                    <shoulder_move_rom_abd_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_rom_abd_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Adduksjon'">
                                    <shoulder_move_rom_add_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_rom_add_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Utadrotasjon'">
                                    <shoulder_move_rom_extrot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_rom_extrot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Innadrotasjon'">
                                    <shoulder_move_rom_introt_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_rom_introt_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <shoulder_move_rom_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_rom_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <shoulder_move_pain_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_pain_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Abduksjon'">
                                    <shoulder_move_pain_abd_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_pain_abd_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Adduksjon'">
                                    <shoulder_move_pain_add_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_pain_add_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Utadrotasjon'">
                                    <shoulder_move_pain_extrot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_pain_extrot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Innadrotasjon'">
                                    <shoulder_move_pain_introt_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_pain_introt_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Skulderundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <shoulder_move_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </shoulder_move_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <back_move_rom_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_rom_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <back_move_rom_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_rom_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Rotasjon'">
                                    <back_move_rom_rot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_rom_rot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Lateralfleksjon'">
                                    <back_move_rom_lat_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_rom_lat_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <back_move_rom_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_rom_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <back_move_pain_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_pain_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <back_move_pain_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_pain_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Rotasjon'">
                                    <back_move_pain_rot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_pain_rot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Lateralfleksjon'">
                                    <back_move_pain_lat_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_pain_lat_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ingen smerter ved aktive bevgelsesutslag'">
                                    <back_move_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_move_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Nevrologiske funn '">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke aktuelt'">
                                    <back_neuro_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_neuro_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Nevrologiske funn '">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Redusert kraft'">
                                    <back_neuro_pow_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_neuro_pow_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Nevrologiske funn '">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Redusert sensibilitet'">
                                    <back_neuro_sens_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_neuro_sens_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Nevrologiske funn '">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Unormale reflekser'">
                                    <back_neuro_reflex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </back_neuro_reflex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <hip_move_rom_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <hip_move_rom_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Abduksjon'">
                                    <hip_move_rom_abd_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_abd_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Adduksjon'">
                                    <hip_move_rom_add_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_add_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Utadrotasjon'">
                                    <hip_move_rom_extrot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_extrot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Innadrotasjon'">
                                    <hip_move_rom_introt_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_introt_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <hip_move_rom_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_rom_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <hip_move_pain_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <hip_move_pain_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Abduksjon'">
                                    <hip_move_pain_abd_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_abd_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Adduksjon'">
                                    <hip_move_pain_add_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_add_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Utadrotasjon'">
                                    <hip_move_pain_extrot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_extrot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Innadrotasjon'">
                                    <hip_move_pain_introt_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_introt_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ingen smerter ved aktive bevegelser'">
                                    <hip_move_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <hip_move_passive_rom_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <hip_move_passive_rom_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Abduksjon'">
                                    <hip_move_passive_rom_abd_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_abd_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Adduksjon'">
                                    <hip_move_passive_rom_add_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_add_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Utadrotasjon'">
                                    <hip_move_passive_rom_extrot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_extrot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Innadrotasjon'">
                                    <hip_move_passive_rom_introt_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_introt_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <hip_move_passive_rom_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_rom_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <hip_move_passive_pain_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <hip_move_passive_pain_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Abduksjon'">
                                    <hip_move_passive_pain_abd_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_abd_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Adduksjon'">
                                    <hip_move_passive_pain_add_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_add_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Utadrotasjon'">
                                    <hip_move_passive_pain_extrot_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_extrot_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Innadrotasjon'">
                                    <hip_move_passive_pain_introt_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_introt_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ingen smerter ved aktive bevegelser'">
                                    <hip_move_passive_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_move_passive_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke aktuelt'">
                                    <hip_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Lateralt'">
                                    <hip_pain_lat_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_pain_lat_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Medial/lyske'">
                                    <hip_pain_med_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_pain_med_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Posteriort'">
                                    <hip_pain_post_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_pain_post_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Hofteundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Anteriort'">
                                    <hip_pain_ant_1>
                                        <xsl:value-of select="./@selected"/>
                                    </hip_pain_ant_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <knee_move_rom_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_move_rom_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <knee_move_rom_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_move_rom_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <knee_move_rom_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_move_rom_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <knee_move_pain_flex_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_move_pain_flex_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <knee_move_pain_ext_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_move_pain_ext_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ingen smerter ved aktive bevegelser'">
                                    <knee_move_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_move_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <knee_passive_flexlim_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_passive_flexlim_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <knee_passive_extlim_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_passive_extlim_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                    <knee_passive_notlim_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_passive_notlim_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Fleksjon'">
                                    <knee_passive_flexpain_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_passive_flexpain_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ekstensjon'">
                                    <knee_passive_extpain_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_passive_extpain_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="@name = 'Kneundersøkelse'">
                    <xsl:for-each select="question">
                        <xsl:if test="@name = 'Smerter ved'">
                            <xsl:for-each select="answer">
                                <xsl:if test=". = 'Ingen smerter ved passive bevegelser'">
                                    <knee_passive_pain_not_1>
                                        <xsl:value-of select="./@selected"/>
                                    </knee_passive_pain_not_1>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>