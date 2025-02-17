<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form">
                <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                    <xsl:for-each select="groups/group">
                        <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                            <xsl:for-each select="question">
                                <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                    <xsl:for-each select="answer">
                                        <xsl:if test=". = 'Fleksjon'">
                                            <back_move_rom_flex_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_rom_flex_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Ekstensjon'">
                                            <back_move_rom_ext_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_rom_ext_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Rotasjon'">
                                            <back_move_rom_rot_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_rom_rot_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Lateralfleksjon'">
                                            <back_move_rom_lat_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_rom_lat_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Ikke reduserte bevegelsesutslag'">
                                            <back_move_rom_not_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_rom_not_1>
                                        </xsl:if>
                                    </xsl:for-each>
                                </xsl:if>
                                <xsl:if test="@name = 'Smerter ved'">
                                    <xsl:for-each select="answer">
                                        <xsl:if test=". = 'Fleksjon'">
                                            <back_move_pain_flex_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_pain_flex_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Ekstensjon'">
                                            <back_move_pain_ext_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_pain_ext_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Rotasjon'">
                                            <back_move_pain_rot_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_pain_rot_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Lateralfleksjon'">
                                            <back_move_pain_lat_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_pain_lat_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Ingen smerter ved aktive bevgelsesutslag'">
                                            <back_move_pain_not_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_move_pain_not_1>
                                        </xsl:if>
                                    </xsl:for-each>
                                </xsl:if>                                
                            </xsl:for-each>
                        </xsl:if>                        
                        <xsl:if test="@name = 'Nevrologiske funn '">
                            <xsl:for-each select="question">
                                <xsl:if test="@name = 'Nevrologiske funn '">
                                    <xsl:for-each select="answer">
                                        <xsl:if test=". = 'Ikke aktuelt'">
                                            <back_neuro_not_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_neuro_not_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Redusert kraft'">
                                            <back_neuro_pow_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_neuro_pow_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Redusert sensibilitet'">
                                            <back_neuro_sens_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_neuro_sens_1>
                                        </xsl:if>
                                        <xsl:if test=". = 'Unormale reflekser'">
                                            <back_neuro_reflex_1>
                                                <xsl:value-of select="./@selected"/>
                                            </back_neuro_reflex_1>
                                        </xsl:if>
                                    </xsl:for-each>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
            </xsl:for-each>
            
            <!--<xsl:for-each select="//form/groups/group">

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

            </xsl:for-each>-->
        </patient>
    </xsl:template>
</xsl:stylesheet>