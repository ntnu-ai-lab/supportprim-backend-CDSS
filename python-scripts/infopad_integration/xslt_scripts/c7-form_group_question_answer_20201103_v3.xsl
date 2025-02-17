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
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Psykiske plager'">
                                                <como_psych_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_psych_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Demens/ kognitiv svikt'">
                                                <como_dementhia_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_dementhia_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Osteoporose'">
                                                <como_osteoporosis_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_osteoporosis_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Diabetes'">
                                                <como_diabetes_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_diabetes_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Magesmerter'">
                                                <como_stomach_pain_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_stomach_pain_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Hodepine/svimmelhet'">
                                                <como_headache_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_headache_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utmattelse'">
                                                <como_fatigue_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_fatigue_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Annet'">
                                                <como_other_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_other_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Bakgrunnsdata '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Beskriv annet:'">
                                                <como_other_spec_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </como_other_spec_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='I lønnet arbeid'">
                                                <employ_paid_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_paid_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Skoleelev / Student'">
                                                <employ_stud_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_stud_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Pensjonist'">
                                                <employ_retired_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_retired_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Uføretrygdet'">
                                                <employ_disability_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_disability_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Sykmeldt'">
                                                <employ_sick_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_sick_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Arbeidsavklaring'">
                                                <employ_assess_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_assess_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ulønnet arbeid (eks. hjemme/frivillighetsarbeid)'">
                                                <employ_unpaid_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_unpaid_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Arbeidsledig'">
                                                <employ_unempl_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_unempl_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Bakgrunnsdata - supportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Foreldrepermisjon'">
                                                <employ_parentleave_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_parentleave_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hvilke medisiner?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Paracetamol, Paracet, Panodil, Pimol, Pinex eller Perfalgan'">
                                                <medic_type_paracet_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_type_paracet_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hvilke medisiner?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Albyl-E (500 mg), Aspirin, Globoid eller Dispril'">
                                                <medic_type_albyle_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_type_albyle_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hvilke medisiner?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ibuprofen, Ibux, Ibuprox, Ibumetin, Brufen, Naproxen, Naprosyn eller Ladox'">
                                                <medic_type_ibux_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_type_ibux_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961490'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Hvilke medisiner?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Andre'">
                                                <medic_type_other_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_type_other_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <neck_move_rom_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_rom_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <neck_move_rom_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_rom_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Rotasjon'">
                                                <neck_move_rom_rot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_rom_rot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Lateralfleksjon'">
                                                <neck_move_rom_lat_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_rom_lat_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <neck_move_rom_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_rom_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <neck_move_pain_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_pain_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <neck_move_pain_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_pain_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Rotasjon'">
                                                <neck_move_pain_rot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_pain_rot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Lateralfleksjon'">
                                                <neck_move_pain_lat_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_pain_lat_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ingen smerter ved aktive bevgelsesutslag'">
                                                <neck_move_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_move_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi nevrologiske funn'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke aktuelt'">
                                                <neck_neuro_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_neuro_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi nevrologiske funn'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Redusert kraft'">
                                                <neck_neuro_pow_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_neuro_pow_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi nevrologiske funn'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Redusert sensibilitet'">
                                                <neck_neuro_sens_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_neuro_sens_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nakkeundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi nevrologiske funn'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Unormale reflekser'">
                                                <neck_neuro_reflex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </neck_neuro_reflex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <shoulder_move_rom_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_rom_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Abduksjon'">
                                                <shoulder_move_rom_abd_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_rom_abd_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Adduksjon'">
                                                <shoulder_move_rom_add_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_rom_add_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utadrotasjon'">
                                                <shoulder_move_rom_extrot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_rom_extrot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Innadrotasjon'">
                                                <shoulder_move_rom_introt_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_rom_introt_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <shoulder_move_rom_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_rom_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <shoulder_move_pain_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_pain_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Abduksjon'">
                                                <shoulder_move_pain_abd_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_pain_abd_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Adduksjon'">
                                                <shoulder_move_pain_add_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_pain_add_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utadrotasjon'">
                                                <shoulder_move_pain_extrot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_pain_extrot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Innadrotasjon'">
                                                <shoulder_move_pain_introt_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_pain_introt_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Skulderundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <shoulder_move_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </shoulder_move_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <back_move_rom_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_rom_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <back_move_rom_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_rom_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Rotasjon'">
                                                <back_move_rom_rot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_rom_rot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Lateralfleksjon'">
                                                <back_move_rom_lat_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_rom_lat_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <back_move_rom_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_rom_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <back_move_pain_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_pain_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <back_move_pain_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_pain_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Rotasjon'">
                                                <back_move_pain_rot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_pain_rot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Lateralfleksjon'">
                                                <back_move_pain_lat_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_pain_lat_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'RYGGUNDERSØKELSE'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ingen smerter ved aktive bevgelsesutslag'">
                                                <back_move_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_move_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nevrologiske funn '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Nevrologiske funn '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke aktuelt'">
                                                <back_neuro_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_neuro_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nevrologiske funn '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Nevrologiske funn '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Redusert kraft'">
                                                <back_neuro_pow_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_neuro_pow_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nevrologiske funn '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Nevrologiske funn '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Redusert sensibilitet'">
                                                <back_neuro_sens_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </back_neuro_sens_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = 'Ryggundersøkelse - SupportPRIM'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Nevrologiske funn '">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Nevrologiske funn '">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Unormale reflekser'">
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
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <hip_move_rom_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <hip_move_rom_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Abduksjon'">
                                                <hip_move_rom_abd_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_abd_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Adduksjon'">
                                                <hip_move_rom_add_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_add_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utadrotasjon'">
                                                <hip_move_rom_extrot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_extrot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Innadrotasjon'">
                                                <hip_move_rom_introt_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_introt_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <hip_move_rom_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_rom_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <hip_move_pain_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <hip_move_pain_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Abduksjon'">
                                                <hip_move_pain_abd_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_abd_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Adduksjon'">
                                                <hip_move_pain_add_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_add_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utadrotasjon'">
                                                <hip_move_pain_extrot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_extrot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Innadrotasjon'">
                                                <hip_move_pain_introt_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_introt_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ingen smerter ved aktive bevegelser'">
                                                <hip_move_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <hip_move_passive_rom_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <hip_move_passive_rom_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Abduksjon'">
                                                <hip_move_passive_rom_abd_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_abd_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Adduksjon'">
                                                <hip_move_passive_rom_add_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_add_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utadrotasjon'">
                                                <hip_move_passive_rom_extrot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_extrot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Innadrotasjon'">
                                                <hip_move_passive_rom_introt_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_introt_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <hip_move_passive_rom_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_rom_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <hip_move_passive_pain_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <hip_move_passive_pain_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Abduksjon'">
                                                <hip_move_passive_pain_abd_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_abd_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Adduksjon'">
                                                <hip_move_passive_pain_add_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_add_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Utadrotasjon'">
                                                <hip_move_passive_pain_extrot_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_extrot_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Innadrotasjon'">
                                                <hip_move_passive_pain_introt_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_introt_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ingen smerter ved aktive bevegelser'">
                                                <hip_move_passive_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_move_passive_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke aktuelt'">
                                                <hip_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Lateralt'">
                                                <hip_pain_lat_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_pain_lat_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Medial/lyske'">
                                                <hip_pain_med_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_pain_med_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Posteriort'">
                                                <hip_pain_post_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_pain_post_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Hofteundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smertelokalisasjon hofte (pasientens vurdering)'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Anteriort'">
                                                <hip_pain_ant_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </hip_pain_ant_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <knee_move_rom_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_move_rom_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <knee_move_rom_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_move_rom_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <knee_move_rom_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_move_rom_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <knee_move_pain_flex_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_move_pain_flex_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <knee_move_pain_ext_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_move_pain_ext_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ingen smerter ved aktive bevegelser'">
                                                <knee_move_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_move_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <knee_passive_flexlim_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_passive_flexlim_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <knee_passive_extlim_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_passive_extlim_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Reduserte bevegelsesutslag i'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ikke reduserte bevegelsesutslag'">
                                                <knee_passive_notlim_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_passive_notlim_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Fleksjon'">
                                                <knee_passive_flexpain_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_passive_flexpain_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ekstensjon'">
                                                <knee_passive_extpain_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_passive_extpain_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249961492'">
                    <xsl:if test="@Name = '_unknown_'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Kneundersøkelse'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Smerter ved'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ingen smerter ved passive bevegelser'">
                                                <knee_passive_pain_not_1>
                                                    <xsl:value-of select="./@selected"/>
                                                </knee_passive_pain_not_1>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Paracetamol Paracet Panodil Pimol Pinex eller Perfalgan'">
                                                <medic_paracet_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_paracet_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Albyl-E (500 mg) Aspirin Globoid eller Dispril'">
                                                <medic_albyle_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_albyle_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ibuprofen Ibux Ibuprox Ibumetin Brufen Naproxen Naprosyn eller Ladox'">
                                                <medic_ibux_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_ibux_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Andre'">
                                                <medic_other_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_other_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Medisinbruk - Fysioprim'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'medisinbruk'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Hvilke andre medisiner?'">
                                                <medic_other_spec_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </medic_other_spec_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='I lønnet arbeid'">
                                                <employ_paid_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_paid_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Skoleelev / Student'">
                                                <employ_stud_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_stud_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Pensjonist'">
                                                <employ_retired_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_retired_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Uføretrygdet'">
                                                <employ_disability_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_disability_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Sykmeldt'">
                                                <employ_sick_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_sick_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Arbeidsavklaring'">
                                                <employ_assess_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_assess_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Ulønnet arbeid (eks. hjemme/frivillighetsarbeid)'">
                                                <employ_unpaid_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_unpaid_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Arbeidsledig'">
                                                <employ_unempl_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_unempl_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Angi stillingsprosent'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Foreldrepermisjon'">
                                                <employ_parentleave_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_parentleave_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Angi stillingsprosent'">
                                                <employ_situation_paidp_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_situation_paidp_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Angi uføregrad i prosent'">
                                                <employ_situation_disabilityp_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_situation_disabilityp_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
                    
                <xsl:if test="@taskid = '249966782'">
                    <xsl:if test="@Name = 'Arbeidssituasjon - FYSIOPRIM - Dynamisk'">
                        <xsl:for-each select="groups/group">
                            <xsl:if test="@name = 'Arbeidssituasjon'">
                                <xsl:for-each select="question">
                                    <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
                                        <xsl:for-each select="answer">
                                            <xsl:if test=".='Angi sykmeldingsgrad i prosent'">
                                                <employ_situation_sickp_3>
                                                    <xsl:value-of select="./@selected"/>
                                                </employ_situation_sickp_3>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:if>
        
            <!-- Code for condition : 7  ......................... END -->
            </xsl:for-each>
        </patientDetails>
    </xsl:template>
</xsl:stylesheet>