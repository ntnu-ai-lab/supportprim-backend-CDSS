<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>

    <xsl:template match="/">
        <patient>

            <xsl:for-each select="//form/groups/group">

                <xsl:for-each select="question">
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Revmatisk sykdom'">
                                 <como_ra_1><xsl:value-of select="./@selected"/></como_ra_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Hjertesykdom'">
                                 <como_heart_1><xsl:value-of select="./@selected"/></como_heart_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Astma/ lungesykdom'">
                                 <como_asthma_1><xsl:value-of select="./@selected"/></como_asthma_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Nevrologisk sykdom (f.eks tidligere hjerneslag eller MS)'">
                                 <como_neuro_1><xsl:value-of select="./@selected"/></como_neuro_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Kreft/ tidligere kreft'">
                                 <como_cancer_1><xsl:value-of select="./@selected"/></como_cancer_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Psykiske plager'">
                                 <como_psych_1><xsl:value-of select="./@selected"/></como_psych_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Demens/ kognitiv svikt'">
                                 <como_dementhia_1><xsl:value-of select="./@selected"/></como_dementhia_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Osteoporose'">
                                 <como_osteoporosis_1><xsl:value-of select="./@selected"/></como_osteoporosis_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Diabetes'">
                                 <como_diabetes_1><xsl:value-of select="./@selected"/></como_diabetes_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Magesmerter'">
                                 <como_stomach_pain_1><xsl:value-of select="./@selected"/></como_stomach_pain_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Hodepine/svimmelhet'">
                                 <como_headache_1><xsl:value-of select="./@selected"/></como_headache_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Utmattelse'">
                                 <como_fatigue_1><xsl:value-of select="./@selected"/></como_fatigue_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Annet'">
                                 <como_other_1><xsl:value-of select="./@selected"/></como_other_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Andre nåværende sykdommer eller plager:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Beskriv annet:'">
                                 <como_other_spec_1><xsl:value-of select="./@selected"/></como_other_spec_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='I lønnet arbeid'">
                                 <employ_paid_1><xsl:value-of select="./@selected"/></employ_paid_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Skoleelev / Student'">
                                 <employ_stud_1><xsl:value-of select="./@selected"/></employ_stud_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Pensjonist'">
                                 <employ_retired_1><xsl:value-of select="./@selected"/></employ_retired_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Uføretrygdet'">
                                 <employ_disability_1><xsl:value-of select="./@selected"/></employ_disability_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Sykmeldt'">
                                 <employ_sick_1><xsl:value-of select="./@selected"/></employ_sick_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Arbeidsavklaring'">
                                 <employ_assess_1><xsl:value-of select="./@selected"/></employ_assess_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Ulønnet arbeid (eks. hjemme/frivillighetsarbeid)'">
                                 <employ_unpaid_1><xsl:value-of select="./@selected"/></employ_unpaid_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Arbeidsledig'">
                                 <employ_unempl_1><xsl:value-of select="./@selected"/></employ_unempl_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Foreldrepermisjon'">
                                 <employ_parentleave_1><xsl:value-of select="./@selected"/></employ_parentleave_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Angi stillingsprosent'">
                                 <employ_paidp_1><xsl:value-of select="./@selected"/></employ_paidp_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Angi uføregrad i prosent'">
                                 <employ_disabilityp_1><xsl:value-of select="./@selected"/></employ_disabilityp_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hva er din arbeidssituasjon nå? '">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Angi sykmeldingsgrad i prosent'">
                                 <employ_sickp_1><xsl:value-of select="./@selected"/></employ_sickp_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hvilke medisiner?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Paracetamol Paracet Panodil Pimol Pinex eller Perfalgan'">
                                 <medic_type_paracet_1><xsl:value-of select="./@selected"/></medic_type_paracet_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hvilke medisiner?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Albyl-E (500 mg) Aspirin Globoid eller Dispril'">
                                 <medic_type_albyle_1><xsl:value-of select="./@selected"/></medic_type_albyle_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hvilke medisiner?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Ibuprofen Ibux Ibuprox Ibumetin Brufen Naproxen Naprosyn eller Ladox'">
                                 <medic_type_ibux_1><xsl:value-of select="./@selected"/></medic_type_ibux_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Hvilke medisiner?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Andre'">
                                 <medic_type_other_1><xsl:value-of select="./@selected"/></medic_type_other_1>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Paracetamol Paracet Panodil Pimol Pinex eller Perfalgan'">
                                 <medic_paracet_3><xsl:value-of select="./@selected"/></medic_paracet_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Albyl-E (500 mg) Aspirin Globoid eller Dispril'">
                                 <medic_albyle_3><xsl:value-of select="./@selected"/></medic_albyle_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Ibuprofen Ibux Ibuprox Ibumetin Brufen Naproxen Naprosyn eller Ladox'">
                                 <medic_ibux_3><xsl:value-of select="./@selected"/></medic_ibux_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Andre'">
                                 <medic_other_3><xsl:value-of select="./@selected"/></medic_other_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Har du brukt noen medisiner mot smerte i løpet av den siste uken?'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Hvilke andre medisiner?'">
                                 <medic_other_spec_3><xsl:value-of select="./@selected"/></medic_other_spec_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='I lønnet arbeid'">
                                 <employ_paid_3><xsl:value-of select="./@selected"/></employ_paid_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Skoleelev / Student'">
                                 <employ_stud_3><xsl:value-of select="./@selected"/></employ_stud_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Pensjonist'">
                                 <employ_retired_3><xsl:value-of select="./@selected"/></employ_retired_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Uføretrygdet'">
                                 <employ_disability_3><xsl:value-of select="./@selected"/></employ_disability_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Sykmeldt'">
                                 <employ_sick_3><xsl:value-of select="./@selected"/></employ_sick_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Arbeidsavklaring'">
                                 <employ_assess_3><xsl:value-of select="./@selected"/></employ_assess_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Ulønnet arbeid (eks. hjemme/frivillighetsarbeid)'">
                                 <employ_unpaid_3><xsl:value-of select="./@selected"/></employ_unpaid_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Arbeidsledig'">
                                 <employ_unempl_3><xsl:value-of select="./@selected"/></employ_unempl_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Angi stillingsprosent'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Foreldrepermisjon'">
                                 <employ_parentleave_3><xsl:value-of select="./@selected"/></employ_parentleave_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Angi stillingsprosent'">
                                 <employ_situation_paidp_3><xsl:value-of select="./@selected"/></employ_situation_paidp_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Angi uføregrad i prosent'">
                                 <employ_situation_disabilityp_3><xsl:value-of select="./@selected"/></employ_situation_disabilityp_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Oppfølging arbeidssituasjon'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Angi sykmeldingsgrad i prosent'">
                                 <employ_situation_sickp_3><xsl:value-of select="./@selected"/></employ_situation_sickp_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Behov opphørt'">
                                 <end_cause_patient_3><xsl:value-of select="./@selected"/></end_cause_patient_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Effektstagnasjon'">
                                 <end_cause_effect_3><xsl:value-of select="./@selected"/></end_cause_effect_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Ingen effekt'">
                                 <end_cause_noeffect_3><xsl:value-of select="./@selected"/></end_cause_noeffect_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Pasienten ønsker ikke videre behandling'">
                                 <end_cause_followup_3><xsl:value-of select="./@selected"/></end_cause_followup_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Flyttet ut av kommune'">
                                 <end_cause_move_3><xsl:value-of select="./@selected"/></end_cause_move_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Forverret medsinsk tilstand'">
                                 <end_cause_medic_3><xsl:value-of select="./@selected"/></end_cause_medic_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Død'">
                                 <end_cause_death_3><xsl:value-of select="./@selected"/></end_cause_death_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                    <xsl:if test="@name = 'Årsak til avslutning:'">
                        <xsl:for-each select="answer">
                            <xsl:if test=".='Annet'">
                                 <end_cause_other_3><xsl:value-of select="./@selected"/></end_cause_other_3>
                             </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
            
                </xsl:for-each>


            </xsl:for-each>
        </patient>
    </xsl:template>
</xsl:stylesheet>

