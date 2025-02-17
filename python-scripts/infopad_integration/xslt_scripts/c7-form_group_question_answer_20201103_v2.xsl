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
                
                
                <!-- Code for condition : 7  START ....................... -->
                
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hvordan vil du beskrive arbeidet ditt (lønnet eller ulønnet)?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='infopad_var_not_defined'">
                                                <work_type_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </work_type_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                
                <!-- Code for condition : 7  ......................... END -->
                
<!--                <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
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
            </xsl:for-each>-->
            
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
                </xsl:if>-->


            </xsl:for-each>
        </patientDetails>
    </xsl:template>
</xsl:stylesheet>