unit PIC16F18446;

// Define hardware
{$SET PIC_MODEL    = 'PIC16F18446'}
{$SET PIC_MAXFREQ  = 32000000}
{$SET PIC_NPINS    = 20}
{$SET PIC_NUMBANKS = 64}
{$SET PIC_NUMPAGES = 1}
{$SET PIC_MAXFLASH = 16384}

interface
var
  INDF0                  : byte absolute $0000;
  INDF1                  : byte absolute $0001;
  PCL                    : byte absolute $0002;
  STATUS                 : byte absolute $0003;
  STATUS_TO              : bit  absolute STATUS.6;
  STATUS_PD              : bit  absolute STATUS.5;
  STATUS_Z               : bit  absolute STATUS.4;
  STATUS_DC              : bit  absolute STATUS.3;
  STATUS_C               : bit  absolute STATUS.2;
  FSR0L                  : byte absolute $0004;
  FSR0H                  : byte absolute $0005;
  FSR1L                  : byte absolute $0006;
  FSR1H                  : byte absolute $0007;
  BSR                    : byte absolute $0008;
  BSR_BSR5               : bit  absolute BSR.5;
  BSR_BSR4               : bit  absolute BSR.4;
  BSR_BSR3               : bit  absolute BSR.3;
  BSR_BSR2               : bit  absolute BSR.2;
  BSR_BSR1               : bit  absolute BSR.1;
  BSR_BSR0               : bit  absolute BSR.0;
  WREG                   : byte absolute $0009;
  PCLATH                 : byte absolute $000A;
  INTCON                 : byte absolute $000B;
  INTCON_GIE             : bit  absolute INTCON.7;
  INTCON_PEIE            : bit  absolute INTCON.6;
  INTCON_INTEDG          : bit  absolute INTCON.5;
  PORTA                  : byte absolute $000C;
  PORTA_RA5              : bit  absolute PORTA.6;
  PORTA_RA4              : bit  absolute PORTA.5;
  PORTA_RA3              : bit  absolute PORTA.4;
  PORTA_RA2              : bit  absolute PORTA.3;
  PORTA_RA1              : bit  absolute PORTA.2;
  PORTA_RA0              : bit  absolute PORTA.1;
  PORTB                  : byte absolute $000D;
  PORTB_RB7              : bit  absolute PORTB.7;
  PORTB_RB6              : bit  absolute PORTB.6;
  PORTB_RB5              : bit  absolute PORTB.5;
  PORTB_RB4              : bit  absolute PORTB.4;
  PORTC                  : byte absolute $000E;
  PORTC_RC7              : bit  absolute PORTC.7;
  PORTC_RC6              : bit  absolute PORTC.6;
  PORTC_RC5              : bit  absolute PORTC.5;
  PORTC_RC4              : bit  absolute PORTC.4;
  PORTC_RC3              : bit  absolute PORTC.3;
  PORTC_RC2              : bit  absolute PORTC.2;
  PORTC_RC1              : bit  absolute PORTC.1;
  PORTC_RC0              : bit  absolute PORTC.0;
  TRISA                  : byte absolute $0012;
  TRISA_TRISA5           : bit  absolute TRISA.5;
  TRISA_TRISA4           : bit  absolute TRISA.4;
  TRISA_TRISA3           : bit  absolute TRISA.3;
  TRISA_TRISA2           : bit  absolute TRISA.2;
  TRISA_TRISA1           : bit  absolute TRISA.1;
  TRISA_TRISA0           : bit  absolute TRISA.0;
  TRISB                  : byte absolute $0013;
  TRISB_TRISB7           : bit  absolute TRISB.7;
  TRISB_TRISB6           : bit  absolute TRISB.6;
  TRISB_TRISB5           : bit  absolute TRISB.5;
  TRISB_TRISB4           : bit  absolute TRISB.4;
  TRISC                  : byte absolute $0014;
  TRISC_TRISC7           : bit  absolute TRISC.7;
  TRISC_TRISC6           : bit  absolute TRISC.6;
  TRISC_TRISC5           : bit  absolute TRISC.5;
  TRISC_TRISC4           : bit  absolute TRISC.4;
  TRISC_TRISC3           : bit  absolute TRISC.3;
  TRISC_TRISC2           : bit  absolute TRISC.2;
  TRISC_TRISC1           : bit  absolute TRISC.1;
  TRISC_TRISC0           : bit  absolute TRISC.0;
  LATA                   : byte absolute $0018;
  LATA_LATA5             : bit  absolute LATA.5;
  LATA_LATA4             : bit  absolute LATA.4;
  LATA_LATA3             : bit  absolute LATA.3;
  LATA_LATA2             : bit  absolute LATA.2;
  LATA_LATA1             : bit  absolute LATA.1;
  LATA_LATA0             : bit  absolute LATA.0;
  LATB                   : byte absolute $0019;
  LATB_LATB7             : bit  absolute LATB.7;
  LATB_LATB6             : bit  absolute LATB.6;
  LATB_LATB5             : bit  absolute LATB.5;
  LATB_LATB4             : bit  absolute LATB.4;
  LATC                   : byte absolute $001A;
  LATC_LATC7             : bit  absolute LATC.7;
  LATC_LATC6             : bit  absolute LATC.6;
  LATC_LATC5             : bit  absolute LATC.5;
  LATC_LATC4             : bit  absolute LATC.4;
  LATC_LATC3             : bit  absolute LATC.3;
  LATC_LATC2             : bit  absolute LATC.2;
  LATC_LATC1             : bit  absolute LATC.1;
  LATC_LATC0             : bit  absolute LATC.0;
  ADLTHL                 : byte absolute $008C;
  ADLTHL_ADLTH7          : bit  absolute ADLTHL.7;
  ADLTHL_ADLTH6          : bit  absolute ADLTHL.6;
  ADLTHL_ADLTH5          : bit  absolute ADLTHL.5;
  ADLTHL_ADLTH4          : bit  absolute ADLTHL.4;
  ADLTHL_ADLTH3          : bit  absolute ADLTHL.3;
  ADLTHL_ADLTH2          : bit  absolute ADLTHL.2;
  ADLTHL_ADLTH1          : bit  absolute ADLTHL.1;
  ADLTHL_ADLTH0          : bit  absolute ADLTHL.0;
  ADLTHH                 : byte absolute $008D;
  ADLTHH_ADLTH15         : bit  absolute ADLTHH.7;
  ADLTHH_ADLTH14         : bit  absolute ADLTHH.6;
  ADLTHH_ADLTH13         : bit  absolute ADLTHH.5;
  ADLTHH_ADLTH12         : bit  absolute ADLTHH.4;
  ADLTHH_ADLTH11         : bit  absolute ADLTHH.3;
  ADLTHH_ADLTH10         : bit  absolute ADLTHH.2;
  ADLTHH_ADLTH9          : bit  absolute ADLTHH.1;
  ADLTHH_ADLTH8          : bit  absolute ADLTHH.0;
  ADUTHL                 : byte absolute $008E;
  ADUTHL_ADUTH7          : bit  absolute ADUTHL.7;
  ADUTHL_ADUTH6          : bit  absolute ADUTHL.6;
  ADUTHL_ADUTH5          : bit  absolute ADUTHL.5;
  ADUTHL_ADUTH4          : bit  absolute ADUTHL.4;
  ADUTHL_ADUTH3          : bit  absolute ADUTHL.3;
  ADUTHL_ADUTH2          : bit  absolute ADUTHL.2;
  ADUTHL_ADUTH1          : bit  absolute ADUTHL.1;
  ADUTHL_ADUTH0          : bit  absolute ADUTHL.0;
  ADUTHH                 : byte absolute $008F;
  ADUTHH_ADUTH15         : bit  absolute ADUTHH.7;
  ADUTHH_ADUTH14         : bit  absolute ADUTHH.6;
  ADUTHH_ADUTH13         : bit  absolute ADUTHH.5;
  ADUTHH_ADUTH12         : bit  absolute ADUTHH.4;
  ADUTHH_ADUTH11         : bit  absolute ADUTHH.3;
  ADUTHH_ADUTH10         : bit  absolute ADUTHH.2;
  ADUTHH_ADUTH9          : bit  absolute ADUTHH.1;
  ADUTHH_ADUTH8          : bit  absolute ADUTHH.0;
  ADERRL                 : byte absolute $0090;
  ADERRL_ADERR7          : bit  absolute ADERRL.7;
  ADERRL_ADERR6          : bit  absolute ADERRL.6;
  ADERRL_ADERR5          : bit  absolute ADERRL.5;
  ADERRL_ADERR4          : bit  absolute ADERRL.4;
  ADERRL_ADERR3          : bit  absolute ADERRL.3;
  ADERRL_ADERR2          : bit  absolute ADERRL.2;
  ADERRL_ADERR1          : bit  absolute ADERRL.1;
  ADERRL_ADERR0          : bit  absolute ADERRL.0;
  ADERRH                 : byte absolute $0091;
  ADERRH_ADERR15         : bit  absolute ADERRH.7;
  ADERRH_ADERR14         : bit  absolute ADERRH.6;
  ADERRH_ADERR13         : bit  absolute ADERRH.5;
  ADERRH_ADERR12         : bit  absolute ADERRH.4;
  ADERRH_ADERR11         : bit  absolute ADERRH.3;
  ADERRH_ADERR10         : bit  absolute ADERRH.2;
  ADERRH_ADERR9          : bit  absolute ADERRH.1;
  ADERRH_ADERR8          : bit  absolute ADERRH.0;
  ADSTPTL                : byte absolute $0092;
  ADSTPTL_ADSTPT7        : bit  absolute ADSTPTL.7;
  ADSTPTL_ADSTPT6        : bit  absolute ADSTPTL.6;
  ADSTPTL_ADSTPT5        : bit  absolute ADSTPTL.5;
  ADSTPTL_ADSTPT4        : bit  absolute ADSTPTL.4;
  ADSTPTL_ADSTPT3        : bit  absolute ADSTPTL.3;
  ADSTPTL_ADSTPT2        : bit  absolute ADSTPTL.2;
  ADSTPTL_ADSTPT1        : bit  absolute ADSTPTL.1;
  ADSTPTL_ADSTPT0        : bit  absolute ADSTPTL.0;
  ADSTPTH                : byte absolute $0093;
  ADSTPTH_ADSTPT15       : bit  absolute ADSTPTH.7;
  ADSTPTH_ADSTPT14       : bit  absolute ADSTPTH.6;
  ADSTPTH_ADSTPT13       : bit  absolute ADSTPTH.5;
  ADSTPTH_ADSTPT12       : bit  absolute ADSTPTH.4;
  ADSTPTH_ADSTPT11       : bit  absolute ADSTPTH.3;
  ADSTPTH_ADSTPT10       : bit  absolute ADSTPTH.2;
  ADSTPTH_ADSTPT9        : bit  absolute ADSTPTH.1;
  ADSTPTH_ADSTPT8        : bit  absolute ADSTPTH.0;
  ADFLTRL                : byte absolute $0094;
  ADFLTRL_ADFLTR7        : bit  absolute ADFLTRL.7;
  ADFLTRL_ADFLTR6        : bit  absolute ADFLTRL.6;
  ADFLTRL_ADFLTR5        : bit  absolute ADFLTRL.5;
  ADFLTRL_ADFLTR4        : bit  absolute ADFLTRL.4;
  ADFLTRL_ADFLTR3        : bit  absolute ADFLTRL.3;
  ADFLTRL_ADFLTR2        : bit  absolute ADFLTRL.2;
  ADFLTRL_ADFLTR1        : bit  absolute ADFLTRL.1;
  ADFLTRL_ADFLTR0        : bit  absolute ADFLTRL.0;
  ADFLTRH                : byte absolute $0095;
  ADFLTRH_ADFLTR15       : bit  absolute ADFLTRH.7;
  ADFLTRH_ADFLTR14       : bit  absolute ADFLTRH.6;
  ADFLTRH_ADFLTR13       : bit  absolute ADFLTRH.5;
  ADFLTRH_ADFLTR12       : bit  absolute ADFLTRH.4;
  ADFLTRH_ADFLTR11       : bit  absolute ADFLTRH.3;
  ADFLTRH_ADFLTR10       : bit  absolute ADFLTRH.2;
  ADFLTRH_ADFLTR9        : bit  absolute ADFLTRH.1;
  ADFLTRH_ADFLTR8        : bit  absolute ADFLTRH.0;
  ADACCL                 : byte absolute $0096;
  ADACCL_ADACC7          : bit  absolute ADACCL.7;
  ADACCL_ADACC6          : bit  absolute ADACCL.6;
  ADACCL_ADACC5          : bit  absolute ADACCL.5;
  ADACCL_ADACC4          : bit  absolute ADACCL.4;
  ADACCL_ADACC3          : bit  absolute ADACCL.3;
  ADACCL_ADACC2          : bit  absolute ADACCL.2;
  ADACCL_ADACC1          : bit  absolute ADACCL.1;
  ADACCL_ADACC0          : bit  absolute ADACCL.0;
  ADACCH                 : byte absolute $0097;
  ADACCH_ADACC15         : bit  absolute ADACCH.7;
  ADACCH_ADACC14         : bit  absolute ADACCH.6;
  ADACCH_ADACC13         : bit  absolute ADACCH.5;
  ADACCH_ADACC12         : bit  absolute ADACCH.4;
  ADACCH_ADACC11         : bit  absolute ADACCH.3;
  ADACCH_ADACC10         : bit  absolute ADACCH.2;
  ADACCH_ADACC9          : bit  absolute ADACCH.1;
  ADACCH_ADACC8          : bit  absolute ADACCH.0;
  ADACCU                 : byte absolute $0098;
  ADACCU_ADACC23         : bit  absolute ADACCU.7;
  ADACCU_ADACC22         : bit  absolute ADACCU.6;
  ADACCU_ADACC21         : bit  absolute ADACCU.5;
  ADACCU_ADACC20         : bit  absolute ADACCU.4;
  ADACCU_ADACC19         : bit  absolute ADACCU.3;
  ADACCU_ADACC18         : bit  absolute ADACCU.2;
  ADACCU_ADACC17         : bit  absolute ADACCU.1;
  ADACCU_ADACC16         : bit  absolute ADACCU.0;
  ADCNT                  : byte absolute $0099;
  ADCNT_ADCNT7           : bit  absolute ADCNT.7;
  ADCNT_ADCNT6           : bit  absolute ADCNT.6;
  ADCNT_ADCNT5           : bit  absolute ADCNT.5;
  ADCNT_ADCNT4           : bit  absolute ADCNT.4;
  ADCNT_ADCNT3           : bit  absolute ADCNT.3;
  ADCNT_ADCNT2           : bit  absolute ADCNT.2;
  ADCNT_ADCNT1           : bit  absolute ADCNT.1;
  ADCNT_ADCNT0           : bit  absolute ADCNT.0;
  ADRPT                  : byte absolute $009A;
  ADRPT_ADRPT7           : bit  absolute ADRPT.7;
  ADRPT_ADRPT6           : bit  absolute ADRPT.6;
  ADRPT_ADRPT5           : bit  absolute ADRPT.5;
  ADRPT_ADRPT4           : bit  absolute ADRPT.4;
  ADRPT_ADRPT3           : bit  absolute ADRPT.3;
  ADRPT_ADRPT2           : bit  absolute ADRPT.2;
  ADRPT_ADRPT1           : bit  absolute ADRPT.1;
  ADRPT_ADRPT0           : bit  absolute ADRPT.0;
  ADPREVL                : byte absolute $009B;
  ADPREVL_ADPREV7        : bit  absolute ADPREVL.7;
  ADPREVL_ADPREV6        : bit  absolute ADPREVL.6;
  ADPREVL_ADPREV5        : bit  absolute ADPREVL.5;
  ADPREVL_ADPREV4        : bit  absolute ADPREVL.4;
  ADPREVL_ADPREV3        : bit  absolute ADPREVL.3;
  ADPREVL_ADPREV2        : bit  absolute ADPREVL.2;
  ADPREVL_ADPREV1        : bit  absolute ADPREVL.1;
  ADPREVL_ADPREV0        : bit  absolute ADPREVL.0;
  ADPREVH                : byte absolute $009C;
  ADPREVH_ADPREV15       : bit  absolute ADPREVH.7;
  ADPREVH_ADPREV14       : bit  absolute ADPREVH.6;
  ADPREVH_ADPREV13       : bit  absolute ADPREVH.5;
  ADPREVH_ADPREV12       : bit  absolute ADPREVH.4;
  ADPREVH_ADPREV11       : bit  absolute ADPREVH.3;
  ADPREVH_ADPREV10       : bit  absolute ADPREVH.2;
  ADPREVH_ADPREV9        : bit  absolute ADPREVH.1;
  ADPREVH_ADPREV8        : bit  absolute ADPREVH.0;
  ADRESL                 : byte absolute $009D;
  ADRESL_ADRES7          : bit  absolute ADRESL.7;
  ADRESL_ADRES6          : bit  absolute ADRESL.6;
  ADRESL_ADRES5          : bit  absolute ADRESL.5;
  ADRESL_ADRES4          : bit  absolute ADRESL.4;
  ADRESL_ADRES3          : bit  absolute ADRESL.3;
  ADRESL_ADRES2          : bit  absolute ADRESL.2;
  ADRESL_ADRES1          : bit  absolute ADRESL.1;
  ADRESL_ADRES0          : bit  absolute ADRESL.0;
  ADRESH                 : byte absolute $009E;
  ADRESH_ADRES15         : bit  absolute ADRESH.7;
  ADRESH_ADRES14         : bit  absolute ADRESH.6;
  ADRESH_ADRES13         : bit  absolute ADRESH.5;
  ADRESH_ADRES12         : bit  absolute ADRESH.4;
  ADRESH_ADRES11         : bit  absolute ADRESH.3;
  ADRESH_ADRES10         : bit  absolute ADRESH.2;
  ADRESH_ADRES9          : bit  absolute ADRESH.1;
  ADRESH_ADRES8          : bit  absolute ADRESH.0;
  ADPCH                  : byte absolute $009F;
  ADPCH_ADPCH5           : bit  absolute ADPCH.5;
  ADPCH_ADPCH4           : bit  absolute ADPCH.4;
  ADPCH_ADPCH3           : bit  absolute ADPCH.3;
  ADPCH_ADPCH2           : bit  absolute ADPCH.2;
  ADPCH_ADPCH1           : bit  absolute ADPCH.1;
  ADPCH_ADPCH0           : bit  absolute ADPCH.0;
  ADACQL                 : byte absolute $010C;
  ADACQL_ADACQ7          : bit  absolute ADACQL.7;
  ADACQL_ADACQ6          : bit  absolute ADACQL.6;
  ADACQL_ADACQ5          : bit  absolute ADACQL.5;
  ADACQL_ADACQ4          : bit  absolute ADACQL.4;
  ADACQL_ADACQ3          : bit  absolute ADACQL.3;
  ADACQL_ADACQ2          : bit  absolute ADACQL.2;
  ADACQL_ADACQ1          : bit  absolute ADACQL.1;
  ADACQL_ADACQ0          : bit  absolute ADACQL.0;
  ADACQH                 : byte absolute $010D;
  ADACQH_ADACQ12         : bit  absolute ADACQH.4;
  ADACQH_ADACQ11         : bit  absolute ADACQH.3;
  ADACQH_ADACQ10         : bit  absolute ADACQH.2;
  ADACQH_ADACQ9          : bit  absolute ADACQH.1;
  ADACQH_ADACQ8          : bit  absolute ADACQH.0;
  ADCAP                  : byte absolute $010E;
  ADCAP_ADCAP4           : bit  absolute ADCAP.4;
  ADCAP_ADCAP3           : bit  absolute ADCAP.3;
  ADCAP_ADCAP2           : bit  absolute ADCAP.2;
  ADCAP_ADCAP1           : bit  absolute ADCAP.1;
  ADCAP_ADCAP0           : bit  absolute ADCAP.0;
  ADPREL                 : byte absolute $010F;
  ADPREL_PRE7            : bit  absolute ADPREL.7;
  ADPREL_PRE6            : bit  absolute ADPREL.6;
  ADPREL_PRE5            : bit  absolute ADPREL.5;
  ADPREL_PRE4            : bit  absolute ADPREL.4;
  ADPREL_PRE3            : bit  absolute ADPREL.3;
  ADPREL_PRE2            : bit  absolute ADPREL.2;
  ADPREL_PRE1            : bit  absolute ADPREL.1;
  ADPREL_PRE0            : bit  absolute ADPREL.0;
  ADPREH                 : byte absolute $0110;
  ADPREH_PRE12           : bit  absolute ADPREH.4;
  ADPREH_PRE11           : bit  absolute ADPREH.3;
  ADPREH_PRE10           : bit  absolute ADPREH.2;
  ADPREH_PRE9            : bit  absolute ADPREH.1;
  ADPREH_PRE8            : bit  absolute ADPREH.0;
  ADCON0                 : byte absolute $0111;
  ADCON0_ADCAL           : bit  absolute ADCON0.7;
  ADCON0_ON              : bit  absolute ADCON0.6;
  ADCON0_CONT            : bit  absolute ADCON0.5;
  ADCON0_CS              : bit  absolute ADCON0.4;
  ADCON0_FM1             : bit  absolute ADCON0.3;
  ADCON0_FM0             : bit  absolute ADCON0.2;
  ADCON0_GO              : bit  absolute ADCON0.1;
  ADCON1                 : byte absolute $0112;
  ADCON1_PPOL            : bit  absolute ADCON1.6;
  ADCON1_IPEN            : bit  absolute ADCON1.5;
  ADCON1_GPOL            : bit  absolute ADCON1.4;
  ADCON1_GAOE            : bit  absolute ADCON1.3;
  ADCON1_GBOE            : bit  absolute ADCON1.2;
  ADCON1_DSEN            : bit  absolute ADCON1.1;
  ADCON2                 : byte absolute $0113;
  ADCON2_PSIS            : bit  absolute ADCON2.7;
  ADCON2_ADCRS2          : bit  absolute ADCON2.6;
  ADCON2_ADCRS1          : bit  absolute ADCON2.5;
  ADCON2_ADCRS0          : bit  absolute ADCON2.4;
  ADCON2_ACLR            : bit  absolute ADCON2.3;
  ADCON2_ADMD2           : bit  absolute ADCON2.2;
  ADCON2_ADMD1           : bit  absolute ADCON2.1;
  ADCON2_ADMD0           : bit  absolute ADCON2.0;
  ADCON3                 : byte absolute $0114;
  ADCON3_ADCALC2         : bit  absolute ADCON3.6;
  ADCON3_ADCALC1         : bit  absolute ADCON3.5;
  ADCON3_ADCALC0         : bit  absolute ADCON3.4;
  ADCON3_SOI             : bit  absolute ADCON3.3;
  ADCON3_ADTMD2          : bit  absolute ADCON3.2;
  ADCON3_ADTMD1          : bit  absolute ADCON3.1;
  ADCON3_ADTMD0          : bit  absolute ADCON3.0;
  ADSTAT                 : byte absolute $0115;
  ADSTAT_OV              : bit  absolute ADSTAT.7;
  ADSTAT_UTHR            : bit  absolute ADSTAT.6;
  ADSTAT_LTHR            : bit  absolute ADSTAT.5;
  ADSTAT_MATH            : bit  absolute ADSTAT.4;
  ADSTAT_ADSTAT2         : bit  absolute ADSTAT.3;
  ADSTAT_ADSTAT1         : bit  absolute ADSTAT.2;
  ADSTAT_ADSTAT0         : bit  absolute ADSTAT.1;
  ADSTAT_STAT0           : bit  absolute ADSTAT.0;
  ADREF                  : byte absolute $0116;
  ADREF_NREF3            : bit  absolute ADREF.7;
  ADREF_NREF2            : bit  absolute ADREF.6;
  ADREF_NREF1            : bit  absolute ADREF.5;
  ADREF_NREF0            : bit  absolute ADREF.4;
  ADREF_PREF3            : bit  absolute ADREF.3;
  ADREF_PREF2            : bit  absolute ADREF.2;
  ADREF_PREF1            : bit  absolute ADREF.1;
  ADREF_PREF0            : bit  absolute ADREF.0;
  ADACT                  : byte absolute $0117;
  ADACT_ADACT4           : bit  absolute ADACT.4;
  ADACT_ADACT3           : bit  absolute ADACT.3;
  ADACT_ADACT2           : bit  absolute ADACT.2;
  ADACT_ADACT1           : bit  absolute ADACT.1;
  ADACT_ADACT0           : bit  absolute ADACT.0;
  ADCLK                  : byte absolute $0118;
  ADCLK_ADCS5            : bit  absolute ADCLK.5;
  ADCLK_ADCS4            : bit  absolute ADCLK.4;
  ADCLK_ADCS3            : bit  absolute ADCLK.3;
  ADCLK_ADCS2            : bit  absolute ADCLK.2;
  ADCLK_ADCS1            : bit  absolute ADCLK.1;
  ADCLK_ADCS0            : bit  absolute ADCLK.0;
  RC1REG                 : byte absolute $0119;
  TX1REG                 : byte absolute $011A;
  SP1BRGL                : byte absolute $011B;
  SP1BRGH                : byte absolute $011C;
  RC1STA                 : byte absolute $011D;
  RC1STA_SPEN            : bit  absolute RC1STA.7;
  RC1STA_RX9             : bit  absolute RC1STA.6;
  RC1STA_SREN            : bit  absolute RC1STA.5;
  RC1STA_CREN            : bit  absolute RC1STA.4;
  RC1STA_ADDEN           : bit  absolute RC1STA.3;
  RC1STA_FERR            : bit  absolute RC1STA.2;
  RC1STA_OERR            : bit  absolute RC1STA.1;
  RC1STA_RX9D            : bit  absolute RC1STA.0;
  TX1STA                 : byte absolute $011E;
  TX1STA_CSRC            : bit  absolute TX1STA.7;
  TX1STA_TX9             : bit  absolute TX1STA.6;
  TX1STA_TXEN            : bit  absolute TX1STA.5;
  TX1STA_SYNC            : bit  absolute TX1STA.4;
  TX1STA_SENDB           : bit  absolute TX1STA.3;
  TX1STA_BRGH            : bit  absolute TX1STA.2;
  TX1STA_TRMT            : bit  absolute TX1STA.1;
  TX1STA_TX9D            : bit  absolute TX1STA.0;
  BAUD1CON               : byte absolute $011F;
  BAUD1CON_ABDOVF        : bit  absolute BAUD1CON.6;
  BAUD1CON_RCIDL         : bit  absolute BAUD1CON.5;
  BAUD1CON_SCKP          : bit  absolute BAUD1CON.4;
  BAUD1CON_BRG16         : bit  absolute BAUD1CON.3;
  BAUD1CON_WUE           : bit  absolute BAUD1CON.2;
  BAUD1CON_ABDEN         : bit  absolute BAUD1CON.1;
  SSP1BUF                : byte absolute $018C;
  SSP1ADD                : byte absolute $018D;
  SSP1ADD_MSK7           : bit  absolute SSP1ADD.7;
  SSP1ADD_MSK6           : bit  absolute SSP1ADD.6;
  SSP1ADD_MSK5           : bit  absolute SSP1ADD.5;
  SSP1ADD_MSK4           : bit  absolute SSP1ADD.4;
  SSP1ADD_MSK3           : bit  absolute SSP1ADD.3;
  SSP1ADD_MSK2           : bit  absolute SSP1ADD.2;
  SSP1ADD_MSK1           : bit  absolute SSP1ADD.1;
  SSP1ADD_MSK0           : bit  absolute SSP1ADD.0;
  SSP1MSK                : byte absolute $018E;
  SSP1STAT               : byte absolute $018F;
  SSP1STAT_SMP           : bit  absolute SSP1STAT.7;
  SSP1STAT_CKE           : bit  absolute SSP1STAT.6;
  SSP1STAT_D_nA          : bit  absolute SSP1STAT.5;
  SSP1STAT_P             : bit  absolute SSP1STAT.4;
  SSP1STAT_S             : bit  absolute SSP1STAT.3;
  SSP1STAT_R_nW          : bit  absolute SSP1STAT.2;
  SSP1STAT_UA            : bit  absolute SSP1STAT.1;
  SSP1STAT_BF            : bit  absolute SSP1STAT.0;
  SSP1CON1               : byte absolute $0190;
  SSP1CON1_WCOL          : bit  absolute SSP1CON1.7;
  SSP1CON1_SSPOV         : bit  absolute SSP1CON1.6;
  SSP1CON1_SSPEN         : bit  absolute SSP1CON1.5;
  SSP1CON1_CKP           : bit  absolute SSP1CON1.4;
  SSP1CON1_SSPM3         : bit  absolute SSP1CON1.3;
  SSP1CON1_SSPM2         : bit  absolute SSP1CON1.2;
  SSP1CON1_SSPM1         : bit  absolute SSP1CON1.1;
  SSP1CON1_SSPM0         : bit  absolute SSP1CON1.0;
  SSP1CON2               : byte absolute $0191;
  SSP1CON2_GCEN          : bit  absolute SSP1CON2.7;
  SSP1CON2_ACKSTAT       : bit  absolute SSP1CON2.6;
  SSP1CON2_ACKDT         : bit  absolute SSP1CON2.5;
  SSP1CON2_ACKEN         : bit  absolute SSP1CON2.4;
  SSP1CON2_RCEN          : bit  absolute SSP1CON2.3;
  SSP1CON2_PEN           : bit  absolute SSP1CON2.2;
  SSP1CON2_RSEN          : bit  absolute SSP1CON2.1;
  SSP1CON2_SEN           : bit  absolute SSP1CON2.0;
  SSP1CON3               : byte absolute $0192;
  SSP1CON3_ACKTIM        : bit  absolute SSP1CON3.7;
  SSP1CON3_PCIE          : bit  absolute SSP1CON3.6;
  SSP1CON3_SCIE          : bit  absolute SSP1CON3.5;
  SSP1CON3_BOEN          : bit  absolute SSP1CON3.4;
  SSP1CON3_SDAHT         : bit  absolute SSP1CON3.3;
  SSP1CON3_SBCDE         : bit  absolute SSP1CON3.2;
  SSP1CON3_AHEN          : bit  absolute SSP1CON3.1;
  SSP1CON3_DHEN          : bit  absolute SSP1CON3.0;
  SSP2BUF                : byte absolute $0196;
  SSP2ADD                : byte absolute $0197;
  SSP2MSK                : byte absolute $0198;
  SSP2STAT               : byte absolute $0199;
  SSP2CON1               : byte absolute $019A;
  SSP2CON2               : byte absolute $019B;
  SSP2CON3               : byte absolute $019C;
  TMR1L                  : byte absolute $020C;
  TMR1L_TMR1L7           : bit  absolute TMR1L.7;
  TMR1L_TMR1L6           : bit  absolute TMR1L.6;
  TMR1L_TMR1L5           : bit  absolute TMR1L.5;
  TMR1L_TMR1L4           : bit  absolute TMR1L.4;
  TMR1L_TMR1L3           : bit  absolute TMR1L.3;
  TMR1L_TMR1L2           : bit  absolute TMR1L.2;
  TMR1L_TMR1L1           : bit  absolute TMR1L.1;
  TMR1L_TMR1L0           : bit  absolute TMR1L.0;
  TMR1H                  : byte absolute $020D;
  TMR1H_TMR1H7           : bit  absolute TMR1H.7;
  TMR1H_TMR1H6           : bit  absolute TMR1H.6;
  TMR1H_TMR1H5           : bit  absolute TMR1H.5;
  TMR1H_TMR1H4           : bit  absolute TMR1H.4;
  TMR1H_TMR1H3           : bit  absolute TMR1H.3;
  TMR1H_TMR1H2           : bit  absolute TMR1H.2;
  TMR1H_TMR1H1           : bit  absolute TMR1H.1;
  TMR1H_TMR1H0           : bit  absolute TMR1H.0;
  T1CON                  : byte absolute $020E;
  T1CON_T1CKPS1          : bit  absolute T1CON.5;
  T1CON_T1CKPS0          : bit  absolute T1CON.4;
  T1CON_NOT_SYNC         : bit  absolute T1CON.3;
  T1CON_RD16             : bit  absolute T1CON.2;
  T1GCON                 : byte absolute $020F;
  T1GCON_GE              : bit  absolute T1GCON.6;
  T1GCON_GTM             : bit  absolute T1GCON.4;
  T1GCON_GSPM            : bit  absolute T1GCON.3;
  T1GCON_GGO             : bit  absolute T1GCON.2;
  T1GCON_GVAL            : bit  absolute T1GCON.1;
  T1GATE                 : byte absolute $0210;
  T1GATE_GSS4            : bit  absolute T1GATE.5;
  T1GATE_GSS3            : bit  absolute T1GATE.4;
  T1GATE_GSS2            : bit  absolute T1GATE.3;
  T1GATE_GSS1            : bit  absolute T1GATE.2;
  T1GATE_GSS0            : bit  absolute T1GATE.1;
  T1CLK                  : byte absolute $0211;
  T1CLK_T1CS4            : bit  absolute T1CLK.5;
  T1CLK_T1CS3            : bit  absolute T1CLK.4;
  T1CLK_T1CS2            : bit  absolute T1CLK.3;
  T1CLK_T1CS1            : bit  absolute T1CLK.2;
  T1CLK_T1CS0            : bit  absolute T1CLK.1;
  TMR3L                  : byte absolute $0212;
  TMR3L_TMR3L7           : bit  absolute TMR3L.7;
  TMR3L_TMR3L6           : bit  absolute TMR3L.6;
  TMR3L_TMR3L5           : bit  absolute TMR3L.5;
  TMR3L_TMR3L4           : bit  absolute TMR3L.4;
  TMR3L_TMR3L3           : bit  absolute TMR3L.3;
  TMR3L_TMR3L2           : bit  absolute TMR3L.2;
  TMR3L_TMR3L1           : bit  absolute TMR3L.1;
  TMR3L_TMR3L0           : bit  absolute TMR3L.0;
  TMR3H                  : byte absolute $0213;
  TMR3H_TMR3H7           : bit  absolute TMR3H.7;
  TMR3H_TMR3H6           : bit  absolute TMR3H.6;
  TMR3H_TMR3H5           : bit  absolute TMR3H.5;
  TMR3H_TMR3H4           : bit  absolute TMR3H.4;
  TMR3H_TMR3H3           : bit  absolute TMR3H.3;
  TMR3H_TMR3H2           : bit  absolute TMR3H.2;
  TMR3H_TMR3H1           : bit  absolute TMR3H.1;
  TMR3H_TMR3H0           : bit  absolute TMR3H.0;
  T3CON                  : byte absolute $0214;
  T3CON_T3CKPS1          : bit  absolute T3CON.5;
  T3CON_T3CKPS0          : bit  absolute T3CON.4;
  T3GCON                 : byte absolute $0215;
  T3GATE                 : byte absolute $0216;
  T3CLK                  : byte absolute $0217;
  T3CLK_T3CS4            : bit  absolute T3CLK.5;
  T3CLK_T3CS3            : bit  absolute T3CLK.4;
  T3CLK_T3CS2            : bit  absolute T3CLK.3;
  T3CLK_T3CS1            : bit  absolute T3CLK.2;
  T3CLK_T3CS0            : bit  absolute T3CLK.1;
  TMR5L                  : byte absolute $0218;
  TMR5L_TMR5L7           : bit  absolute TMR5L.7;
  TMR5L_TMR5L6           : bit  absolute TMR5L.6;
  TMR5L_TMR5L5           : bit  absolute TMR5L.5;
  TMR5L_TMR5L4           : bit  absolute TMR5L.4;
  TMR5L_TMR5L3           : bit  absolute TMR5L.3;
  TMR5L_TMR5L2           : bit  absolute TMR5L.2;
  TMR5L_TMR5L1           : bit  absolute TMR5L.1;
  TMR5L_TMR5L0           : bit  absolute TMR5L.0;
  TMR5H                  : byte absolute $0219;
  TMR5H_TMR5H7           : bit  absolute TMR5H.7;
  TMR5H_TMR5H6           : bit  absolute TMR5H.6;
  TMR5H_TMR5H5           : bit  absolute TMR5H.5;
  TMR5H_TMR5H4           : bit  absolute TMR5H.4;
  TMR5H_TMR5H3           : bit  absolute TMR5H.3;
  TMR5H_TMR5H2           : bit  absolute TMR5H.2;
  TMR5H_TMR5H1           : bit  absolute TMR5H.1;
  TMR5H_TMR5H0           : bit  absolute TMR5H.0;
  T5CON                  : byte absolute $021A;
  T5CON_T5CKPS1          : bit  absolute T5CON.5;
  T5CON_T5CKPS0          : bit  absolute T5CON.4;
  T5GCON                 : byte absolute $021B;
  T5GATE                 : byte absolute $021C;
  T5CLK                  : byte absolute $021D;
  T5CLK_T5CS4            : bit  absolute T5CLK.5;
  T5CLK_T5CS3            : bit  absolute T5CLK.4;
  T5CLK_T5CS2            : bit  absolute T5CLK.3;
  T5CLK_T5CS1            : bit  absolute T5CLK.2;
  T5CLK_T5CS0            : bit  absolute T5CLK.1;
  CCPTMRS0               : byte absolute $021E;
  CCPTMRS1               : byte absolute $021F;
  T2TMR                  : byte absolute $028C;
  T2PR                   : byte absolute $028D;
  T2CON                  : byte absolute $028E;
  T2CON_CKPS1            : bit  absolute T2CON.6;
  T2CON_CKPS0            : bit  absolute T2CON.5;
  T2CON_OUTPS3           : bit  absolute T2CON.4;
  T2CON_OUTPS2           : bit  absolute T2CON.3;
  T2CON_OUTPS1           : bit  absolute T2CON.2;
  T2CON_OUTPS0           : bit  absolute T2CON.1;
  T2CON_T2OUTPS0         : bit  absolute T2CON.0;
  T2HLT                  : byte absolute $028F;
  T2HLT_PSYNC            : bit  absolute T2HLT.7;
  T2HLT_CKPOL            : bit  absolute T2HLT.6;
  T2HLT_CKSYNC           : bit  absolute T2HLT.5;
  T2HLT_MODE4            : bit  absolute T2HLT.4;
  T2HLT_MODE3            : bit  absolute T2HLT.3;
  T2HLT_MODE2            : bit  absolute T2HLT.2;
  T2HLT_MODE1            : bit  absolute T2HLT.1;
  T2HLT_MODE0            : bit  absolute T2HLT.0;
  T2CLKCON               : byte absolute $0290;
  T2CLKCON_CS3           : bit  absolute T2CLKCON.3;
  T2CLKCON_CS2           : bit  absolute T2CLKCON.2;
  T2CLKCON_CS1           : bit  absolute T2CLKCON.1;
  T2CLKCON_CS0           : bit  absolute T2CLKCON.0;
  T2RST                  : byte absolute $0291;
  T2RST_RSEL4            : bit  absolute T2RST.4;
  T2RST_RSEL3            : bit  absolute T2RST.3;
  T2RST_RSEL2            : bit  absolute T2RST.2;
  T2RST_RSEL1            : bit  absolute T2RST.1;
  T2RST_RSEL0            : bit  absolute T2RST.0;
  T4TMR                  : byte absolute $0292;
  T4PR                   : byte absolute $0293;
  T4CON                  : byte absolute $0294;
  T4CON_T4OUTPS0         : bit  absolute T4CON.0;
  T4HLT                  : byte absolute $0295;
  T4CLKCON               : byte absolute $0296;
  T4RST                  : byte absolute $0297;
  T6TMR                  : byte absolute $0298;
  T6PR                   : byte absolute $0299;
  T6CON                  : byte absolute $029A;
  T6CON_T6OUTPS0         : bit  absolute T6CON.0;
  T6HLT                  : byte absolute $029B;
  T6CLKCON               : byte absolute $029C;
  T6RST                  : byte absolute $029D;
  ADCPCON0               : byte absolute $029F;
  ADCPCON0_CPON          : bit  absolute ADCPCON0.7;
  ADCPCON0_CPRDY         : bit  absolute ADCPCON0.6;
  CCPR1L                 : byte absolute $030C;
  CCPR1H                 : byte absolute $030D;
  CCP1CON                : byte absolute $030E;
  CCP1CON_EN             : bit  absolute CCP1CON.7;
  CCP1CON_OUT            : bit  absolute CCP1CON.6;
  CCP1CON_FMT            : bit  absolute CCP1CON.5;
  CCP1CAP                : byte absolute $030F;
  CCP1CAP_CTS2           : bit  absolute CCP1CAP.3;
  CCP1CAP_CTS1           : bit  absolute CCP1CAP.2;
  CCP1CAP_CTS0           : bit  absolute CCP1CAP.1;
  CCPR2L                 : byte absolute $0310;
  CCPR2H                 : byte absolute $0311;
  CCP2CON                : byte absolute $0312;
  CCP2CAP                : byte absolute $0313;
  CCPR3L                 : byte absolute $0314;
  CCPR3H                 : byte absolute $0315;
  CCP3CON                : byte absolute $0316;
  CCP3CAP                : byte absolute $0317;
  CCPR4L                 : byte absolute $0318;
  CCPR4H                 : byte absolute $0319;
  CCP4CON                : byte absolute $031A;
  CCP4CAP                : byte absolute $031B;
  PWM6DCL                : byte absolute $038C;
  PWM6DCL_DC1            : bit  absolute PWM6DCL.7;
  PWM6DCL_DC0            : bit  absolute PWM6DCL.6;
  PWM6DCH                : byte absolute $038D;
  PWM6DCH_DC9            : bit  absolute PWM6DCH.7;
  PWM6DCH_DC8            : bit  absolute PWM6DCH.6;
  PWM6DCH_DC7            : bit  absolute PWM6DCH.5;
  PWM6DCH_DC6            : bit  absolute PWM6DCH.4;
  PWM6DCH_DC5            : bit  absolute PWM6DCH.3;
  PWM6DCH_DC4            : bit  absolute PWM6DCH.2;
  PWM6DCH_DC3            : bit  absolute PWM6DCH.1;
  PWM6DCH_DC2            : bit  absolute PWM6DCH.0;
  PWM6CON                : byte absolute $038E;
  PWM6CON_POL            : bit  absolute PWM6CON.4;
  PWM7DCL                : byte absolute $0390;
  PWM7DCH                : byte absolute $0391;
  PWM7CON                : byte absolute $0392;
  SMT1TMRL               : byte absolute $048C;
  SMT1TMRL_TMR7          : bit  absolute SMT1TMRL.7;
  SMT1TMRL_TMR6          : bit  absolute SMT1TMRL.6;
  SMT1TMRL_TMR5          : bit  absolute SMT1TMRL.5;
  SMT1TMRL_TMR4          : bit  absolute SMT1TMRL.4;
  SMT1TMRL_TMR3          : bit  absolute SMT1TMRL.3;
  SMT1TMRL_TMR2          : bit  absolute SMT1TMRL.2;
  SMT1TMRL_TMR1          : bit  absolute SMT1TMRL.1;
  SMT1TMRL_TMR0          : bit  absolute SMT1TMRL.0;
  SMT1TMRH               : byte absolute $048D;
  SMT1TMRH_TMR15         : bit  absolute SMT1TMRH.7;
  SMT1TMRH_TMR14         : bit  absolute SMT1TMRH.6;
  SMT1TMRH_TMR13         : bit  absolute SMT1TMRH.5;
  SMT1TMRH_TMR12         : bit  absolute SMT1TMRH.4;
  SMT1TMRH_TMR11         : bit  absolute SMT1TMRH.3;
  SMT1TMRH_TMR10         : bit  absolute SMT1TMRH.2;
  SMT1TMRH_TMR9          : bit  absolute SMT1TMRH.1;
  SMT1TMRH_TMR8          : bit  absolute SMT1TMRH.0;
  SMT1TMRU               : byte absolute $048E;
  SMT1TMRU_TMR23         : bit  absolute SMT1TMRU.7;
  SMT1TMRU_TMR22         : bit  absolute SMT1TMRU.6;
  SMT1TMRU_TMR21         : bit  absolute SMT1TMRU.5;
  SMT1TMRU_TMR20         : bit  absolute SMT1TMRU.4;
  SMT1TMRU_TMR19         : bit  absolute SMT1TMRU.3;
  SMT1TMRU_TMR18         : bit  absolute SMT1TMRU.2;
  SMT1TMRU_TMR17         : bit  absolute SMT1TMRU.1;
  SMT1TMRU_TMR16         : bit  absolute SMT1TMRU.0;
  SMT1CPRL               : byte absolute $048F;
  SMT1CPRL_CPR7          : bit  absolute SMT1CPRL.7;
  SMT1CPRL_CPR6          : bit  absolute SMT1CPRL.6;
  SMT1CPRL_CPR5          : bit  absolute SMT1CPRL.5;
  SMT1CPRL_CPR4          : bit  absolute SMT1CPRL.4;
  SMT1CPRL_CPR3          : bit  absolute SMT1CPRL.3;
  SMT1CPRL_CPR2          : bit  absolute SMT1CPRL.2;
  SMT1CPRL_CPR1          : bit  absolute SMT1CPRL.1;
  SMT1CPRL_CPR0          : bit  absolute SMT1CPRL.0;
  SMT1CPRH               : byte absolute $0490;
  SMT1CPRH_CPR15         : bit  absolute SMT1CPRH.7;
  SMT1CPRH_CPR14         : bit  absolute SMT1CPRH.6;
  SMT1CPRH_CPR13         : bit  absolute SMT1CPRH.5;
  SMT1CPRH_CPR12         : bit  absolute SMT1CPRH.4;
  SMT1CPRH_CPR11         : bit  absolute SMT1CPRH.3;
  SMT1CPRH_CPR10         : bit  absolute SMT1CPRH.2;
  SMT1CPRH_CPR9          : bit  absolute SMT1CPRH.1;
  SMT1CPRH_CPR8          : bit  absolute SMT1CPRH.0;
  SMT1CPRU               : byte absolute $0491;
  SMT1CPRU_CPR23         : bit  absolute SMT1CPRU.7;
  SMT1CPRU_CPR22         : bit  absolute SMT1CPRU.6;
  SMT1CPRU_CPR21         : bit  absolute SMT1CPRU.5;
  SMT1CPRU_CPR20         : bit  absolute SMT1CPRU.4;
  SMT1CPRU_CPR19         : bit  absolute SMT1CPRU.3;
  SMT1CPRU_CPR18         : bit  absolute SMT1CPRU.2;
  SMT1CPRU_CPR17         : bit  absolute SMT1CPRU.1;
  SMT1CPRU_CPR16         : bit  absolute SMT1CPRU.0;
  SMT1CPWL               : byte absolute $0492;
  SMT1CPWL_CPW7          : bit  absolute SMT1CPWL.7;
  SMT1CPWL_CPW6          : bit  absolute SMT1CPWL.6;
  SMT1CPWL_CPW5          : bit  absolute SMT1CPWL.5;
  SMT1CPWL_CPW4          : bit  absolute SMT1CPWL.4;
  SMT1CPWL_CPW3          : bit  absolute SMT1CPWL.3;
  SMT1CPWL_CPW2          : bit  absolute SMT1CPWL.2;
  SMT1CPWL_CPW1          : bit  absolute SMT1CPWL.1;
  SMT1CPWL_CPW0          : bit  absolute SMT1CPWL.0;
  SMT1CPWH               : byte absolute $0493;
  SMT1CPWH_CPW15         : bit  absolute SMT1CPWH.7;
  SMT1CPWH_CPW14         : bit  absolute SMT1CPWH.6;
  SMT1CPWH_CPW13         : bit  absolute SMT1CPWH.5;
  SMT1CPWH_CPW12         : bit  absolute SMT1CPWH.4;
  SMT1CPWH_CPW11         : bit  absolute SMT1CPWH.3;
  SMT1CPWH_CPW10         : bit  absolute SMT1CPWH.2;
  SMT1CPWH_CPW9          : bit  absolute SMT1CPWH.1;
  SMT1CPWH_CPW8          : bit  absolute SMT1CPWH.0;
  SMT1CPWU               : byte absolute $0494;
  SMT1CPWU_CPW23         : bit  absolute SMT1CPWU.7;
  SMT1CPWU_CPW22         : bit  absolute SMT1CPWU.6;
  SMT1CPWU_CPW21         : bit  absolute SMT1CPWU.5;
  SMT1CPWU_CPW20         : bit  absolute SMT1CPWU.4;
  SMT1CPWU_CPW19         : bit  absolute SMT1CPWU.3;
  SMT1CPWU_CPW18         : bit  absolute SMT1CPWU.2;
  SMT1CPWU_CPW17         : bit  absolute SMT1CPWU.1;
  SMT1CPWU_CPW16         : bit  absolute SMT1CPWU.0;
  SMT1PRL                : byte absolute $0495;
  SMT1PRL_PR7            : bit  absolute SMT1PRL.7;
  SMT1PRL_PR6            : bit  absolute SMT1PRL.6;
  SMT1PRL_PR5            : bit  absolute SMT1PRL.5;
  SMT1PRL_PR4            : bit  absolute SMT1PRL.4;
  SMT1PRL_PR3            : bit  absolute SMT1PRL.3;
  SMT1PRL_PR2            : bit  absolute SMT1PRL.2;
  SMT1PRL_PR1            : bit  absolute SMT1PRL.1;
  SMT1PRL_PR0            : bit  absolute SMT1PRL.0;
  SMT1PRH                : byte absolute $0496;
  SMT1PRH_PR15           : bit  absolute SMT1PRH.7;
  SMT1PRH_PR14           : bit  absolute SMT1PRH.6;
  SMT1PRH_PR13           : bit  absolute SMT1PRH.5;
  SMT1PRH_PR12           : bit  absolute SMT1PRH.4;
  SMT1PRH_PR11           : bit  absolute SMT1PRH.3;
  SMT1PRH_PR10           : bit  absolute SMT1PRH.2;
  SMT1PRH_PR9            : bit  absolute SMT1PRH.1;
  SMT1PRH_PR8            : bit  absolute SMT1PRH.0;
  SMT1PRU                : byte absolute $0497;
  SMT1PRU_PR23           : bit  absolute SMT1PRU.7;
  SMT1PRU_PR22           : bit  absolute SMT1PRU.6;
  SMT1PRU_PR21           : bit  absolute SMT1PRU.5;
  SMT1PRU_PR20           : bit  absolute SMT1PRU.4;
  SMT1PRU_PR19           : bit  absolute SMT1PRU.3;
  SMT1PRU_PR18           : bit  absolute SMT1PRU.2;
  SMT1PRU_PR17           : bit  absolute SMT1PRU.1;
  SMT1PRU_PR16           : bit  absolute SMT1PRU.0;
  SMT1CON0               : byte absolute $0498;
  SMT1CON0_STP           : bit  absolute SMT1CON0.6;
  SMT1CON0_WPOL          : bit  absolute SMT1CON0.5;
  SMT1CON0_SPOL          : bit  absolute SMT1CON0.4;
  SMT1CON0_CPOL          : bit  absolute SMT1CON0.3;
  SMT1CON0_PS1           : bit  absolute SMT1CON0.1;
  SMT1CON0_PS0           : bit  absolute SMT1CON0.0;
  SMT1CON1               : byte absolute $0499;
  SMT1CON1_REPEAT        : bit  absolute SMT1CON1.6;
  SMT1STAT               : byte absolute $049A;
  SMT1STAT_CPRUP         : bit  absolute SMT1STAT.7;
  SMT1STAT_CPWUP         : bit  absolute SMT1STAT.6;
  SMT1STAT_RST           : bit  absolute SMT1STAT.5;
  SMT1STAT_TS            : bit  absolute SMT1STAT.4;
  SMT1STAT_WS            : bit  absolute SMT1STAT.3;
  SMT1STAT_AS            : bit  absolute SMT1STAT.2;
  SMT1CLK                : byte absolute $049B;
  SMT1CLK_CSEL2          : bit  absolute SMT1CLK.3;
  SMT1CLK_CSEL1          : bit  absolute SMT1CLK.2;
  SMT1CLK_CSEL0          : bit  absolute SMT1CLK.1;
  SMT1CLK_SMT1CSEL0      : bit  absolute SMT1CLK.0;
  SMT1SIG                : byte absolute $049C;
  SMT1SIG_SSEL4          : bit  absolute SMT1SIG.4;
  SMT1SIG_SSEL3          : bit  absolute SMT1SIG.3;
  SMT1SIG_SSEL2          : bit  absolute SMT1SIG.2;
  SMT1SIG_SSEL1          : bit  absolute SMT1SIG.1;
  SMT1SIG_SSEL0          : bit  absolute SMT1SIG.0;
  SMT1WIN                : byte absolute $049D;
  SMT1WIN_WSEL4          : bit  absolute SMT1WIN.4;
  SMT1WIN_WSEL3          : bit  absolute SMT1WIN.3;
  SMT1WIN_WSEL2          : bit  absolute SMT1WIN.2;
  SMT1WIN_WSEL1          : bit  absolute SMT1WIN.1;
  SMT1WIN_WSEL0          : bit  absolute SMT1WIN.0;
  NCO1ACCL               : byte absolute $058C;
  NCO1ACCL_NCO1ACC7      : bit  absolute NCO1ACCL.7;
  NCO1ACCL_NCO1ACC6      : bit  absolute NCO1ACCL.6;
  NCO1ACCL_NCO1ACC5      : bit  absolute NCO1ACCL.5;
  NCO1ACCL_NCO1ACC4      : bit  absolute NCO1ACCL.4;
  NCO1ACCL_NCO1ACC3      : bit  absolute NCO1ACCL.3;
  NCO1ACCL_NCO1ACC2      : bit  absolute NCO1ACCL.2;
  NCO1ACCL_NCO1ACC1      : bit  absolute NCO1ACCL.1;
  NCO1ACCL_NCO1ACC0      : bit  absolute NCO1ACCL.0;
  NCO1ACCH               : byte absolute $058D;
  NCO1ACCH_NCO1ACC15     : bit  absolute NCO1ACCH.7;
  NCO1ACCH_NCO1ACC14     : bit  absolute NCO1ACCH.6;
  NCO1ACCH_NCO1ACC13     : bit  absolute NCO1ACCH.5;
  NCO1ACCH_NCO1ACC12     : bit  absolute NCO1ACCH.4;
  NCO1ACCH_NCO1ACC11     : bit  absolute NCO1ACCH.3;
  NCO1ACCH_NCO1ACC10     : bit  absolute NCO1ACCH.2;
  NCO1ACCH_NCO1ACC9      : bit  absolute NCO1ACCH.1;
  NCO1ACCH_NCO1ACC8      : bit  absolute NCO1ACCH.0;
  NCO1ACCU               : byte absolute $058E;
  NCO1ACCU_NCO1ACC19     : bit  absolute NCO1ACCU.4;
  NCO1ACCU_NCO1ACC18     : bit  absolute NCO1ACCU.3;
  NCO1ACCU_NCO1ACC17     : bit  absolute NCO1ACCU.2;
  NCO1ACCU_NCO1ACC16     : bit  absolute NCO1ACCU.1;
  NCO1INCL               : byte absolute $058F;
  NCO1INCL_NCO1INC7      : bit  absolute NCO1INCL.7;
  NCO1INCL_NCO1INC6      : bit  absolute NCO1INCL.6;
  NCO1INCL_NCO1INC5      : bit  absolute NCO1INCL.5;
  NCO1INCL_NCO1INC4      : bit  absolute NCO1INCL.4;
  NCO1INCL_NCO1INC3      : bit  absolute NCO1INCL.3;
  NCO1INCL_NCO1INC2      : bit  absolute NCO1INCL.2;
  NCO1INCL_NCO1INC1      : bit  absolute NCO1INCL.1;
  NCO1INCL_NCO1INC0      : bit  absolute NCO1INCL.0;
  NCO1INCH               : byte absolute $0590;
  NCO1INCH_NCO1INC15     : bit  absolute NCO1INCH.7;
  NCO1INCH_NCO1INC14     : bit  absolute NCO1INCH.6;
  NCO1INCH_NCO1INC13     : bit  absolute NCO1INCH.5;
  NCO1INCH_NCO1INC12     : bit  absolute NCO1INCH.4;
  NCO1INCH_NCO1INC11     : bit  absolute NCO1INCH.3;
  NCO1INCH_NCO1INC10     : bit  absolute NCO1INCH.2;
  NCO1INCH_NCO1INC9      : bit  absolute NCO1INCH.1;
  NCO1INCH_NCO1INC8      : bit  absolute NCO1INCH.0;
  NCO1INCU               : byte absolute $0591;
  NCO1INCU_NCO1INC19     : bit  absolute NCO1INCU.4;
  NCO1INCU_NCO1INC18     : bit  absolute NCO1INCU.3;
  NCO1INCU_NCO1INC17     : bit  absolute NCO1INCU.2;
  NCO1INCU_NCO1INC16     : bit  absolute NCO1INCU.1;
  NCO1CON                : byte absolute $0592;
  NCO1CON_PFM            : bit  absolute NCO1CON.1;
  NCO1CLK                : byte absolute $0593;
  NCO1CLK_PWS2           : bit  absolute NCO1CLK.7;
  NCO1CLK_PWS1           : bit  absolute NCO1CLK.6;
  NCO1CLK_PWS0           : bit  absolute NCO1CLK.5;
  NCO1CLK_CKS3           : bit  absolute NCO1CLK.4;
  NCO1CLK_CKS2           : bit  absolute NCO1CLK.3;
  NCO1CLK_CKS1           : bit  absolute NCO1CLK.2;
  NCO1CLK_CKS0           : bit  absolute NCO1CLK.1;
  TMR0L                  : byte absolute $059C;
  TMR0L_TMR0L7           : bit  absolute TMR0L.7;
  TMR0L_TMR0L6           : bit  absolute TMR0L.6;
  TMR0L_TMR0L5           : bit  absolute TMR0L.5;
  TMR0L_TMR0L4           : bit  absolute TMR0L.4;
  TMR0L_TMR0L3           : bit  absolute TMR0L.3;
  TMR0L_TMR0L2           : bit  absolute TMR0L.2;
  TMR0L_TMR0L1           : bit  absolute TMR0L.1;
  TMR0L_TMR0L0           : bit  absolute TMR0L.0;
  TMR0H                  : byte absolute $059D;
  TMR0H_TMR0H7           : bit  absolute TMR0H.7;
  TMR0H_TMR0H6           : bit  absolute TMR0H.6;
  TMR0H_TMR0H5           : bit  absolute TMR0H.5;
  TMR0H_TMR0H4           : bit  absolute TMR0H.4;
  TMR0H_TMR0H3           : bit  absolute TMR0H.3;
  TMR0H_TMR0H2           : bit  absolute TMR0H.2;
  TMR0H_TMR0H1           : bit  absolute TMR0H.1;
  TMR0H_TMR0H0           : bit  absolute TMR0H.0;
  T0CON0                 : byte absolute $059E;
  T0CON0_MD16            : bit  absolute T0CON0.5;
  T0CON0_T016BIT         : bit  absolute T0CON0.4;
  T0CON1                 : byte absolute $059F;
  T0CON1_ASYNC           : bit  absolute T0CON1.4;
  T0CON1_CKPS3           : bit  absolute T0CON1.3;
  T0CON1_CKPS2           : bit  absolute T0CON1.2;
  CWG1CLK                : byte absolute $060C;
  CWG1CLK_CLK            : bit  absolute CWG1CLK.1;
  CWG1ISM                : byte absolute $060D;
  CWG1ISM_CWG1DAT3       : bit  absolute CWG1ISM.3;
  CWG1ISM_CWG1DAT2       : bit  absolute CWG1ISM.2;
  CWG1ISM_CWG1DAT1       : bit  absolute CWG1ISM.1;
  CWG1ISM_CWG1DAT0       : bit  absolute CWG1ISM.0;
  CWG1DBR                : byte absolute $060E;
  CWG1DBR_DBR5           : bit  absolute CWG1DBR.5;
  CWG1DBR_DBR4           : bit  absolute CWG1DBR.4;
  CWG1DBR_DBR3           : bit  absolute CWG1DBR.3;
  CWG1DBR_DBR2           : bit  absolute CWG1DBR.2;
  CWG1DBR_DBR1           : bit  absolute CWG1DBR.1;
  CWG1DBR_DBR0           : bit  absolute CWG1DBR.0;
  CWG1DBF                : byte absolute $060F;
  CWG1DBF_DBF5           : bit  absolute CWG1DBF.5;
  CWG1DBF_DBF4           : bit  absolute CWG1DBF.4;
  CWG1DBF_DBF3           : bit  absolute CWG1DBF.3;
  CWG1DBF_DBF2           : bit  absolute CWG1DBF.2;
  CWG1DBF_DBF1           : bit  absolute CWG1DBF.1;
  CWG1DBF_DBF0           : bit  absolute CWG1DBF.0;
  CWG1CON0               : byte absolute $0610;
  CWG1CON0_LD            : bit  absolute CWG1CON0.6;
  CWG1CON0_CWG1MODE2     : bit  absolute CWG1CON0.2;
  CWG1CON0_CWG1MODE1     : bit  absolute CWG1CON0.1;
  CWG1CON0_CWG1MODE0     : bit  absolute CWG1CON0.0;
  CWG1CON1               : byte absolute $0611;
  CWG1CON1_IN            : bit  absolute CWG1CON1.5;
  CWG1CON1_POLD          : bit  absolute CWG1CON1.4;
  CWG1CON1_POLC          : bit  absolute CWG1CON1.3;
  CWG1CON1_POLB          : bit  absolute CWG1CON1.2;
  CWG1CON1_POLA          : bit  absolute CWG1CON1.1;
  CWG1AS0                : byte absolute $0612;
  CWG1AS0_SHUTDOWN       : bit  absolute CWG1AS0.7;
  CWG1AS0_REN            : bit  absolute CWG1AS0.6;
  CWG1AS0_CWG1LSDB1      : bit  absolute CWG1AS0.5;
  CWG1AS0_LSDB1          : bit  absolute CWG1AS0.4;
  CWG1AS0_LSDB0          : bit  absolute CWG1AS0.3;
  CWG1AS0_LSCA1          : bit  absolute CWG1AS0.2;
  CWG1AS0_LSAC0          : bit  absolute CWG1AS0.1;
  CWG1AS1                : byte absolute $0613;
  CWG1AS1_AS6E           : bit  absolute CWG1AS1.6;
  CWG1AS1_AS5E           : bit  absolute CWG1AS1.5;
  CWG1AS1_AS4E           : bit  absolute CWG1AS1.4;
  CWG1AS1_AS3E           : bit  absolute CWG1AS1.3;
  CWG1AS1_AS2E           : bit  absolute CWG1AS1.2;
  CWG1AS1_AS1E           : bit  absolute CWG1AS1.1;
  CWG1AS1_AS0E           : bit  absolute CWG1AS1.0;
  CWG1STR                : byte absolute $0614;
  CWG1STR_OVRD           : bit  absolute CWG1STR.7;
  CWG1STR_OVRC           : bit  absolute CWG1STR.6;
  CWG1STR_OVRB           : bit  absolute CWG1STR.5;
  CWG1STR_OVRA           : bit  absolute CWG1STR.4;
  CWG1STR_STRD           : bit  absolute CWG1STR.3;
  CWG1STR_STRC           : bit  absolute CWG1STR.2;
  CWG1STR_STRB           : bit  absolute CWG1STR.1;
  CWG1STR_STRA           : bit  absolute CWG1STR.0;
  CWG2CLK                : byte absolute $0616;
  CWG2ISM                : byte absolute $0617;
  CWG2ISM_CWG2DAT3       : bit  absolute CWG2ISM.3;
  CWG2ISM_CWG2DAT2       : bit  absolute CWG2ISM.2;
  CWG2ISM_CWG2DAT1       : bit  absolute CWG2ISM.1;
  CWG2ISM_CWG2DAT0       : bit  absolute CWG2ISM.0;
  CWG2DBR                : byte absolute $0618;
  CWG2DBF                : byte absolute $0619;
  CWG2CON0               : byte absolute $061A;
  CWG2CON0_CWG2MODE2     : bit  absolute CWG2CON0.2;
  CWG2CON0_CWG2MODE1     : bit  absolute CWG2CON0.1;
  CWG2CON0_CWG2MODE0     : bit  absolute CWG2CON0.0;
  CWG2CON1               : byte absolute $061B;
  CWG2AS0                : byte absolute $061C;
  CWG2AS0_CWG2LSDB1      : bit  absolute CWG2AS0.5;
  CWG2AS1                : byte absolute $061D;
  CWG2STR                : byte absolute $061E;
  PIR0                   : byte absolute $070C;
  PIR0_TMR0IF            : bit  absolute PIR0.5;
  PIR0_IOCIF             : bit  absolute PIR0.4;
  PIR0_INTF              : bit  absolute PIR0.3;
  PIR1                   : byte absolute $070D;
  PIR1_OSFIF             : bit  absolute PIR1.5;
  PIR1_CSWIF             : bit  absolute PIR1.4;
  PIR1_ADTIF             : bit  absolute PIR1.3;
  PIR1_ADIF              : bit  absolute PIR1.2;
  PIR2                   : byte absolute $070E;
  PIR2_ZCDIF             : bit  absolute PIR2.4;
  PIR2_C2IF              : bit  absolute PIR2.3;
  PIR2_C1IF              : bit  absolute PIR2.2;
  PIR3                   : byte absolute $070F;
  PIR3_RC1IF             : bit  absolute PIR3.5;
  PIR3_TX1IF             : bit  absolute PIR3.4;
  PIR3_BCL2IF            : bit  absolute PIR3.3;
  PIR3_SSP2IF            : bit  absolute PIR3.2;
  PIR3_BCL1IF            : bit  absolute PIR3.1;
  PIR3_SSP1IF            : bit  absolute PIR3.0;
  PIR4                   : byte absolute $0710;
  PIR4_TMR6IF            : bit  absolute PIR4.5;
  PIR4_TMR5IF            : bit  absolute PIR4.4;
  PIR4_TMR4IF            : bit  absolute PIR4.3;
  PIR4_TMR3IF            : bit  absolute PIR4.2;
  PIR4_TMR2IF            : bit  absolute PIR4.1;
  PIR4_TMR1IF            : bit  absolute PIR4.0;
  PIR5                   : byte absolute $0711;
  PIR5_CLC4IF            : bit  absolute PIR5.7;
  PIR5_CLC3IF            : bit  absolute PIR5.6;
  PIR5_CLC2IF            : bit  absolute PIR5.5;
  PIR5_CLC1IF            : bit  absolute PIR5.4;
  PIR5_TMR5GIF           : bit  absolute PIR5.3;
  PIR5_TMR3GIF           : bit  absolute PIR5.2;
  PIR5_TMR1GIF           : bit  absolute PIR5.1;
  PIR6                   : byte absolute $0712;
  PIR6_CCP4IF            : bit  absolute PIR6.4;
  PIR6_CCP3IF            : bit  absolute PIR6.3;
  PIR6_CCP2IF            : bit  absolute PIR6.2;
  PIR6_CCP1IF            : bit  absolute PIR6.1;
  PIR7                   : byte absolute $0713;
  PIR7_NVMIF             : bit  absolute PIR7.5;
  PIR7_NCO1IF            : bit  absolute PIR7.4;
  PIR7_CWG2IF            : bit  absolute PIR7.3;
  PIR7_CWG1IF            : bit  absolute PIR7.2;
  PIR8                   : byte absolute $0714;
  PIR8_SMT1PWAIF         : bit  absolute PIR8.2;
  PIR8_SMT1PRAIF         : bit  absolute PIR8.1;
  PIR8_SMT1IF            : bit  absolute PIR8.0;
  PIE0                   : byte absolute $0716;
  PIE0_TMR0IE            : bit  absolute PIE0.5;
  PIE0_IOCIE             : bit  absolute PIE0.4;
  PIE0_INTE              : bit  absolute PIE0.3;
  PIE1                   : byte absolute $0717;
  PIE1_OSFIE             : bit  absolute PIE1.5;
  PIE1_CSWIE             : bit  absolute PIE1.4;
  PIE1_ADTIE             : bit  absolute PIE1.3;
  PIE1_ADIE              : bit  absolute PIE1.2;
  PIE2                   : byte absolute $0718;
  PIE2_ZCDIE             : bit  absolute PIE2.4;
  PIE2_C2IE              : bit  absolute PIE2.3;
  PIE2_C1IE              : bit  absolute PIE2.2;
  PIE3                   : byte absolute $0719;
  PIE3_RC1IE             : bit  absolute PIE3.6;
  PIE3_TX1IE             : bit  absolute PIE3.5;
  PIE3_BCL2IE            : bit  absolute PIE3.4;
  PIE3_SSP2IE            : bit  absolute PIE3.3;
  PIE3_BCL1IE            : bit  absolute PIE3.2;
  PIE3_SSP1IE            : bit  absolute PIE3.1;
  PIE4                   : byte absolute $071A;
  PIE4_TMR6IE            : bit  absolute PIE4.5;
  PIE4_TMR5IE            : bit  absolute PIE4.4;
  PIE4_TMR4IE            : bit  absolute PIE4.3;
  PIE4_TMR3IE            : bit  absolute PIE4.2;
  PIE4_TMR2IE            : bit  absolute PIE4.1;
  PIE4_TMR1IE            : bit  absolute PIE4.0;
  PIE5                   : byte absolute $071B;
  PIE5_CLC4IE            : bit  absolute PIE5.7;
  PIE5_CLC3IE            : bit  absolute PIE5.6;
  PIE5_CLC2IE            : bit  absolute PIE5.5;
  PIE5_CLC1IE            : bit  absolute PIE5.4;
  PIE5_TMR5GIE           : bit  absolute PIE5.3;
  PIE5_TMR3GIE           : bit  absolute PIE5.2;
  PIE5_TMR1GIE           : bit  absolute PIE5.1;
  PIE6                   : byte absolute $071C;
  PIE6_CCP4IE            : bit  absolute PIE6.4;
  PIE6_CCP3IE            : bit  absolute PIE6.3;
  PIE6_CCP2IE            : bit  absolute PIE6.2;
  PIE6_CCP1IE            : bit  absolute PIE6.1;
  PIE7                   : byte absolute $071D;
  PIE7_NVMIE             : bit  absolute PIE7.5;
  PIE7_NCO1IE            : bit  absolute PIE7.4;
  PIE7_CWG2IE            : bit  absolute PIE7.3;
  PIE7_CWG1IE            : bit  absolute PIE7.2;
  PIE8                   : byte absolute $071E;
  PIE8_SMT1PWAIE         : bit  absolute PIE8.2;
  PIE8_SMT1PRAIE         : bit  absolute PIE8.1;
  PIE8_SMT1IE            : bit  absolute PIE8.0;
  PMD0                   : byte absolute $0796;
  PMD0_SYSCMD            : bit  absolute PMD0.7;
  PMD0_FVRMD             : bit  absolute PMD0.6;
  PMD0_NVMMD             : bit  absolute PMD0.5;
  PMD0_CLKRMD            : bit  absolute PMD0.4;
  PMD0_IOCMD             : bit  absolute PMD0.3;
  PMD1                   : byte absolute $0797;
  PMD1_TMR6MD            : bit  absolute PMD1.6;
  PMD1_TMR5MD            : bit  absolute PMD1.5;
  PMD1_TMR4MD            : bit  absolute PMD1.4;
  PMD1_TMR3MD            : bit  absolute PMD1.3;
  PMD1_TMR2MD            : bit  absolute PMD1.2;
  PMD1_TMR1MD            : bit  absolute PMD1.1;
  PMD1_TMR0MD            : bit  absolute PMD1.0;
  PMD2                   : byte absolute $0798;
  PMD2_NCO1MD            : bit  absolute PMD2.7;
  PMD3                   : byte absolute $0799;
  PMD3_DAC1MD            : bit  absolute PMD3.6;
  PMD3_ADCMD             : bit  absolute PMD3.5;
  PMD3_CMP2MD            : bit  absolute PMD3.4;
  PMD3_CMP1MD            : bit  absolute PMD3.3;
  PMD3_ZCDMD             : bit  absolute PMD3.2;
  PMD4                   : byte absolute $079A;
  PMD4_PWM7MD            : bit  absolute PMD4.6;
  PMD4_PWM6MD            : bit  absolute PMD4.5;
  PMD4_CCP4MD            : bit  absolute PMD4.4;
  PMD4_CCP3MD            : bit  absolute PMD4.3;
  PMD4_CCP2MD            : bit  absolute PMD4.2;
  PMD4_CCP1MD            : bit  absolute PMD4.1;
  PMD5                   : byte absolute $079B;
  PMD5_CWG2MD            : bit  absolute PMD5.6;
  PMD5_CWG1MD            : bit  absolute PMD5.5;
  PMD6                   : byte absolute $079C;
  PMD6_U1MD              : bit  absolute PMD6.4;
  PMD6_MSSP2MD           : bit  absolute PMD6.3;
  PMD6_MSSP1MD           : bit  absolute PMD6.2;
  PMD7                   : byte absolute $079D;
  PMD7_SMT1MD            : bit  absolute PMD7.5;
  PMD7_CLC4MD            : bit  absolute PMD7.4;
  PMD7_CLC3MD            : bit  absolute PMD7.3;
  PMD7_CLC2MD            : bit  absolute PMD7.2;
  PMD7_CLC1MD            : bit  absolute PMD7.1;
  PMD7_DSM1MD            : bit  absolute PMD7.0;
  WDTCON0                : byte absolute $080C;
  WDTCON0_WDTSEN         : bit  absolute WDTCON0.5;
  WDTCON0_WDTPS3         : bit  absolute WDTCON0.4;
  WDTCON0_WDTPS2         : bit  absolute WDTCON0.3;
  WDTCON0_SWDTEN         : bit  absolute WDTCON0.1;
  WDTCON1                : byte absolute $080D;
  WDTCON1_WDTCS2         : bit  absolute WDTCON1.6;
  WDTCON1_WDTCS1         : bit  absolute WDTCON1.5;
  WDTCON1_WDTCS0         : bit  absolute WDTCON1.4;
  WDTCON1_WINDOW2        : bit  absolute WDTCON1.3;
  WDTCON1_WINDOW1        : bit  absolute WDTCON1.2;
  WDTCON1_WINDOW0        : bit  absolute WDTCON1.1;
  WDTPSL                 : byte absolute $080E;
  WDTPSL_PSCNT7          : bit  absolute WDTPSL.7;
  WDTPSL_PSCNT6          : bit  absolute WDTPSL.6;
  WDTPSL_PSCNT5          : bit  absolute WDTPSL.5;
  WDTPSL_PSCNT4          : bit  absolute WDTPSL.4;
  WDTPSL_PSCNT3          : bit  absolute WDTPSL.3;
  WDTPSL_PSCNT2          : bit  absolute WDTPSL.2;
  WDTPSL_PSCNT1          : bit  absolute WDTPSL.1;
  WDTPSL_PSCNT0          : bit  absolute WDTPSL.0;
  WDTPSH                 : byte absolute $080F;
  WDTPSH_PSCNT15         : bit  absolute WDTPSH.7;
  WDTPSH_PSCNT14         : bit  absolute WDTPSH.6;
  WDTPSH_PSCNT13         : bit  absolute WDTPSH.5;
  WDTPSH_PSCNT12         : bit  absolute WDTPSH.4;
  WDTPSH_PSCNT11         : bit  absolute WDTPSH.3;
  WDTPSH_PSCNT10         : bit  absolute WDTPSH.2;
  WDTPSH_PSCNT9          : bit  absolute WDTPSH.1;
  WDTPSH_PSCNT8          : bit  absolute WDTPSH.0;
  WDTTMR                 : byte absolute $0810;
  WDTTMR_WDTTMR3         : bit  absolute WDTTMR.7;
  WDTTMR_WDTTMR2         : bit  absolute WDTTMR.6;
  WDTTMR_WDTTMR1         : bit  absolute WDTTMR.5;
  WDTTMR_WDTTMR0         : bit  absolute WDTTMR.4;
  WDTTMR_WDTSTATE        : bit  absolute WDTTMR.3;
  WDTTMR_STATE           : bit  absolute WDTTMR.2;
  WDTTMR_PSCNT17         : bit  absolute WDTTMR.1;
  WDTTMR_PSCNT16         : bit  absolute WDTTMR.0;
  BORCON                 : byte absolute $0811;
  BORCON_SBOREN          : bit  absolute BORCON.7;
  BORCON_BORRDY          : bit  absolute BORCON.6;
  VREGCON                : byte absolute $0812;
  VREGCON_VREGPM         : bit  absolute VREGCON.1;
  PCON0                  : byte absolute $0813;
  PCON0_STKOVF           : bit  absolute PCON0.7;
  PCON0_STKUNF           : bit  absolute PCON0.6;
  PCON0_WDTWV            : bit  absolute PCON0.5;
  PCON0_RWDT             : bit  absolute PCON0.4;
  PCON0_RMCLR            : bit  absolute PCON0.3;
  PCON0_RI               : bit  absolute PCON0.2;
  PCON0_POR              : bit  absolute PCON0.1;
  PCON0_BOR              : bit  absolute PCON0.0;
  PCON1                  : byte absolute $0814;
  PCON1_MEMV             : bit  absolute PCON1.1;
  NVMADRL                : byte absolute $081A;
  NVMADRL_NVMADRL7       : bit  absolute NVMADRL.7;
  NVMADRL_NVMADRL6       : bit  absolute NVMADRL.6;
  NVMADRL_NVMADRL5       : bit  absolute NVMADRL.5;
  NVMADRL_NVMADRL4       : bit  absolute NVMADRL.4;
  NVMADRL_NVMADRL3       : bit  absolute NVMADRL.3;
  NVMADRL_NVMADRL2       : bit  absolute NVMADRL.2;
  NVMADRL_NVMADRL1       : bit  absolute NVMADRL.1;
  NVMADRL_NVMADRL0       : bit  absolute NVMADRL.0;
  NVMADRH                : byte absolute $081B;
  NVMADRH_NVMADRH6       : bit  absolute NVMADRH.6;
  NVMADRH_NVMADRH5       : bit  absolute NVMADRH.5;
  NVMADRH_NVMADRH4       : bit  absolute NVMADRH.4;
  NVMADRH_NVMADRH3       : bit  absolute NVMADRH.3;
  NVMADRH_NVMADRH2       : bit  absolute NVMADRH.2;
  NVMADRH_NVMADRH1       : bit  absolute NVMADRH.1;
  NVMADRH_NVMADRH0       : bit  absolute NVMADRH.0;
  NVMDATL                : byte absolute $081C;
  NVMDATL_NVMDATL7       : bit  absolute NVMDATL.7;
  NVMDATL_NVMDATL6       : bit  absolute NVMDATL.6;
  NVMDATL_NVMDATL5       : bit  absolute NVMDATL.5;
  NVMDATL_NVMDATL4       : bit  absolute NVMDATL.4;
  NVMDATL_NVMDATL3       : bit  absolute NVMDATL.3;
  NVMDATL_NVMDATL2       : bit  absolute NVMDATL.2;
  NVMDATL_NVMDATL1       : bit  absolute NVMDATL.1;
  NVMDATL_NVMDATL0       : bit  absolute NVMDATL.0;
  NVMDATH                : byte absolute $081D;
  NVMDATH_NVMDATH5       : bit  absolute NVMDATH.5;
  NVMDATH_NVMDATH4       : bit  absolute NVMDATH.4;
  NVMDATH_NVMDATH3       : bit  absolute NVMDATH.3;
  NVMDATH_NVMDATH2       : bit  absolute NVMDATH.2;
  NVMDATH_NVMDATH1       : bit  absolute NVMDATH.1;
  NVMDATH_NVMDATH0       : bit  absolute NVMDATH.0;
  NVMCON1                : byte absolute $081E;
  NVMCON1_NVMREGS        : bit  absolute NVMCON1.6;
  NVMCON1_LWLO           : bit  absolute NVMCON1.5;
  NVMCON1_FREE           : bit  absolute NVMCON1.4;
  NVMCON1_WRERR          : bit  absolute NVMCON1.3;
  NVMCON1_WREN           : bit  absolute NVMCON1.2;
  NVMCON1_WR             : bit  absolute NVMCON1.1;
  NVMCON1_RD             : bit  absolute NVMCON1.0;
  NVMCON2                : byte absolute $081F;
  CPUDOZE                : byte absolute $088C;
  CPUDOZE_IDLEN          : bit  absolute CPUDOZE.7;
  CPUDOZE_DOZEN          : bit  absolute CPUDOZE.6;
  CPUDOZE_ROI            : bit  absolute CPUDOZE.5;
  CPUDOZE_DOE            : bit  absolute CPUDOZE.4;
  OSCCON1                : byte absolute $088D;
  OSCCON1_NOSC2          : bit  absolute OSCCON1.6;
  OSCCON1_NOSC1          : bit  absolute OSCCON1.5;
  OSCCON1_NOSC0          : bit  absolute OSCCON1.4;
  OSCCON1_NDIV3          : bit  absolute OSCCON1.3;
  OSCCON1_NDIV2          : bit  absolute OSCCON1.2;
  OSCCON1_NDIV1          : bit  absolute OSCCON1.1;
  OSCCON1_NDIV0          : bit  absolute OSCCON1.0;
  OSCCON2                : byte absolute $088E;
  OSCCON2_COSC2          : bit  absolute OSCCON2.6;
  OSCCON2_COSC1          : bit  absolute OSCCON2.5;
  OSCCON2_COSC0          : bit  absolute OSCCON2.4;
  OSCCON2_CDIV3          : bit  absolute OSCCON2.3;
  OSCCON2_CDIV2          : bit  absolute OSCCON2.2;
  OSCCON2_CDIV1          : bit  absolute OSCCON2.1;
  OSCCON2_CDIV0          : bit  absolute OSCCON2.0;
  OSCCON3                : byte absolute $088F;
  OSCCON3_CSWHOLD        : bit  absolute OSCCON3.6;
  OSCCON3_SOSCPWR        : bit  absolute OSCCON3.5;
  OSCCON3_ORDY           : bit  absolute OSCCON3.4;
  OSCCON3_NOSCR          : bit  absolute OSCCON3.3;
  OSCSTAT                : byte absolute $0890;
  OSCSTAT_EXTOR          : bit  absolute OSCSTAT.7;
  OSCSTAT_HFOR           : bit  absolute OSCSTAT.6;
  OSCSTAT_MFOR           : bit  absolute OSCSTAT.5;
  OSCSTAT_LFOR           : bit  absolute OSCSTAT.4;
  OSCSTAT_SOR            : bit  absolute OSCSTAT.3;
  OSCSTAT_ADOR           : bit  absolute OSCSTAT.2;
  OSCSTAT_PLLR           : bit  absolute OSCSTAT.1;
  OSCEN                  : byte absolute $0891;
  OSCEN_EXTOEN           : bit  absolute OSCEN.7;
  OSCEN_HFOEN            : bit  absolute OSCEN.6;
  OSCEN_MFOEN            : bit  absolute OSCEN.5;
  OSCEN_LFOEN            : bit  absolute OSCEN.4;
  OSCEN_SOSCEN           : bit  absolute OSCEN.3;
  OSCEN_ADOEN            : bit  absolute OSCEN.2;
  OSCTUNE                : byte absolute $0892;
  OSCTUNE_HFTUN5         : bit  absolute OSCTUNE.5;
  OSCTUNE_HFTUN4         : bit  absolute OSCTUNE.4;
  OSCTUNE_HFTUN3         : bit  absolute OSCTUNE.3;
  OSCTUNE_HFTUN2         : bit  absolute OSCTUNE.2;
  OSCTUNE_HFTUN1         : bit  absolute OSCTUNE.1;
  OSCTUNE_HFTUN0         : bit  absolute OSCTUNE.0;
  OSCFRQ                 : byte absolute $0893;
  OSCFRQ_HFFRQ2          : bit  absolute OSCFRQ.2;
  OSCFRQ_HFFRQ1          : bit  absolute OSCFRQ.1;
  OSCFRQ_HFFRQ0          : bit  absolute OSCFRQ.0;
  CLKRCON                : byte absolute $0895;
  CLKRCON_CLKREN         : bit  absolute CLKRCON.7;
  CLKRCON_CLKRDC1        : bit  absolute CLKRCON.6;
  CLKRCON_CLKRDC0        : bit  absolute CLKRCON.5;
  CLKRCON_CLKRDIV2       : bit  absolute CLKRCON.4;
  CLKRCON_CLKRDIV1       : bit  absolute CLKRCON.3;
  CLKRCON_CLKRDIV0       : bit  absolute CLKRCON.2;
  CLKRCLK                : byte absolute $0896;
  CLKRCLK_CLKRCLK3       : bit  absolute CLKRCLK.3;
  CLKRCLK_CLKRCLK2       : bit  absolute CLKRCLK.2;
  CLKRCLK_CLKRCLK1       : bit  absolute CLKRCLK.1;
  CLKRCLK_CLKRCLK0       : bit  absolute CLKRCLK.0;
  MD1CON0                : byte absolute $0897;
  MD1CON0_OPOL           : bit  absolute MD1CON0.4;
  MD1CON0_BIT            : bit  absolute MD1CON0.3;
  MD1CON1                : byte absolute $0898;
  MD1CON1_CHPOL          : bit  absolute MD1CON1.5;
  MD1CON1_CHSYNC         : bit  absolute MD1CON1.4;
  MD1CON1_CLPOL          : bit  absolute MD1CON1.3;
  MD1CON1_CLSYNC         : bit  absolute MD1CON1.2;
  MD1SRC                 : byte absolute $0899;
  MD1SRC_MS4             : bit  absolute MD1SRC.4;
  MD1SRC_MS3             : bit  absolute MD1SRC.3;
  MD1SRC_MS2             : bit  absolute MD1SRC.2;
  MD1SRC_MS1             : bit  absolute MD1SRC.1;
  MD1SRC_MS0             : bit  absolute MD1SRC.0;
  MD1CARL                : byte absolute $089A;
  MD1CARL_MD1CL3         : bit  absolute MD1CARL.7;
  MD1CARL_MD1CL2         : bit  absolute MD1CARL.6;
  MD1CARL_MD1CL1         : bit  absolute MD1CARL.5;
  MD1CARL_CL3            : bit  absolute MD1CARL.4;
  MD1CARL_CL2            : bit  absolute MD1CARL.3;
  MD1CARL_CL1            : bit  absolute MD1CARL.2;
  MD1CARL_CL0            : bit  absolute MD1CARL.1;
  MD1CARH                : byte absolute $089B;
  MD1CARH_CH3            : bit  absolute MD1CARH.3;
  MD1CARH_CH2            : bit  absolute MD1CARH.2;
  MD1CARH_CH1            : bit  absolute MD1CARH.1;
  MD1CARH_CH0            : bit  absolute MD1CARH.0;
  FVRCON                 : byte absolute $090C;
  FVRCON_FVREN           : bit  absolute FVRCON.7;
  FVRCON_FVRRDY          : bit  absolute FVRCON.6;
  FVRCON_TSEN            : bit  absolute FVRCON.5;
  FVRCON_TSRNG           : bit  absolute FVRCON.4;
  FVRCON_CDAFVR1         : bit  absolute FVRCON.3;
  FVRCON_CDAFVR0         : bit  absolute FVRCON.2;
  FVRCON_ADFVR1          : bit  absolute FVRCON.1;
  FVRCON_ADFVR0          : bit  absolute FVRCON.0;
  DAC1CON0               : byte absolute $090E;
  DAC1CON0_OE1           : bit  absolute DAC1CON0.4;
  DAC1CON0_DAC1PSS1      : bit  absolute DAC1CON0.3;
  DAC1CON0_DAC1PSS0      : bit  absolute DAC1CON0.2;
  DAC1CON0_NSS           : bit  absolute DAC1CON0.1;
  DAC1CON1               : byte absolute $090F;
  DAC1CON1_DAC1R4        : bit  absolute DAC1CON1.4;
  DAC1CON1_DAC1R3        : bit  absolute DAC1CON1.3;
  DAC1CON1_DAC1R2        : bit  absolute DAC1CON1.2;
  DAC1CON1_DAC1R1        : bit  absolute DAC1CON1.1;
  DAC1CON1_DAC1R0        : bit  absolute DAC1CON1.0;
  ZCDCON                 : byte absolute $091F;
  ZCDCON_ZCDSEN          : bit  absolute ZCDCON.6;
  ZCDCON_ZCDOUT          : bit  absolute ZCDCON.5;
  ZCDCON_ZCDPOL          : bit  absolute ZCDCON.4;
  ZCDCON_ZCDINTP         : bit  absolute ZCDCON.3;
  ZCDCON_ZCDINTN         : bit  absolute ZCDCON.2;
  CMOUT                  : byte absolute $098F;
  CMOUT_MC2OUT           : bit  absolute CMOUT.1;
  CMOUT_MC1OUT           : bit  absolute CMOUT.0;
  CM1CON0                : byte absolute $0990;
  CM1CON0_HYS            : bit  absolute CM1CON0.2;
  CM1CON1                : byte absolute $0991;
  CM1CON1_INTP           : bit  absolute CM1CON1.2;
  CM1CON1_INTN           : bit  absolute CM1CON1.1;
  CM1NCH                 : byte absolute $0992;
  CM1NCH_NCH2            : bit  absolute CM1NCH.2;
  CM1NCH_NCH1            : bit  absolute CM1NCH.1;
  CM1NCH_NCH0            : bit  absolute CM1NCH.0;
  CM1PCH                 : byte absolute $0993;
  CM1PCH_PCH2            : bit  absolute CM1PCH.2;
  CM1PCH_PCH1            : bit  absolute CM1PCH.1;
  CM1PCH_PCH0            : bit  absolute CM1PCH.0;
  CM2CON0                : byte absolute $0994;
  CM2CON1                : byte absolute $0995;
  CM2NCH                 : byte absolute $0996;
  CM2PCH                 : byte absolute $0997;
  CLCDATA                : byte absolute $1E0F;
  CLCDATA_MLC4OUT        : bit  absolute CLCDATA.3;
  CLCDATA_MLC3OUT        : bit  absolute CLCDATA.2;
  CLCDATA_MLC2OUT        : bit  absolute CLCDATA.1;
  CLCDATA_MLC1OUT        : bit  absolute CLCDATA.0;
  CLC1CON                : byte absolute $1E10;
  CLC1CON_LC1EN          : bit  absolute CLC1CON.7;
  CLC1CON_LC1OUT         : bit  absolute CLC1CON.6;
  CLC1CON_LC1INTP        : bit  absolute CLC1CON.5;
  CLC1CON_LC1INTN        : bit  absolute CLC1CON.4;
  CLC1CON_LC1MODE2       : bit  absolute CLC1CON.2;
  CLC1CON_LC1MODE1       : bit  absolute CLC1CON.1;
  CLC1CON_LC1MODE0       : bit  absolute CLC1CON.0;
  CLC1POL                : byte absolute $1E11;
  CLC1POL_LC1POL         : bit  absolute CLC1POL.7;
  CLC1POL_LC1G4POL       : bit  absolute CLC1POL.6;
  CLC1POL_LC1G3POL       : bit  absolute CLC1POL.5;
  CLC1POL_LC1G2POL       : bit  absolute CLC1POL.4;
  CLC1POL_LC1G1POL       : bit  absolute CLC1POL.3;
  CLC1SEL0               : byte absolute $1E12;
  CLC1SEL0_LC1D1S5       : bit  absolute CLC1SEL0.6;
  CLC1SEL0_LC1D1S4       : bit  absolute CLC1SEL0.5;
  CLC1SEL0_LC1D1S3       : bit  absolute CLC1SEL0.4;
  CLC1SEL0_LC1D1S2       : bit  absolute CLC1SEL0.3;
  CLC1SEL0_LC1D1S1       : bit  absolute CLC1SEL0.2;
  CLC1SEL0_LC1D1S0       : bit  absolute CLC1SEL0.1;
  CLC1SEL1               : byte absolute $1E13;
  CLC1SEL1_LC1D2S5       : bit  absolute CLC1SEL1.6;
  CLC1SEL1_LC1D2S4       : bit  absolute CLC1SEL1.5;
  CLC1SEL1_LC1D2S3       : bit  absolute CLC1SEL1.4;
  CLC1SEL1_LC1D2S2       : bit  absolute CLC1SEL1.3;
  CLC1SEL1_LC1D2S1       : bit  absolute CLC1SEL1.2;
  CLC1SEL1_LC1D2S0       : bit  absolute CLC1SEL1.1;
  CLC1SEL2               : byte absolute $1E14;
  CLC1SEL2_LC1D3S5       : bit  absolute CLC1SEL2.6;
  CLC1SEL2_LC1D3S4       : bit  absolute CLC1SEL2.5;
  CLC1SEL2_LC1D3S3       : bit  absolute CLC1SEL2.4;
  CLC1SEL2_LC1D3S2       : bit  absolute CLC1SEL2.3;
  CLC1SEL2_LC1D3S1       : bit  absolute CLC1SEL2.2;
  CLC1SEL2_LC1D3S0       : bit  absolute CLC1SEL2.1;
  CLC1SEL3               : byte absolute $1E15;
  CLC1SEL3_LC1D4S5       : bit  absolute CLC1SEL3.6;
  CLC1SEL3_LC1D4S4       : bit  absolute CLC1SEL3.5;
  CLC1SEL3_LC1D4S3       : bit  absolute CLC1SEL3.4;
  CLC1SEL3_LC1D4S2       : bit  absolute CLC1SEL3.3;
  CLC1SEL3_LC1D4S1       : bit  absolute CLC1SEL3.2;
  CLC1SEL3_LC1D4S0       : bit  absolute CLC1SEL3.1;
  CLC1GLS0               : byte absolute $1E16;
  CLC1GLS0_LC1G1D4T      : bit  absolute CLC1GLS0.7;
  CLC1GLS0_LC1G1D4N      : bit  absolute CLC1GLS0.6;
  CLC1GLS0_LC1G1D3T      : bit  absolute CLC1GLS0.5;
  CLC1GLS0_LC1G1D3N      : bit  absolute CLC1GLS0.4;
  CLC1GLS0_LC1G1D2T      : bit  absolute CLC1GLS0.3;
  CLC1GLS0_LC1G1D2N      : bit  absolute CLC1GLS0.2;
  CLC1GLS0_LC1G1D1T      : bit  absolute CLC1GLS0.1;
  CLC1GLS0_LC1G1D1N      : bit  absolute CLC1GLS0.0;
  CLC1GLS1               : byte absolute $1E17;
  CLC1GLS1_LC1G2D4T      : bit  absolute CLC1GLS1.7;
  CLC1GLS1_LC1G2D4N      : bit  absolute CLC1GLS1.6;
  CLC1GLS1_LC1G2D3T      : bit  absolute CLC1GLS1.5;
  CLC1GLS1_LC1G2D3N      : bit  absolute CLC1GLS1.4;
  CLC1GLS1_LC1G2D2T      : bit  absolute CLC1GLS1.3;
  CLC1GLS1_LC1G2D2N      : bit  absolute CLC1GLS1.2;
  CLC1GLS1_LC1G2D1T      : bit  absolute CLC1GLS1.1;
  CLC1GLS1_LC1G2D1N      : bit  absolute CLC1GLS1.0;
  CLC1GLS2               : byte absolute $1E18;
  CLC1GLS2_LC1G3D4T      : bit  absolute CLC1GLS2.7;
  CLC1GLS2_LC1G3D4N      : bit  absolute CLC1GLS2.6;
  CLC1GLS2_LC1G3D3T      : bit  absolute CLC1GLS2.5;
  CLC1GLS2_LC1G3D3N      : bit  absolute CLC1GLS2.4;
  CLC1GLS2_LC1G3D2T      : bit  absolute CLC1GLS2.3;
  CLC1GLS2_LC1G3D2N      : bit  absolute CLC1GLS2.2;
  CLC1GLS2_LC1G3D1T      : bit  absolute CLC1GLS2.1;
  CLC1GLS2_LC1G3D1N      : bit  absolute CLC1GLS2.0;
  CLC1GLS3               : byte absolute $1E19;
  CLC1GLS3_LC1G4D4T      : bit  absolute CLC1GLS3.7;
  CLC1GLS3_LC1G4D4N      : bit  absolute CLC1GLS3.6;
  CLC1GLS3_LC1G4D3T      : bit  absolute CLC1GLS3.5;
  CLC1GLS3_LC1G4D3N      : bit  absolute CLC1GLS3.4;
  CLC1GLS3_LC1G4D2T      : bit  absolute CLC1GLS3.3;
  CLC1GLS3_LC1G4D2N      : bit  absolute CLC1GLS3.2;
  CLC1GLS3_LC1G4D1T      : bit  absolute CLC1GLS3.1;
  CLC1GLS3_LC1G4D1N      : bit  absolute CLC1GLS3.0;
  CLC2CON                : byte absolute $1E1A;
  CLC2CON_LC2EN          : bit  absolute CLC2CON.7;
  CLC2CON_LC2OUT         : bit  absolute CLC2CON.6;
  CLC2CON_LC2INTP        : bit  absolute CLC2CON.5;
  CLC2CON_LC2INTN        : bit  absolute CLC2CON.4;
  CLC2CON_LC2MODE2       : bit  absolute CLC2CON.2;
  CLC2CON_LC2MODE1       : bit  absolute CLC2CON.1;
  CLC2CON_LC2MODE0       : bit  absolute CLC2CON.0;
  CLC2POL                : byte absolute $1E1B;
  CLC2POL_LC2POL         : bit  absolute CLC2POL.7;
  CLC2POL_LC2G4POL       : bit  absolute CLC2POL.6;
  CLC2POL_LC2G3POL       : bit  absolute CLC2POL.5;
  CLC2POL_LC2G2POL       : bit  absolute CLC2POL.4;
  CLC2POL_LC2G1POL       : bit  absolute CLC2POL.3;
  CLC2SEL0               : byte absolute $1E1C;
  CLC2SEL0_LC2D1S5       : bit  absolute CLC2SEL0.6;
  CLC2SEL0_LC2D1S4       : bit  absolute CLC2SEL0.5;
  CLC2SEL0_LC2D1S3       : bit  absolute CLC2SEL0.4;
  CLC2SEL0_LC2D1S2       : bit  absolute CLC2SEL0.3;
  CLC2SEL0_LC2D1S1       : bit  absolute CLC2SEL0.2;
  CLC2SEL0_LC2D1S0       : bit  absolute CLC2SEL0.1;
  CLC2SEL1               : byte absolute $1E1D;
  CLC2SEL1_LC2D2S5       : bit  absolute CLC2SEL1.6;
  CLC2SEL1_LC2D2S4       : bit  absolute CLC2SEL1.5;
  CLC2SEL1_LC2D2S3       : bit  absolute CLC2SEL1.4;
  CLC2SEL1_LC2D2S2       : bit  absolute CLC2SEL1.3;
  CLC2SEL1_LC2D2S1       : bit  absolute CLC2SEL1.2;
  CLC2SEL1_LC2D2S0       : bit  absolute CLC2SEL1.1;
  CLC2SEL2               : byte absolute $1E1E;
  CLC2SEL2_LC2D3S5       : bit  absolute CLC2SEL2.6;
  CLC2SEL2_LC2D3S4       : bit  absolute CLC2SEL2.5;
  CLC2SEL2_LC2D3S3       : bit  absolute CLC2SEL2.4;
  CLC2SEL2_LC2D3S2       : bit  absolute CLC2SEL2.3;
  CLC2SEL2_LC2D3S1       : bit  absolute CLC2SEL2.2;
  CLC2SEL2_LC2D3S0       : bit  absolute CLC2SEL2.1;
  CLC2SEL3               : byte absolute $1E1F;
  CLC2SEL3_LC2D4S5       : bit  absolute CLC2SEL3.6;
  CLC2SEL3_LC2D4S4       : bit  absolute CLC2SEL3.5;
  CLC2SEL3_LC2D4S3       : bit  absolute CLC2SEL3.4;
  CLC2SEL3_LC2D4S2       : bit  absolute CLC2SEL3.3;
  CLC2SEL3_LC2D4S1       : bit  absolute CLC2SEL3.2;
  CLC2SEL3_LC2D4S0       : bit  absolute CLC2SEL3.1;
  CLC2GLS0               : byte absolute $1E20;
  CLC2GLS0_LC2G1D4T      : bit  absolute CLC2GLS0.7;
  CLC2GLS0_LC2G1D4N      : bit  absolute CLC2GLS0.6;
  CLC2GLS0_LC2G1D3T      : bit  absolute CLC2GLS0.5;
  CLC2GLS0_LC2G1D3N      : bit  absolute CLC2GLS0.4;
  CLC2GLS0_LC2G1D2T      : bit  absolute CLC2GLS0.3;
  CLC2GLS0_LC2G1D2N      : bit  absolute CLC2GLS0.2;
  CLC2GLS0_LC2G1D1T      : bit  absolute CLC2GLS0.1;
  CLC2GLS0_LC2G1D1N      : bit  absolute CLC2GLS0.0;
  CLC2GLS1               : byte absolute $1E21;
  CLC2GLS1_LC2G2D4T      : bit  absolute CLC2GLS1.7;
  CLC2GLS1_LC2G2D4N      : bit  absolute CLC2GLS1.6;
  CLC2GLS1_LC2G2D3T      : bit  absolute CLC2GLS1.5;
  CLC2GLS1_LC2G2D3N      : bit  absolute CLC2GLS1.4;
  CLC2GLS1_LC2G2D2T      : bit  absolute CLC2GLS1.3;
  CLC2GLS1_LC2G2D2N      : bit  absolute CLC2GLS1.2;
  CLC2GLS1_LC2G2D1T      : bit  absolute CLC2GLS1.1;
  CLC2GLS1_LC2G2D1N      : bit  absolute CLC2GLS1.0;
  CLC2GLS2               : byte absolute $1E22;
  CLC2GLS2_LC2G3D4T      : bit  absolute CLC2GLS2.7;
  CLC2GLS2_LC2G3D4N      : bit  absolute CLC2GLS2.6;
  CLC2GLS2_LC2G3D3T      : bit  absolute CLC2GLS2.5;
  CLC2GLS2_LC2G3D3N      : bit  absolute CLC2GLS2.4;
  CLC2GLS2_LC2G3D2T      : bit  absolute CLC2GLS2.3;
  CLC2GLS2_LC2G3D2N      : bit  absolute CLC2GLS2.2;
  CLC2GLS2_LC2G3D1T      : bit  absolute CLC2GLS2.1;
  CLC2GLS2_LC2G3D1N      : bit  absolute CLC2GLS2.0;
  CLC2GLS3               : byte absolute $1E23;
  CLC2GLS3_LC2G4D4T      : bit  absolute CLC2GLS3.7;
  CLC2GLS3_LC2G4D4N      : bit  absolute CLC2GLS3.6;
  CLC2GLS3_LC2G4D3T      : bit  absolute CLC2GLS3.5;
  CLC2GLS3_LC2G4D3N      : bit  absolute CLC2GLS3.4;
  CLC2GLS3_LC2G4D2T      : bit  absolute CLC2GLS3.3;
  CLC2GLS3_LC2G4D2N      : bit  absolute CLC2GLS3.2;
  CLC2GLS3_LC2G4D1T      : bit  absolute CLC2GLS3.1;
  CLC2GLS3_LC2G4D1N      : bit  absolute CLC2GLS3.0;
  CLC3CON                : byte absolute $1E24;
  CLC3CON_LC3EN          : bit  absolute CLC3CON.7;
  CLC3CON_LC3OUT         : bit  absolute CLC3CON.6;
  CLC3CON_LC3INTP        : bit  absolute CLC3CON.5;
  CLC3CON_LC3INTN        : bit  absolute CLC3CON.4;
  CLC3CON_LC3MODE2       : bit  absolute CLC3CON.2;
  CLC3CON_LC3MODE1       : bit  absolute CLC3CON.1;
  CLC3CON_LC3MODE0       : bit  absolute CLC3CON.0;
  CLC3POL                : byte absolute $1E25;
  CLC3POL_LC3POL         : bit  absolute CLC3POL.7;
  CLC3POL_LC3G4POL       : bit  absolute CLC3POL.6;
  CLC3POL_LC3G3POL       : bit  absolute CLC3POL.5;
  CLC3POL_LC3G2POL       : bit  absolute CLC3POL.4;
  CLC3POL_LC3G1POL       : bit  absolute CLC3POL.3;
  CLC3SEL0               : byte absolute $1E26;
  CLC3SEL0_LC3D1S5       : bit  absolute CLC3SEL0.6;
  CLC3SEL0_LC3D1S4       : bit  absolute CLC3SEL0.5;
  CLC3SEL0_LC3D1S3       : bit  absolute CLC3SEL0.4;
  CLC3SEL0_LC3D1S2       : bit  absolute CLC3SEL0.3;
  CLC3SEL0_LC3D1S1       : bit  absolute CLC3SEL0.2;
  CLC3SEL0_LC3D1S0       : bit  absolute CLC3SEL0.1;
  CLC3SEL1               : byte absolute $1E27;
  CLC3SEL1_LC3D2S5       : bit  absolute CLC3SEL1.6;
  CLC3SEL1_LC3D2S4       : bit  absolute CLC3SEL1.5;
  CLC3SEL1_LC3D2S3       : bit  absolute CLC3SEL1.4;
  CLC3SEL1_LC3D2S2       : bit  absolute CLC3SEL1.3;
  CLC3SEL1_LC3D2S1       : bit  absolute CLC3SEL1.2;
  CLC3SEL1_LC3D2S0       : bit  absolute CLC3SEL1.1;
  CLC3SEL2               : byte absolute $1E28;
  CLC3SEL2_LC3D3S5       : bit  absolute CLC3SEL2.6;
  CLC3SEL2_LC3D3S4       : bit  absolute CLC3SEL2.5;
  CLC3SEL2_LC3D3S3       : bit  absolute CLC3SEL2.4;
  CLC3SEL2_LC3D3S2       : bit  absolute CLC3SEL2.3;
  CLC3SEL2_LC3D3S1       : bit  absolute CLC3SEL2.2;
  CLC3SEL2_LC3D3S0       : bit  absolute CLC3SEL2.1;
  CLC3SEL3               : byte absolute $1E29;
  CLC3SEL3_LC3D4S5       : bit  absolute CLC3SEL3.6;
  CLC3SEL3_LC3D4S4       : bit  absolute CLC3SEL3.5;
  CLC3SEL3_LC3D4S3       : bit  absolute CLC3SEL3.4;
  CLC3SEL3_LC3D4S2       : bit  absolute CLC3SEL3.3;
  CLC3SEL3_LC3D4S1       : bit  absolute CLC3SEL3.2;
  CLC3SEL3_LC3D4S0       : bit  absolute CLC3SEL3.1;
  CLC3GLS0               : byte absolute $1E2A;
  CLC3GLS0_LC3G1D4T      : bit  absolute CLC3GLS0.7;
  CLC3GLS0_LC3G1D4N      : bit  absolute CLC3GLS0.6;
  CLC3GLS0_LC3G1D3T      : bit  absolute CLC3GLS0.5;
  CLC3GLS0_LC3G1D3N      : bit  absolute CLC3GLS0.4;
  CLC3GLS0_LC3G1D2T      : bit  absolute CLC3GLS0.3;
  CLC3GLS0_LC3G1D2N      : bit  absolute CLC3GLS0.2;
  CLC3GLS0_LC3G1D1T      : bit  absolute CLC3GLS0.1;
  CLC3GLS0_LC3G1D1N      : bit  absolute CLC3GLS0.0;
  CLC3GLS1               : byte absolute $1E2B;
  CLC3GLS1_LC3G2D4T      : bit  absolute CLC3GLS1.7;
  CLC3GLS1_LC3G2D4N      : bit  absolute CLC3GLS1.6;
  CLC3GLS1_LC3G2D3T      : bit  absolute CLC3GLS1.5;
  CLC3GLS1_LC3G2D3N      : bit  absolute CLC3GLS1.4;
  CLC3GLS1_LC3G2D2T      : bit  absolute CLC3GLS1.3;
  CLC3GLS1_LC3G2D2N      : bit  absolute CLC3GLS1.2;
  CLC3GLS1_LC3G2D1T      : bit  absolute CLC3GLS1.1;
  CLC3GLS1_LC3G2D1N      : bit  absolute CLC3GLS1.0;
  CLC3GLS2               : byte absolute $1E2C;
  CLC3GLS2_LC3G3D4T      : bit  absolute CLC3GLS2.7;
  CLC3GLS2_LC3G3D4N      : bit  absolute CLC3GLS2.6;
  CLC3GLS2_LC3G3D3T      : bit  absolute CLC3GLS2.5;
  CLC3GLS2_LC3G3D3N      : bit  absolute CLC3GLS2.4;
  CLC3GLS2_LC3G3D2T      : bit  absolute CLC3GLS2.3;
  CLC3GLS2_LC3G3D2N      : bit  absolute CLC3GLS2.2;
  CLC3GLS2_LC3G3D1T      : bit  absolute CLC3GLS2.1;
  CLC3GLS2_LC3G3D1N      : bit  absolute CLC3GLS2.0;
  CLC3GLS3               : byte absolute $1E2D;
  CLC3GLS3_LC3G4D4T      : bit  absolute CLC3GLS3.7;
  CLC3GLS3_LC3G4D4N      : bit  absolute CLC3GLS3.6;
  CLC3GLS3_LC3G4D3T      : bit  absolute CLC3GLS3.5;
  CLC3GLS3_LC3G4D3N      : bit  absolute CLC3GLS3.4;
  CLC3GLS3_LC3G4D2T      : bit  absolute CLC3GLS3.3;
  CLC3GLS3_LC3G4D2N      : bit  absolute CLC3GLS3.2;
  CLC3GLS3_LC3G4D1T      : bit  absolute CLC3GLS3.1;
  CLC3GLS3_LC3G4D1N      : bit  absolute CLC3GLS3.0;
  CLC4CON                : byte absolute $1E2E;
  CLC4CON_LC4EN          : bit  absolute CLC4CON.7;
  CLC4CON_LC4OUT         : bit  absolute CLC4CON.6;
  CLC4CON_LC4INTP        : bit  absolute CLC4CON.5;
  CLC4CON_LC4INTN        : bit  absolute CLC4CON.4;
  CLC4CON_LC4MODE2       : bit  absolute CLC4CON.2;
  CLC4CON_LC4MODE1       : bit  absolute CLC4CON.1;
  CLC4CON_LC4MODE0       : bit  absolute CLC4CON.0;
  CLC4POL                : byte absolute $1E2F;
  CLC4POL_LC4POL         : bit  absolute CLC4POL.7;
  CLC4POL_LC4G4POL       : bit  absolute CLC4POL.6;
  CLC4POL_LC4G3POL       : bit  absolute CLC4POL.5;
  CLC4POL_LC4G2POL       : bit  absolute CLC4POL.4;
  CLC4POL_LC4G1POL       : bit  absolute CLC4POL.3;
  CLC4SEL0               : byte absolute $1E30;
  CLC4SEL0_LC4D1S5       : bit  absolute CLC4SEL0.6;
  CLC4SEL0_LC4D1S4       : bit  absolute CLC4SEL0.5;
  CLC4SEL0_LC4D1S3       : bit  absolute CLC4SEL0.4;
  CLC4SEL0_LC4D1S2       : bit  absolute CLC4SEL0.3;
  CLC4SEL0_LC4D1S1       : bit  absolute CLC4SEL0.2;
  CLC4SEL0_LC4D1S0       : bit  absolute CLC4SEL0.1;
  CLC4SEL1               : byte absolute $1E31;
  CLC4SEL1_LC4D2S5       : bit  absolute CLC4SEL1.6;
  CLC4SEL1_LC4D2S4       : bit  absolute CLC4SEL1.5;
  CLC4SEL1_LC4D2S3       : bit  absolute CLC4SEL1.4;
  CLC4SEL1_LC4D2S2       : bit  absolute CLC4SEL1.3;
  CLC4SEL1_LC4D2S1       : bit  absolute CLC4SEL1.2;
  CLC4SEL1_LC4D2S0       : bit  absolute CLC4SEL1.1;
  CLC4SEL2               : byte absolute $1E32;
  CLC4SEL2_LC4D3S5       : bit  absolute CLC4SEL2.6;
  CLC4SEL2_LC4D3S4       : bit  absolute CLC4SEL2.5;
  CLC4SEL2_LC4D3S3       : bit  absolute CLC4SEL2.4;
  CLC4SEL2_LC4D3S2       : bit  absolute CLC4SEL2.3;
  CLC4SEL2_LC4D3S1       : bit  absolute CLC4SEL2.2;
  CLC4SEL2_LC4D3S0       : bit  absolute CLC4SEL2.1;
  CLC4SEL3               : byte absolute $1E33;
  CLC4SEL3_LC4D4S5       : bit  absolute CLC4SEL3.6;
  CLC4SEL3_LC4D4S4       : bit  absolute CLC4SEL3.5;
  CLC4SEL3_LC4D4S3       : bit  absolute CLC4SEL3.4;
  CLC4SEL3_LC4D4S2       : bit  absolute CLC4SEL3.3;
  CLC4SEL3_LC4D4S1       : bit  absolute CLC4SEL3.2;
  CLC4SEL3_LC4D4S0       : bit  absolute CLC4SEL3.1;
  CLC4GLS0               : byte absolute $1E34;
  CLC4GLS0_LC4G1D4T      : bit  absolute CLC4GLS0.7;
  CLC4GLS0_LC4G1D4N      : bit  absolute CLC4GLS0.6;
  CLC4GLS0_LC4G1D3T      : bit  absolute CLC4GLS0.5;
  CLC4GLS0_LC4G1D3N      : bit  absolute CLC4GLS0.4;
  CLC4GLS0_LC4G1D2T      : bit  absolute CLC4GLS0.3;
  CLC4GLS0_LC4G1D2N      : bit  absolute CLC4GLS0.2;
  CLC4GLS0_LC4G1D1T      : bit  absolute CLC4GLS0.1;
  CLC4GLS0_LC4G1D1N      : bit  absolute CLC4GLS0.0;
  CLC4GLS1               : byte absolute $1E35;
  CLC4GLS1_LC4G2D4T      : bit  absolute CLC4GLS1.7;
  CLC4GLS1_LC4G2D4N      : bit  absolute CLC4GLS1.6;
  CLC4GLS1_LC4G2D3T      : bit  absolute CLC4GLS1.5;
  CLC4GLS1_LC4G2D3N      : bit  absolute CLC4GLS1.4;
  CLC4GLS1_LC4G2D2T      : bit  absolute CLC4GLS1.3;
  CLC4GLS1_LC4G2D2N      : bit  absolute CLC4GLS1.2;
  CLC4GLS1_LC4G2D1T      : bit  absolute CLC4GLS1.1;
  CLC4GLS1_LC4G2D1N      : bit  absolute CLC4GLS1.0;
  CLC4GLS2               : byte absolute $1E36;
  CLC4GLS2_LC4G3D4T      : bit  absolute CLC4GLS2.7;
  CLC4GLS2_LC4G3D4N      : bit  absolute CLC4GLS2.6;
  CLC4GLS2_LC4G3D3T      : bit  absolute CLC4GLS2.5;
  CLC4GLS2_LC4G3D3N      : bit  absolute CLC4GLS2.4;
  CLC4GLS2_LC4G3D2T      : bit  absolute CLC4GLS2.3;
  CLC4GLS2_LC4G3D2N      : bit  absolute CLC4GLS2.2;
  CLC4GLS2_LC4G3D1T      : bit  absolute CLC4GLS2.1;
  CLC4GLS2_LC4G3D1N      : bit  absolute CLC4GLS2.0;
  CLC4GLS3               : byte absolute $1E37;
  CLC4GLS3_LC4G4D4T      : bit  absolute CLC4GLS3.7;
  CLC4GLS3_LC4G4D4N      : bit  absolute CLC4GLS3.6;
  CLC4GLS3_LC4G4D3T      : bit  absolute CLC4GLS3.5;
  CLC4GLS3_LC4G4D3N      : bit  absolute CLC4GLS3.4;
  CLC4GLS3_LC4G4D2T      : bit  absolute CLC4GLS3.3;
  CLC4GLS3_LC4G4D2N      : bit  absolute CLC4GLS3.2;
  CLC4GLS3_LC4G4D1T      : bit  absolute CLC4GLS3.1;
  CLC4GLS3_LC4G4D1N      : bit  absolute CLC4GLS3.0;
  PPSLOCK                : byte absolute $1E8F;
  PPSLOCK_PPSLOCKED      : bit  absolute PPSLOCK.0;
  INTPPS                 : byte absolute $1E90;
  INTPPS_PORT            : bit  absolute INTPPS.3;
  INTPPS_INTPPS2         : bit  absolute INTPPS.2;
  INTPPS_INTPPS1         : bit  absolute INTPPS.1;
  INTPPS_INTPPS0         : bit  absolute INTPPS.0;
  T0CKIPPS               : byte absolute $1E91;
  T0CKIPPS_T0CKIPPS2     : bit  absolute T0CKIPPS.2;
  T0CKIPPS_T0CKIPPS1     : bit  absolute T0CKIPPS.1;
  T0CKIPPS_T0CKIPPS0     : bit  absolute T0CKIPPS.0;
  T1CKIPPS               : byte absolute $1E92;
  T1CKIPPS_T1CKIPPS4     : bit  absolute T1CKIPPS.4;
  T1CKIPPS_T1CKIPPS3     : bit  absolute T1CKIPPS.3;
  T1CKIPPS_T1CKIPPS2     : bit  absolute T1CKIPPS.2;
  T1CKIPPS_T1CKIPPS1     : bit  absolute T1CKIPPS.1;
  T1CKIPPS_T1CKIPPS0     : bit  absolute T1CKIPPS.0;
  T1GPPS                 : byte absolute $1E93;
  T1GPPS_T1GPPS4         : bit  absolute T1GPPS.4;
  T1GPPS_T1GPPS3         : bit  absolute T1GPPS.3;
  T1GPPS_T1GPPS2         : bit  absolute T1GPPS.2;
  T1GPPS_T1GPPS1         : bit  absolute T1GPPS.1;
  T1GPPS_T1GPPS0         : bit  absolute T1GPPS.0;
  T3CKIPPS               : byte absolute $1E94;
  T3CKIPPS_T3CKIPPS4     : bit  absolute T3CKIPPS.4;
  T3CKIPPS_T3CKIPPS3     : bit  absolute T3CKIPPS.3;
  T3CKIPPS_T3CKIPPS2     : bit  absolute T3CKIPPS.2;
  T3CKIPPS_T3CKIPPS1     : bit  absolute T3CKIPPS.1;
  T3CKIPPS_T3CKIPPS0     : bit  absolute T3CKIPPS.0;
  T3GPPS                 : byte absolute $1E95;
  T3GPPS_T3GPPS4         : bit  absolute T3GPPS.4;
  T3GPPS_T3GPPS3         : bit  absolute T3GPPS.3;
  T3GPPS_T3GPPS2         : bit  absolute T3GPPS.2;
  T3GPPS_T3GPPS1         : bit  absolute T3GPPS.1;
  T3GPPS_T3GPPS0         : bit  absolute T3GPPS.0;
  T5CKIPPS               : byte absolute $1E96;
  T5CKIPPS_T5CKIPPS4     : bit  absolute T5CKIPPS.4;
  T5CKIPPS_T5CKIPPS3     : bit  absolute T5CKIPPS.3;
  T5CKIPPS_T5CKIPPS2     : bit  absolute T5CKIPPS.2;
  T5CKIPPS_T5CKIPPS1     : bit  absolute T5CKIPPS.1;
  T5CKIPPS_T5CKIPPS0     : bit  absolute T5CKIPPS.0;
  T5GPPS                 : byte absolute $1E97;
  T5GPPS_T5GPPS4         : bit  absolute T5GPPS.4;
  T5GPPS_T5GPPS3         : bit  absolute T5GPPS.3;
  T5GPPS_T5GPPS2         : bit  absolute T5GPPS.2;
  T5GPPS_T5GPPS1         : bit  absolute T5GPPS.1;
  T5GPPS_T5GPPS0         : bit  absolute T5GPPS.0;
  T2INPPS                : byte absolute $1E9C;
  T2INPPS_T2INPPS4       : bit  absolute T2INPPS.4;
  T2INPPS_T2INPPS3       : bit  absolute T2INPPS.3;
  T2INPPS_T2INPPS2       : bit  absolute T2INPPS.2;
  T2INPPS_T2INPPS1       : bit  absolute T2INPPS.1;
  T2INPPS_T2INPPS0       : bit  absolute T2INPPS.0;
  T4INPPS                : byte absolute $1E9D;
  T4INPPS_T4INPPS4       : bit  absolute T4INPPS.4;
  T4INPPS_T4INPPS3       : bit  absolute T4INPPS.3;
  T4INPPS_T4INPPS2       : bit  absolute T4INPPS.2;
  T4INPPS_T4INPPS1       : bit  absolute T4INPPS.1;
  T4INPPS_T4INPPS0       : bit  absolute T4INPPS.0;
  T6INPPS                : byte absolute $1E9E;
  T6INPPS_T6INPPS4       : bit  absolute T6INPPS.4;
  T6INPPS_T6INPPS3       : bit  absolute T6INPPS.3;
  T6INPPS_T6INPPS2       : bit  absolute T6INPPS.2;
  T6INPPS_T6INPPS1       : bit  absolute T6INPPS.1;
  T6INPPS_T6INPPS0       : bit  absolute T6INPPS.0;
  CCP1PPS                : byte absolute $1EA1;
  CCP1PPS_CCP1PPS4       : bit  absolute CCP1PPS.4;
  CCP1PPS_CCP1PPS3       : bit  absolute CCP1PPS.3;
  CCP1PPS_CCP1PPS2       : bit  absolute CCP1PPS.2;
  CCP1PPS_CCP1PPS1       : bit  absolute CCP1PPS.1;
  CCP1PPS_CCP1PPS0       : bit  absolute CCP1PPS.0;
  CCP2PPS                : byte absolute $1EA2;
  CCP2PPS_CCP2PPS4       : bit  absolute CCP2PPS.4;
  CCP2PPS_CCP2PPS3       : bit  absolute CCP2PPS.3;
  CCP2PPS_CCP2PPS2       : bit  absolute CCP2PPS.2;
  CCP2PPS_CCP2PPS1       : bit  absolute CCP2PPS.1;
  CCP2PPS_CCP2PPS0       : bit  absolute CCP2PPS.0;
  CCP3PPS                : byte absolute $1EA3;
  CCP3PPS_CCP3PPS4       : bit  absolute CCP3PPS.4;
  CCP3PPS_CCP3PPS3       : bit  absolute CCP3PPS.3;
  CCP3PPS_CCP3PPS2       : bit  absolute CCP3PPS.2;
  CCP3PPS_CCP3PPS1       : bit  absolute CCP3PPS.1;
  CCP3PPS_CCP3PPS0       : bit  absolute CCP3PPS.0;
  CCP4PPS                : byte absolute $1EA4;
  CCP4PPS_CCP4PPS4       : bit  absolute CCP4PPS.4;
  CCP4PPS_CCP4PPS3       : bit  absolute CCP4PPS.3;
  CCP4PPS_CCP4PPS2       : bit  absolute CCP4PPS.2;
  CCP4PPS_CCP4PPS1       : bit  absolute CCP4PPS.1;
  CCP4PPS_CCP4PPS0       : bit  absolute CCP4PPS.0;
  SMT1WINPPS             : byte absolute $1EA9;
  SMT1WINPPS_SMT1WINPPS4 : bit  absolute SMT1WINPPS.4;
  SMT1WINPPS_SMT1WINPPS3 : bit  absolute SMT1WINPPS.3;
  SMT1WINPPS_SMT1WINPPS2 : bit  absolute SMT1WINPPS.2;
  SMT1WINPPS_SMT1WINPPS1 : bit  absolute SMT1WINPPS.1;
  SMT1WINPPS_SMT1WINPPS0 : bit  absolute SMT1WINPPS.0;
  SMT1SIGPPS             : byte absolute $1EAA;
  SMT1SIGPPS_SMT1SIGPPS4 : bit  absolute SMT1SIGPPS.4;
  SMT1SIGPPS_SMT1SIGPPS3 : bit  absolute SMT1SIGPPS.3;
  SMT1SIGPPS_SMT1SIGPPS2 : bit  absolute SMT1SIGPPS.2;
  SMT1SIGPPS_SMT1SIGPPS1 : bit  absolute SMT1SIGPPS.1;
  SMT1SIGPPS_SMT1SIGPPS0 : bit  absolute SMT1SIGPPS.0;
  CWG1PPS                : byte absolute $1EB1;
  CWG1PPS_CWG1PPS4       : bit  absolute CWG1PPS.4;
  CWG1PPS_CWG1PPS3       : bit  absolute CWG1PPS.3;
  CWG1PPS_CWG1PPS2       : bit  absolute CWG1PPS.2;
  CWG1PPS_CWG1PPS1       : bit  absolute CWG1PPS.1;
  CWG1PPS_CWG1PPS0       : bit  absolute CWG1PPS.0;
  CWG2PPS                : byte absolute $1EB2;
  CWG2PPS_CWG2PPS4       : bit  absolute CWG2PPS.4;
  CWG2PPS_CWG2PPS3       : bit  absolute CWG2PPS.3;
  CWG2PPS_CWG2PPS2       : bit  absolute CWG2PPS.2;
  CWG2PPS_CWG2PPS1       : bit  absolute CWG2PPS.1;
  CWG2PPS_CWG2PPS0       : bit  absolute CWG2PPS.0;
  MDCARLPPS              : byte absolute $1EB8;
  MDCARLPPS_MDCARLPPS4   : bit  absolute MDCARLPPS.4;
  MDCARLPPS_MDCARLPPS3   : bit  absolute MDCARLPPS.3;
  MDCARLPPS_MDCARLPPS2   : bit  absolute MDCARLPPS.2;
  MDCARLPPS_MDCARLPPS1   : bit  absolute MDCARLPPS.1;
  MDCARLPPS_MDCARLPPS0   : bit  absolute MDCARLPPS.0;
  MDCARHPPS              : byte absolute $1EB9;
  MDCARHPPS_MDCARHPPS4   : bit  absolute MDCARHPPS.4;
  MDCARHPPS_MDCARHPPS3   : bit  absolute MDCARHPPS.3;
  MDCARHPPS_MDCARHPPS2   : bit  absolute MDCARHPPS.2;
  MDCARHPPS_MDCARHPPS1   : bit  absolute MDCARHPPS.1;
  MDCARHPPS_MDCARHPPS0   : bit  absolute MDCARHPPS.0;
  MDSRCPPS               : byte absolute $1EBA;
  MDSRCPPS_MDSRCPPS4     : bit  absolute MDSRCPPS.4;
  MDSRCPPS_MDSRCPPS3     : bit  absolute MDSRCPPS.3;
  MDSRCPPS_MDSRCPPS2     : bit  absolute MDSRCPPS.2;
  MDSRCPPS_MDSRCPPS1     : bit  absolute MDSRCPPS.1;
  MDSRCPPS_MDSRCPPS0     : bit  absolute MDSRCPPS.0;
  CLCIN0PPS              : byte absolute $1EBB;
  CLCIN0PPS_CLCIN0PPS4   : bit  absolute CLCIN0PPS.4;
  CLCIN0PPS_CLCIN0PPS3   : bit  absolute CLCIN0PPS.3;
  CLCIN0PPS_CLCIN0PPS2   : bit  absolute CLCIN0PPS.2;
  CLCIN0PPS_CLCIN0PPS1   : bit  absolute CLCIN0PPS.1;
  CLCIN0PPS_CLCIN0PPS0   : bit  absolute CLCIN0PPS.0;
  CLCIN1PPS              : byte absolute $1EBC;
  CLCIN1PPS_CLCIN1PPS4   : bit  absolute CLCIN1PPS.4;
  CLCIN1PPS_CLCIN1PPS3   : bit  absolute CLCIN1PPS.3;
  CLCIN1PPS_CLCIN1PPS2   : bit  absolute CLCIN1PPS.2;
  CLCIN1PPS_CLCIN1PPS1   : bit  absolute CLCIN1PPS.1;
  CLCIN1PPS_CLCIN1PPS0   : bit  absolute CLCIN1PPS.0;
  CLCIN2PPS              : byte absolute $1EBD;
  CLCIN2PPS_CLCIN2PPS4   : bit  absolute CLCIN2PPS.4;
  CLCIN2PPS_CLCIN2PPS3   : bit  absolute CLCIN2PPS.3;
  CLCIN2PPS_CLCIN2PPS2   : bit  absolute CLCIN2PPS.2;
  CLCIN2PPS_CLCIN2PPS1   : bit  absolute CLCIN2PPS.1;
  CLCIN2PPS_CLCIN2PPS0   : bit  absolute CLCIN2PPS.0;
  CLCIN3PPS              : byte absolute $1EBE;
  CLCIN3PPS_CLCIN3PPS4   : bit  absolute CLCIN3PPS.4;
  CLCIN3PPS_CLCIN3PPS3   : bit  absolute CLCIN3PPS.3;
  CLCIN3PPS_CLCIN3PPS2   : bit  absolute CLCIN3PPS.2;
  CLCIN3PPS_CLCIN3PPS1   : bit  absolute CLCIN3PPS.1;
  CLCIN3PPS_CLCIN3PPS0   : bit  absolute CLCIN3PPS.0;
  ADACTPPS               : byte absolute $1EC3;
  ADACTPPS_ADACTPPS4     : bit  absolute ADACTPPS.4;
  ADACTPPS_ADACTPPS3     : bit  absolute ADACTPPS.3;
  ADACTPPS_ADACTPPS2     : bit  absolute ADACTPPS.2;
  ADACTPPS_ADACTPPS1     : bit  absolute ADACTPPS.1;
  ADACTPPS_ADACTPPS0     : bit  absolute ADACTPPS.0;
  SSP1CLKPPS             : byte absolute $1EC5;
  SSP1CLKPPS_SSP1CLKPPS4 : bit  absolute SSP1CLKPPS.4;
  SSP1CLKPPS_SSP1CLKPPS3 : bit  absolute SSP1CLKPPS.3;
  SSP1CLKPPS_SSP1CLKPPS2 : bit  absolute SSP1CLKPPS.2;
  SSP1CLKPPS_SSP1CLKPPS1 : bit  absolute SSP1CLKPPS.1;
  SSP1CLKPPS_SSP1CLKPPS0 : bit  absolute SSP1CLKPPS.0;
  SSP1DATPPS             : byte absolute $1EC6;
  SSP1DATPPS_SSP1DATPPS4 : bit  absolute SSP1DATPPS.4;
  SSP1DATPPS_SSP1DATPPS3 : bit  absolute SSP1DATPPS.3;
  SSP1DATPPS_SSP1DATPPS2 : bit  absolute SSP1DATPPS.2;
  SSP1DATPPS_SSP1DATPPS1 : bit  absolute SSP1DATPPS.1;
  SSP1DATPPS_SSP1DATPPS0 : bit  absolute SSP1DATPPS.0;
  SSP1SSPPS              : byte absolute $1EC7;
  SSP1SSPPS_SSP1SSPPS4   : bit  absolute SSP1SSPPS.4;
  SSP1SSPPS_SSP1SSPPS3   : bit  absolute SSP1SSPPS.3;
  SSP1SSPPS_SSP1SSPPS2   : bit  absolute SSP1SSPPS.2;
  SSP1SSPPS_SSP1SSPPS1   : bit  absolute SSP1SSPPS.1;
  SSP1SSPPS_SSP1SSPPS0   : bit  absolute SSP1SSPPS.0;
  SSP2CLKPPS             : byte absolute $1EC8;
  SSP2CLKPPS_SSP2CLKPPS4 : bit  absolute SSP2CLKPPS.4;
  SSP2CLKPPS_SSP2CLKPPS3 : bit  absolute SSP2CLKPPS.3;
  SSP2CLKPPS_SSP2CLKPPS2 : bit  absolute SSP2CLKPPS.2;
  SSP2CLKPPS_SSP2CLKPPS1 : bit  absolute SSP2CLKPPS.1;
  SSP2CLKPPS_SSP2CLKPPS0 : bit  absolute SSP2CLKPPS.0;
  SSP2DATPPS             : byte absolute $1EC9;
  SSP2DATPPS_SSP2DATPPS4 : bit  absolute SSP2DATPPS.4;
  SSP2DATPPS_SSP2DATPPS3 : bit  absolute SSP2DATPPS.3;
  SSP2DATPPS_SSP2DATPPS2 : bit  absolute SSP2DATPPS.2;
  SSP2DATPPS_SSP2DATPPS1 : bit  absolute SSP2DATPPS.1;
  SSP2DATPPS_SSP2DATPPS0 : bit  absolute SSP2DATPPS.0;
  SSP2SSPPS              : byte absolute $1ECA;
  SSP2SSPPS_SSP2SSPPS4   : bit  absolute SSP2SSPPS.4;
  SSP2SSPPS_SSP2SSPPS3   : bit  absolute SSP2SSPPS.3;
  SSP2SSPPS_SSP2SSPPS2   : bit  absolute SSP2SSPPS.2;
  SSP2SSPPS_SSP2SSPPS1   : bit  absolute SSP2SSPPS.1;
  SSP2SSPPS_SSP2SSPPS0   : bit  absolute SSP2SSPPS.0;
  RX1PPS                 : byte absolute $1ECB;
  RX1PPS_RX1DTPPS4       : bit  absolute RX1PPS.4;
  RX1PPS_RX1DTPPS3       : bit  absolute RX1PPS.3;
  RX1PPS_RX1DTPPS2       : bit  absolute RX1PPS.2;
  RX1PPS_RX1DTPPS1       : bit  absolute RX1PPS.1;
  RX1PPS_RX1DTPPS0       : bit  absolute RX1PPS.0;
  CK1PPS                 : byte absolute $1ECC;
  CK1PPS_TX1CKPPS4       : bit  absolute CK1PPS.4;
  CK1PPS_TX1CKPPS3       : bit  absolute CK1PPS.3;
  CK1PPS_TX1CKPPS2       : bit  absolute CK1PPS.2;
  CK1PPS_TX1CKPPS1       : bit  absolute CK1PPS.1;
  CK1PPS_TX1CKPPS0       : bit  absolute CK1PPS.0;
  RA0PPS                 : byte absolute $1F10;
  RA0PPS_RA0PPS5         : bit  absolute RA0PPS.5;
  RA0PPS_RA0PPS4         : bit  absolute RA0PPS.4;
  RA0PPS_RA0PPS3         : bit  absolute RA0PPS.3;
  RA0PPS_RA0PPS2         : bit  absolute RA0PPS.2;
  RA0PPS_RA0PPS1         : bit  absolute RA0PPS.1;
  RA0PPS_RA0PPS0         : bit  absolute RA0PPS.0;
  RA1PPS                 : byte absolute $1F11;
  RA1PPS_RA1PPS5         : bit  absolute RA1PPS.5;
  RA1PPS_RA1PPS4         : bit  absolute RA1PPS.4;
  RA1PPS_RA1PPS3         : bit  absolute RA1PPS.3;
  RA1PPS_RA1PPS2         : bit  absolute RA1PPS.2;
  RA1PPS_RA1PPS1         : bit  absolute RA1PPS.1;
  RA1PPS_RA1PPS0         : bit  absolute RA1PPS.0;
  RA2PPS                 : byte absolute $1F12;
  RA2PPS_RA2PPS5         : bit  absolute RA2PPS.5;
  RA2PPS_RA2PPS4         : bit  absolute RA2PPS.4;
  RA2PPS_RA2PPS3         : bit  absolute RA2PPS.3;
  RA2PPS_RA2PPS2         : bit  absolute RA2PPS.2;
  RA2PPS_RA2PPS1         : bit  absolute RA2PPS.1;
  RA2PPS_RA2PPS0         : bit  absolute RA2PPS.0;
  RA4PPS                 : byte absolute $1F14;
  RA4PPS_RA4PPS5         : bit  absolute RA4PPS.5;
  RA4PPS_RA4PPS4         : bit  absolute RA4PPS.4;
  RA4PPS_RA4PPS3         : bit  absolute RA4PPS.3;
  RA4PPS_RA4PPS2         : bit  absolute RA4PPS.2;
  RA4PPS_RA4PPS1         : bit  absolute RA4PPS.1;
  RA4PPS_RA4PPS0         : bit  absolute RA4PPS.0;
  RA5PPS                 : byte absolute $1F15;
  RA5PPS_RA5PPS5         : bit  absolute RA5PPS.5;
  RA5PPS_RA5PPS4         : bit  absolute RA5PPS.4;
  RA5PPS_RA5PPS3         : bit  absolute RA5PPS.3;
  RA5PPS_RA5PPS2         : bit  absolute RA5PPS.2;
  RA5PPS_RA5PPS1         : bit  absolute RA5PPS.1;
  RA5PPS_RA5PPS0         : bit  absolute RA5PPS.0;
  RB4PPS                 : byte absolute $1F1C;
  RB4PPS_RB4PPS5         : bit  absolute RB4PPS.5;
  RB4PPS_RB4PPS4         : bit  absolute RB4PPS.4;
  RB4PPS_RB4PPS3         : bit  absolute RB4PPS.3;
  RB4PPS_RB4PPS2         : bit  absolute RB4PPS.2;
  RB4PPS_RB4PPS1         : bit  absolute RB4PPS.1;
  RB4PPS_RB4PPS0         : bit  absolute RB4PPS.0;
  RB5PPS                 : byte absolute $1F1D;
  RB5PPS_RB5PPS5         : bit  absolute RB5PPS.5;
  RB5PPS_RB5PPS4         : bit  absolute RB5PPS.4;
  RB5PPS_RB5PPS3         : bit  absolute RB5PPS.3;
  RB5PPS_RB5PPS2         : bit  absolute RB5PPS.2;
  RB5PPS_RB5PPS1         : bit  absolute RB5PPS.1;
  RB5PPS_RB5PPS0         : bit  absolute RB5PPS.0;
  RB6PPS                 : byte absolute $1F1E;
  RB6PPS_RB6PPS5         : bit  absolute RB6PPS.5;
  RB6PPS_RB6PPS4         : bit  absolute RB6PPS.4;
  RB6PPS_RB6PPS3         : bit  absolute RB6PPS.3;
  RB6PPS_RB6PPS2         : bit  absolute RB6PPS.2;
  RB6PPS_RB6PPS1         : bit  absolute RB6PPS.1;
  RB6PPS_RB6PPS0         : bit  absolute RB6PPS.0;
  RB7PPS                 : byte absolute $1F1F;
  RB7PPS_RB7PPS5         : bit  absolute RB7PPS.5;
  RB7PPS_RB7PPS4         : bit  absolute RB7PPS.4;
  RB7PPS_RB7PPS3         : bit  absolute RB7PPS.3;
  RB7PPS_RB7PPS2         : bit  absolute RB7PPS.2;
  RB7PPS_RB7PPS1         : bit  absolute RB7PPS.1;
  RB7PPS_RB7PPS0         : bit  absolute RB7PPS.0;
  RC0PPS                 : byte absolute $1F20;
  RC0PPS_RC0PPS5         : bit  absolute RC0PPS.5;
  RC0PPS_RC0PPS4         : bit  absolute RC0PPS.4;
  RC0PPS_RC0PPS3         : bit  absolute RC0PPS.3;
  RC0PPS_RC0PPS2         : bit  absolute RC0PPS.2;
  RC0PPS_RC0PPS1         : bit  absolute RC0PPS.1;
  RC0PPS_RC0PPS0         : bit  absolute RC0PPS.0;
  RC1PPS                 : byte absolute $1F21;
  RC1PPS_RC1PPS5         : bit  absolute RC1PPS.5;
  RC1PPS_RC1PPS4         : bit  absolute RC1PPS.4;
  RC1PPS_RC1PPS3         : bit  absolute RC1PPS.3;
  RC1PPS_RC1PPS2         : bit  absolute RC1PPS.2;
  RC1PPS_RC1PPS1         : bit  absolute RC1PPS.1;
  RC1PPS_RC1PPS0         : bit  absolute RC1PPS.0;
  RC2PPS                 : byte absolute $1F22;
  RC2PPS_RC2PPS5         : bit  absolute RC2PPS.5;
  RC2PPS_RC2PPS4         : bit  absolute RC2PPS.4;
  RC2PPS_RC2PPS3         : bit  absolute RC2PPS.3;
  RC2PPS_RC2PPS2         : bit  absolute RC2PPS.2;
  RC2PPS_RC2PPS1         : bit  absolute RC2PPS.1;
  RC2PPS_RC2PPS0         : bit  absolute RC2PPS.0;
  RC3PPS                 : byte absolute $1F23;
  RC3PPS_RC3PPS5         : bit  absolute RC3PPS.5;
  RC3PPS_RC3PPS4         : bit  absolute RC3PPS.4;
  RC3PPS_RC3PPS3         : bit  absolute RC3PPS.3;
  RC3PPS_RC3PPS2         : bit  absolute RC3PPS.2;
  RC3PPS_RC3PPS1         : bit  absolute RC3PPS.1;
  RC3PPS_RC3PPS0         : bit  absolute RC3PPS.0;
  RC4PPS                 : byte absolute $1F24;
  RC4PPS_RC4PPS5         : bit  absolute RC4PPS.5;
  RC4PPS_RC4PPS4         : bit  absolute RC4PPS.4;
  RC4PPS_RC4PPS3         : bit  absolute RC4PPS.3;
  RC4PPS_RC4PPS2         : bit  absolute RC4PPS.2;
  RC4PPS_RC4PPS1         : bit  absolute RC4PPS.1;
  RC4PPS_RC4PPS0         : bit  absolute RC4PPS.0;
  RC5PPS                 : byte absolute $1F25;
  RC5PPS_RC5PPS5         : bit  absolute RC5PPS.5;
  RC5PPS_RC5PPS4         : bit  absolute RC5PPS.4;
  RC5PPS_RC5PPS3         : bit  absolute RC5PPS.3;
  RC5PPS_RC5PPS2         : bit  absolute RC5PPS.2;
  RC5PPS_RC5PPS1         : bit  absolute RC5PPS.1;
  RC5PPS_RC5PPS0         : bit  absolute RC5PPS.0;
  RC6PPS                 : byte absolute $1F26;
  RC6PPS_RC6PPS5         : bit  absolute RC6PPS.5;
  RC6PPS_RC6PPS4         : bit  absolute RC6PPS.4;
  RC6PPS_RC6PPS3         : bit  absolute RC6PPS.3;
  RC6PPS_RC6PPS2         : bit  absolute RC6PPS.2;
  RC6PPS_RC6PPS1         : bit  absolute RC6PPS.1;
  RC6PPS_RC6PPS0         : bit  absolute RC6PPS.0;
  RC7PPS                 : byte absolute $1F27;
  RC7PPS_RC7PPS5         : bit  absolute RC7PPS.5;
  RC7PPS_RC7PPS4         : bit  absolute RC7PPS.4;
  RC7PPS_RC7PPS3         : bit  absolute RC7PPS.3;
  RC7PPS_RC7PPS2         : bit  absolute RC7PPS.2;
  RC7PPS_RC7PPS1         : bit  absolute RC7PPS.1;
  RC7PPS_RC7PPS0         : bit  absolute RC7PPS.0;
  ANSELA                 : byte absolute $1F38;
  ANSELA_ANSA5           : bit  absolute ANSELA.5;
  ANSELA_ANSA4           : bit  absolute ANSELA.4;
  ANSELA_ANSA2           : bit  absolute ANSELA.3;
  ANSELA_ANSA1           : bit  absolute ANSELA.2;
  ANSELA_ANSA0           : bit  absolute ANSELA.1;
  WPUA                   : byte absolute $1F39;
  WPUA_WPUA5             : bit  absolute WPUA.6;
  WPUA_WPUA4             : bit  absolute WPUA.5;
  WPUA_WPUA3             : bit  absolute WPUA.4;
  WPUA_WPUA2             : bit  absolute WPUA.3;
  WPUA_WPUA1             : bit  absolute WPUA.2;
  WPUA_WPUA0             : bit  absolute WPUA.1;
  ODCONA                 : byte absolute $1F3A;
  ODCONA_ODCA5           : bit  absolute ODCONA.5;
  ODCONA_ODCA4           : bit  absolute ODCONA.4;
  ODCONA_ODCA2           : bit  absolute ODCONA.3;
  ODCONA_ODCA1           : bit  absolute ODCONA.2;
  ODCONA_ODCA0           : bit  absolute ODCONA.1;
  SLRCONA                : byte absolute $1F3B;
  SLRCONA_SLRA5          : bit  absolute SLRCONA.5;
  SLRCONA_SLRA4          : bit  absolute SLRCONA.4;
  SLRCONA_SLRA2          : bit  absolute SLRCONA.3;
  SLRCONA_SLRA1          : bit  absolute SLRCONA.2;
  SLRCONA_SLRA0          : bit  absolute SLRCONA.1;
  INLVLA                 : byte absolute $1F3C;
  INLVLA_INLVLA5         : bit  absolute INLVLA.6;
  INLVLA_INLVLA4         : bit  absolute INLVLA.5;
  INLVLA_INLVLA3         : bit  absolute INLVLA.4;
  INLVLA_INLVLA2         : bit  absolute INLVLA.3;
  INLVLA_INLVLA1         : bit  absolute INLVLA.2;
  INLVLA_INLVLA0         : bit  absolute INLVLA.1;
  IOCAP                  : byte absolute $1F3D;
  IOCAP_IOCAP5           : bit  absolute IOCAP.6;
  IOCAP_IOCAP4           : bit  absolute IOCAP.5;
  IOCAP_IOCAP3           : bit  absolute IOCAP.4;
  IOCAP_IOCAP2           : bit  absolute IOCAP.3;
  IOCAP_IOCAP1           : bit  absolute IOCAP.2;
  IOCAP_IOCAP0           : bit  absolute IOCAP.1;
  IOCAN                  : byte absolute $1F3E;
  IOCAN_IOCAN5           : bit  absolute IOCAN.6;
  IOCAN_IOCAN4           : bit  absolute IOCAN.5;
  IOCAN_IOCAN3           : bit  absolute IOCAN.4;
  IOCAN_IOCAN2           : bit  absolute IOCAN.3;
  IOCAN_IOCAN1           : bit  absolute IOCAN.2;
  IOCAN_IOCAN0           : bit  absolute IOCAN.1;
  IOCAF                  : byte absolute $1F3F;
  IOCAF_IOCAF5           : bit  absolute IOCAF.6;
  IOCAF_IOCAF4           : bit  absolute IOCAF.5;
  IOCAF_IOCAF3           : bit  absolute IOCAF.4;
  IOCAF_IOCAF2           : bit  absolute IOCAF.3;
  IOCAF_IOCAF1           : bit  absolute IOCAF.2;
  IOCAF_IOCAF0           : bit  absolute IOCAF.1;
  ANSELB                 : byte absolute $1F43;
  ANSELB_ANSB7           : bit  absolute ANSELB.7;
  ANSELB_ANSB6           : bit  absolute ANSELB.6;
  ANSELB_ANSB5           : bit  absolute ANSELB.5;
  ANSELB_ANSB4           : bit  absolute ANSELB.4;
  WPUB                   : byte absolute $1F44;
  WPUB_WPUB7             : bit  absolute WPUB.7;
  WPUB_WPUB6             : bit  absolute WPUB.6;
  WPUB_WPUB5             : bit  absolute WPUB.5;
  WPUB_WPUB4             : bit  absolute WPUB.4;
  ODCONB                 : byte absolute $1F45;
  ODCONB_ODCB7           : bit  absolute ODCONB.7;
  ODCONB_ODCB6           : bit  absolute ODCONB.6;
  ODCONB_ODCB5           : bit  absolute ODCONB.5;
  ODCONB_ODCB4           : bit  absolute ODCONB.4;
  SLRCONB                : byte absolute $1F46;
  SLRCONB_SLRB7          : bit  absolute SLRCONB.7;
  SLRCONB_SLRB6          : bit  absolute SLRCONB.6;
  SLRCONB_SLRB5          : bit  absolute SLRCONB.5;
  SLRCONB_SLRB4          : bit  absolute SLRCONB.4;
  INLVLB                 : byte absolute $1F47;
  INLVLB_INLVLB7         : bit  absolute INLVLB.7;
  INLVLB_INLVLB6         : bit  absolute INLVLB.6;
  INLVLB_INLVLB5         : bit  absolute INLVLB.5;
  INLVLB_INLVLB4         : bit  absolute INLVLB.4;
  IOCBP                  : byte absolute $1F48;
  IOCBP_IOCBP7           : bit  absolute IOCBP.7;
  IOCBP_IOCBP6           : bit  absolute IOCBP.6;
  IOCBP_IOCBP5           : bit  absolute IOCBP.5;
  IOCBP_IOCBP4           : bit  absolute IOCBP.4;
  IOCBN                  : byte absolute $1F49;
  IOCBN_IOCBN7           : bit  absolute IOCBN.7;
  IOCBN_IOCBN6           : bit  absolute IOCBN.6;
  IOCBN_IOCBN5           : bit  absolute IOCBN.5;
  IOCBN_IOCBN4           : bit  absolute IOCBN.4;
  IOCBF                  : byte absolute $1F4A;
  IOCBF_IOCBF7           : bit  absolute IOCBF.7;
  IOCBF_IOCBF6           : bit  absolute IOCBF.6;
  IOCBF_IOCBF5           : bit  absolute IOCBF.5;
  IOCBF_IOCBF4           : bit  absolute IOCBF.4;
  ANSELC                 : byte absolute $1F4E;
  ANSELC_ANSC7           : bit  absolute ANSELC.7;
  ANSELC_ANSC6           : bit  absolute ANSELC.6;
  ANSELC_ANSC5           : bit  absolute ANSELC.5;
  ANSELC_ANSC4           : bit  absolute ANSELC.4;
  ANSELC_ANSC3           : bit  absolute ANSELC.3;
  ANSELC_ANSC2           : bit  absolute ANSELC.2;
  ANSELC_ANSC1           : bit  absolute ANSELC.1;
  ANSELC_ANSC0           : bit  absolute ANSELC.0;
  WPUC                   : byte absolute $1F4F;
  WPUC_WPUC7             : bit  absolute WPUC.7;
  WPUC_WPUC6             : bit  absolute WPUC.6;
  WPUC_WPUC5             : bit  absolute WPUC.5;
  WPUC_WPUC4             : bit  absolute WPUC.4;
  WPUC_WPUC3             : bit  absolute WPUC.3;
  WPUC_WPUC2             : bit  absolute WPUC.2;
  WPUC_WPUC1             : bit  absolute WPUC.1;
  WPUC_WPUC0             : bit  absolute WPUC.0;
  ODCONC                 : byte absolute $1F50;
  ODCONC_ODCC7           : bit  absolute ODCONC.7;
  ODCONC_ODCC6           : bit  absolute ODCONC.6;
  ODCONC_ODCC5           : bit  absolute ODCONC.5;
  ODCONC_ODCC4           : bit  absolute ODCONC.4;
  ODCONC_ODCC3           : bit  absolute ODCONC.3;
  ODCONC_ODCC2           : bit  absolute ODCONC.2;
  ODCONC_ODCC1           : bit  absolute ODCONC.1;
  ODCONC_ODCC0           : bit  absolute ODCONC.0;
  SLRCONC                : byte absolute $1F51;
  SLRCONC_SLRC7          : bit  absolute SLRCONC.7;
  SLRCONC_SLRC6          : bit  absolute SLRCONC.6;
  SLRCONC_SLRC5          : bit  absolute SLRCONC.5;
  SLRCONC_SLRC4          : bit  absolute SLRCONC.4;
  SLRCONC_SLRC3          : bit  absolute SLRCONC.3;
  SLRCONC_SLRC2          : bit  absolute SLRCONC.2;
  SLRCONC_SLRC1          : bit  absolute SLRCONC.1;
  SLRCONC_SLRC0          : bit  absolute SLRCONC.0;
  INLVLC                 : byte absolute $1F52;
  INLVLC_INLVLC7         : bit  absolute INLVLC.7;
  INLVLC_INLVLC6         : bit  absolute INLVLC.6;
  INLVLC_INLVLC5         : bit  absolute INLVLC.5;
  INLVLC_INLVLC4         : bit  absolute INLVLC.4;
  INLVLC_INLVLC3         : bit  absolute INLVLC.3;
  INLVLC_INLVLC2         : bit  absolute INLVLC.2;
  INLVLC_INLVLC1         : bit  absolute INLVLC.1;
  INLVLC_INLVLC0         : bit  absolute INLVLC.0;
  IOCCP                  : byte absolute $1F53;
  IOCCP_IOCCP7           : bit  absolute IOCCP.7;
  IOCCP_IOCCP6           : bit  absolute IOCCP.6;
  IOCCP_IOCCP5           : bit  absolute IOCCP.5;
  IOCCP_IOCCP4           : bit  absolute IOCCP.4;
  IOCCP_IOCCP3           : bit  absolute IOCCP.3;
  IOCCP_IOCCP2           : bit  absolute IOCCP.2;
  IOCCP_IOCCP1           : bit  absolute IOCCP.1;
  IOCCP_IOCCP0           : bit  absolute IOCCP.0;
  IOCCN                  : byte absolute $1F54;
  IOCCN_IOCCN7           : bit  absolute IOCCN.7;
  IOCCN_IOCCN6           : bit  absolute IOCCN.6;
  IOCCN_IOCCN5           : bit  absolute IOCCN.5;
  IOCCN_IOCCN4           : bit  absolute IOCCN.4;
  IOCCN_IOCCN3           : bit  absolute IOCCN.3;
  IOCCN_IOCCN2           : bit  absolute IOCCN.2;
  IOCCN_IOCCN1           : bit  absolute IOCCN.1;
  IOCCN_IOCCN0           : bit  absolute IOCCN.0;
  IOCCF                  : byte absolute $1F55;
  IOCCF_IOCCF7           : bit  absolute IOCCF.7;
  IOCCF_IOCCF6           : bit  absolute IOCCF.6;
  IOCCF_IOCCF5           : bit  absolute IOCCF.5;
  IOCCF_IOCCF4           : bit  absolute IOCCF.4;
  IOCCF_IOCCF3           : bit  absolute IOCCF.3;
  IOCCF_IOCCF2           : bit  absolute IOCCF.2;
  IOCCF_IOCCF1           : bit  absolute IOCCF.1;
  IOCCF_IOCCF0           : bit  absolute IOCCF.0;
  STATUS_SHAD            : byte absolute $1FE4;
  WREG_SHAD              : byte absolute $1FE5;
  BSR_SHAD               : byte absolute $1FE6;
  PCLATH_SHAD            : byte absolute $1FE7;
  FSR0L_SHAD             : byte absolute $1FE8;
  FSR0H_SHAD             : byte absolute $1FE9;
  FSR1L_SHAD             : byte absolute $1FEA;
  FSR1H_SHAD             : byte absolute $1FEB;
  STKPTR                 : byte absolute $1FED;
  STKPTR_STKPTR4         : bit  absolute STKPTR.4;
  STKPTR_STKPTR3         : bit  absolute STKPTR.3;
  STKPTR_STKPTR2         : bit  absolute STKPTR.2;
  STKPTR_STKPTR1         : bit  absolute STKPTR.1;
  STKPTR_STKPTR0         : bit  absolute STKPTR.0;
  TOSL                   : byte absolute $1FEE;
  TOSL_TOSL7             : bit  absolute TOSL.7;
  TOSL_TOSL6             : bit  absolute TOSL.6;
  TOSL_TOSL5             : bit  absolute TOSL.5;
  TOSL_TOSL4             : bit  absolute TOSL.4;
  TOSL_TOSL3             : bit  absolute TOSL.3;
  TOSL_TOSL2             : bit  absolute TOSL.2;
  TOSL_TOSL1             : bit  absolute TOSL.1;
  TOSL_TOSL0             : bit  absolute TOSL.0;
  TOSH                   : byte absolute $1FEF;
  TOSH_TOSH7             : bit  absolute TOSH.7;
  TOSH_TOSH6             : bit  absolute TOSH.6;
  TOSH_TOSH5             : bit  absolute TOSH.5;
  TOSH_TOSH4             : bit  absolute TOSH.4;
  TOSH_TOSH3             : bit  absolute TOSH.3;
  TOSH_TOSH2             : bit  absolute TOSH.2;
  TOSH_TOSH1             : bit  absolute TOSH.1;
  TOSH_TOSH0             : bit  absolute TOSH.0;


  // -- Define RAM state values --

  {$CLEAR_STATE_RAM}

  {$SET_STATE_RAM '000-00E:SFR'}  // INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON, PORTA, PORTB, PORTC
  {$SET_STATE_RAM '012-014:SFR'}  // TRISA, TRISB, TRISC
  {$SET_STATE_RAM '018-01A:SFR'}  // LATA, LATB, LATC
  {$SET_STATE_RAM '020-06F:GPR'} 
  {$SET_STATE_RAM '070-07F:GPR'} 
  {$SET_STATE_RAM '080-080:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '08C-09F:SFR'}  // ADLTHL, ADLTHH, ADUTHL, ADUTHH, ADERRL, ADERRH, ADSTPTL, ADSTPTH, ADFLTRL, ADFLTRH, ADACCL, ADACCH, ADACCU, ADCNT, ADRPT, ADPREVL, ADPREVH, ADRESL, ADRESH, ADPCH
  {$SET_STATE_RAM '0A0-0EF:GPR'} 
  {$SET_STATE_RAM '0F0-0FF:GPR'} 
  {$SET_STATE_RAM '100-100:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '10C-11F:SFR'}  // ADACQL, ADACQH, ADCAP, ADPREL, ADPREH, ADCON0, ADCON1, ADCON2, ADCON3, ADSTAT, ADREF, ADACT, ADCLK, RC1REG, TX1REG, SP1BRGL, SP1BRGH, RC1STA, TX1STA, BAUD1CON
  {$SET_STATE_RAM '120-16F:GPR'} 
  {$SET_STATE_RAM '170-17F:GPR'} 
  {$SET_STATE_RAM '180-180:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '18C-192:SFR'}  // SSP1BUF, SSP1ADD, SSP1MSK, SSP1STAT, SSP1CON1, SSP1CON2, SSP1CON3
  {$SET_STATE_RAM '196-19C:SFR'}  // SSP2BUF, SSP2ADD, SSP2MSK, SSP2STAT, SSP2CON1, SSP2CON2, SSP2CON3
  {$SET_STATE_RAM '1A0-1EF:GPR'} 
  {$SET_STATE_RAM '1F0-1FF:GPR'} 
  {$SET_STATE_RAM '200-200:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '20C-21F:SFR'}  // TMR1L, TMR1H, T1CON, T1GCON, T1GATE, T1CLK, TMR3L, TMR3H, T3CON, T3GCON, T3GATE, T3CLK, TMR5L, TMR5H, T5CON, T5GCON, T5GATE, T5CLK, CCPTMRS0, CCPTMRS1
  {$SET_STATE_RAM '220-26F:GPR'} 
  {$SET_STATE_RAM '270-27F:GPR'} 
  {$SET_STATE_RAM '280-280:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '28C-29D:SFR'}  // T2TMR, T2PR, T2CON, T2HLT, T2CLKCON, T2RST, T4TMR, T4PR, T4CON, T4HLT, T4CLKCON, T4RST, T6TMR, T6PR, T6CON, T6HLT, T6CLKCON, T6RST
  {$SET_STATE_RAM '29F-29F:SFR'}  // ADCPCON0
  {$SET_STATE_RAM '2A0-2EF:GPR'} 
  {$SET_STATE_RAM '2F0-2FF:GPR'} 
  {$SET_STATE_RAM '300-300:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '30C-31B:SFR'}  // CCPR1L, CCPR1H, CCP1CON, CCP1CAP, CCPR2L, CCPR2H, CCP2CON, CCP2CAP, CCPR3L, CCPR3H, CCP3CON, CCP3CAP, CCPR4L, CCPR4H, CCP4CON, CCP4CAP
  {$SET_STATE_RAM '320-36F:GPR'} 
  {$SET_STATE_RAM '370-37F:GPR'} 
  {$SET_STATE_RAM '380-380:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '38C-38E:SFR'}  // PWM6DCL, PWM6DCH, PWM6CON
  {$SET_STATE_RAM '390-392:SFR'}  // PWM7DCL, PWM7DCH, PWM7CON
  {$SET_STATE_RAM '3A0-3EF:GPR'} 
  {$SET_STATE_RAM '3F0-3FF:GPR'} 
  {$SET_STATE_RAM '400-400:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '420-46F:GPR'} 
  {$SET_STATE_RAM '470-47F:GPR'} 
  {$SET_STATE_RAM '480-480:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '48C-49D:SFR'}  // SMT1TMRL, SMT1TMRH, SMT1TMRU, SMT1CPRL, SMT1CPRH, SMT1CPRU, SMT1CPWL, SMT1CPWH, SMT1CPWU, SMT1PRL, SMT1PRH, SMT1PRU, SMT1CON0, SMT1CON1, SMT1STAT, SMT1CLK, SMT1SIG, SMT1WIN
  {$SET_STATE_RAM '4A0-4EF:GPR'} 
  {$SET_STATE_RAM '4F0-4FF:GPR'} 
  {$SET_STATE_RAM '500-500:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '520-56F:GPR'} 
  {$SET_STATE_RAM '570-57F:GPR'} 
  {$SET_STATE_RAM '580-580:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '58C-593:SFR'}  // NCO1ACCL, NCO1ACCH, NCO1ACCU, NCO1INCL, NCO1INCH, NCO1INCU, NCO1CON, NCO1CLK
  {$SET_STATE_RAM '59C-59F:SFR'}  // TMR0L, TMR0H, T0CON0, T0CON1
  {$SET_STATE_RAM '5A0-5EF:GPR'} 
  {$SET_STATE_RAM '5F0-5FF:GPR'} 
  {$SET_STATE_RAM '600-600:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '60C-614:SFR'}  // CWG1CLK, CWG1ISM, CWG1DBR, CWG1DBF, CWG1CON0, CWG1CON1, CWG1AS0, CWG1AS1, CWG1STR
  {$SET_STATE_RAM '616-61E:SFR'}  // CWG2CLK, CWG2ISM, CWG2DBR, CWG2DBF, CWG2CON0, CWG2CON1, CWG2AS0, CWG2AS1, CWG2STR
  {$SET_STATE_RAM '620-66F:GPR'} 
  {$SET_STATE_RAM '670-67F:GPR'} 
  {$SET_STATE_RAM '680-680:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '6A0-6EF:GPR'} 
  {$SET_STATE_RAM '6F0-6FF:GPR'} 
  {$SET_STATE_RAM '700-700:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '70C-714:SFR'}  // PIR0, PIR1, PIR2, PIR3, PIR4, PIR5, PIR6, PIR7, PIR8
  {$SET_STATE_RAM '716-71E:SFR'}  // PIE0, PIE1, PIE2, PIE3, PIE4, PIE5, PIE6, PIE7, PIE8
  {$SET_STATE_RAM '720-76F:GPR'} 
  {$SET_STATE_RAM '770-77F:GPR'} 
  {$SET_STATE_RAM '780-780:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '796-79D:SFR'}  // PMD0, PMD1, PMD2, PMD3, PMD4, PMD5, PMD6, PMD7
  {$SET_STATE_RAM '7A0-7EF:GPR'} 
  {$SET_STATE_RAM '7F0-7FF:GPR'} 
  {$SET_STATE_RAM '800-800:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '80C-814:SFR'}  // WDTCON0, WDTCON1, WDTPSL, WDTPSH, WDTTMR, BORCON, VREGCON, PCON0, PCON1
  {$SET_STATE_RAM '81A-81F:SFR'}  // NVMADRL, NVMADRH, NVMDATL, NVMDATH, NVMCON1, NVMCON2
  {$SET_STATE_RAM '820-86F:GPR'} 
  {$SET_STATE_RAM '870-87F:GPR'} 
  {$SET_STATE_RAM '880-880:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '88C-893:SFR'}  // CPUDOZE, OSCCON1, OSCCON2, OSCCON3, OSCSTAT, OSCEN, OSCTUNE, OSCFRQ
  {$SET_STATE_RAM '895-89B:SFR'}  // CLKRCON, CLKRCLK, MD1CON0, MD1CON1, MD1SRC, MD1CARL, MD1CARH
  {$SET_STATE_RAM '8A0-8EF:GPR'} 
  {$SET_STATE_RAM '8F0-8FF:GPR'} 
  {$SET_STATE_RAM '900-900:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '90C-90C:SFR'}  // FVRCON
  {$SET_STATE_RAM '90E-90F:SFR'}  // DAC1CON0, DAC1CON1
  {$SET_STATE_RAM '91F-91F:SFR'}  // ZCDCON
  {$SET_STATE_RAM '920-96F:GPR'} 
  {$SET_STATE_RAM '970-97F:GPR'} 
  {$SET_STATE_RAM '980-980:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '98F-997:SFR'}  // CMOUT, CM1CON0, CM1CON1, CM1NCH, CM1PCH, CM2CON0, CM2CON1, CM2NCH, CM2PCH
  {$SET_STATE_RAM '9A0-9EF:GPR'} 
  {$SET_STATE_RAM '9F0-9FF:GPR'} 
  {$SET_STATE_RAM 'A00-A00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'A20-A6F:GPR'} 
  {$SET_STATE_RAM 'A70-A7F:GPR'} 
  {$SET_STATE_RAM 'A80-A80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'AA0-AEF:GPR'} 
  {$SET_STATE_RAM 'AF0-AFF:GPR'} 
  {$SET_STATE_RAM 'B00-B00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'B20-B6F:GPR'} 
  {$SET_STATE_RAM 'B70-B7F:GPR'} 
  {$SET_STATE_RAM 'B80-B80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'BA0-BEF:GPR'} 
  {$SET_STATE_RAM 'BF0-BFF:GPR'} 
  {$SET_STATE_RAM 'C00-C00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'C20-C6F:GPR'} 
  {$SET_STATE_RAM 'C70-C7F:GPR'} 
  {$SET_STATE_RAM 'C80-C80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'CA0-CBF:GPR'} 
  {$SET_STATE_RAM 'CF0-CFF:GPR'} 
  {$SET_STATE_RAM 'D00-D00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'D70-D7F:GPR'} 
  {$SET_STATE_RAM 'D80-D80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'DF0-DFF:GPR'} 
  {$SET_STATE_RAM 'E00-E00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'E70-E7F:GPR'} 
  {$SET_STATE_RAM 'E80-E80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'EF0-EFF:GPR'} 
  {$SET_STATE_RAM 'F00-F00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'F70-F7F:GPR'} 
  {$SET_STATE_RAM 'F80-F80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM 'FF0-FFF:GPR'} 
  {$SET_STATE_RAM '1000-1000:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1070-107F:GPR'} 
  {$SET_STATE_RAM '1080-1080:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '10F0-10FF:GPR'} 
  {$SET_STATE_RAM '1100-1100:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1170-117F:GPR'} 
  {$SET_STATE_RAM '1180-1180:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '11F0-11FF:GPR'} 
  {$SET_STATE_RAM '1200-1200:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1270-127F:GPR'} 
  {$SET_STATE_RAM '1280-1280:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '12F0-12FF:GPR'} 
  {$SET_STATE_RAM '1300-1300:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1370-137F:GPR'} 
  {$SET_STATE_RAM '1380-1380:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '13F0-13FF:GPR'} 
  {$SET_STATE_RAM '1400-1400:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1470-147F:GPR'} 
  {$SET_STATE_RAM '1480-1480:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '14F0-14FF:GPR'} 
  {$SET_STATE_RAM '1500-1500:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1570-157F:GPR'} 
  {$SET_STATE_RAM '1580-1580:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '15F0-15FF:GPR'} 
  {$SET_STATE_RAM '1600-1600:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1670-167F:GPR'} 
  {$SET_STATE_RAM '1680-1680:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '16F0-16FF:GPR'} 
  {$SET_STATE_RAM '1700-1700:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1770-177F:GPR'} 
  {$SET_STATE_RAM '1780-1780:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '17F0-17FF:GPR'} 
  {$SET_STATE_RAM '1800-1800:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1870-187F:GPR'} 
  {$SET_STATE_RAM '1880-1880:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '18F0-18FF:GPR'} 
  {$SET_STATE_RAM '1900-1900:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1970-197F:GPR'} 
  {$SET_STATE_RAM '1980-1980:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '19F0-19FF:GPR'} 
  {$SET_STATE_RAM '1A00-1A00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1A70-1A7F:GPR'} 
  {$SET_STATE_RAM '1A80-1A80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1AF0-1AFF:GPR'} 
  {$SET_STATE_RAM '1B00-1B00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1B70-1B7F:GPR'} 
  {$SET_STATE_RAM '1B80-1B80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1BF0-1BFF:GPR'} 
  {$SET_STATE_RAM '1C00-1C00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1C70-1C7F:GPR'} 
  {$SET_STATE_RAM '1C80-1C80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1CF0-1CFF:GPR'} 
  {$SET_STATE_RAM '1D00-1D00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1D70-1D7F:GPR'} 
  {$SET_STATE_RAM '1D80-1D80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1DF0-1DFF:GPR'} 
  {$SET_STATE_RAM '1E00-1E00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1E0F-1E37:SFR'}  // CLCDATA, CLC1CON, CLC1POL, CLC1SEL0, CLC1SEL1, CLC1SEL2, CLC1SEL3, CLC1GLS0, CLC1GLS1, CLC1GLS2, CLC1GLS3, CLC2CON, CLC2POL, CLC2SEL0, CLC2SEL1, CLC2SEL2, CLC2SEL3, CLC2GLS0, CLC2GLS1, CLC2GLS2, CLC2GLS3, CLC3CON, CLC3POL, CLC3SEL0, CLC3SEL1, CLC3SEL2, CLC3SEL3, CLC3GLS0, CLC3GLS1, CLC3GLS2, CLC3GLS3, CLC4CON, CLC4POL, CLC4SEL0, CLC4SEL1, CLC4SEL2, CLC4SEL3, CLC4GLS0, CLC4GLS1, CLC4GLS2, CLC4GLS3
  {$SET_STATE_RAM '1E70-1E7F:GPR'} 
  {$SET_STATE_RAM '1E80-1E80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1E8F-1E97:SFR'}  // PPSLOCK, INTPPS, T0CKIPPS, T1CKIPPS, T1GPPS, T3CKIPPS, T3GPPS, T5CKIPPS, T5GPPS
  {$SET_STATE_RAM '1E9C-1E9E:SFR'}  // T2INPPS, T4INPPS, T6INPPS
  {$SET_STATE_RAM '1EA1-1EA4:SFR'}  // CCP1PPS, CCP2PPS, CCP3PPS, CCP4PPS
  {$SET_STATE_RAM '1EA9-1EAA:SFR'}  // SMT1WINPPS, SMT1SIGPPS
  {$SET_STATE_RAM '1EB1-1EB2:SFR'}  // CWG1PPS, CWG2PPS
  {$SET_STATE_RAM '1EB8-1EBE:SFR'}  // MDCARLPPS, MDCARHPPS, MDSRCPPS, CLCIN0PPS, CLCIN1PPS, CLCIN2PPS, CLCIN3PPS
  {$SET_STATE_RAM '1EC3-1EC3:SFR'}  // ADACTPPS
  {$SET_STATE_RAM '1EC5-1ECC:SFR'}  // SSP1CLKPPS, SSP1DATPPS, SSP1SSPPS, SSP2CLKPPS, SSP2DATPPS, SSP2SSPPS, RX1PPS, CK1PPS
  {$SET_STATE_RAM '1EF0-1EFF:GPR'} 
  {$SET_STATE_RAM '1F00-1F00:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1F10-1F12:SFR'}  // RA0PPS, RA1PPS, RA2PPS
  {$SET_STATE_RAM '1F14-1F15:SFR'}  // RA4PPS, RA5PPS
  {$SET_STATE_RAM '1F1C-1F27:SFR'}  // RB4PPS, RB5PPS, RB6PPS, RB7PPS, RC0PPS, RC1PPS, RC2PPS, RC3PPS, RC4PPS, RC5PPS, RC6PPS, RC7PPS
  {$SET_STATE_RAM '1F38-1F3F:SFR'}  // ANSELA, WPUA, ODCONA, SLRCONA, INLVLA, IOCAP, IOCAN, IOCAF
  {$SET_STATE_RAM '1F43-1F4A:SFR'}  // ANSELB, WPUB, ODCONB, SLRCONB, INLVLB, IOCBP, IOCBN, IOCBF
  {$SET_STATE_RAM '1F4E-1F55:SFR'}  // ANSELC, WPUC, ODCONC, SLRCONC, INLVLC, IOCCP, IOCCN, IOCCF
  {$SET_STATE_RAM '1F70-1F7F:GPR'} 
  {$SET_STATE_RAM '1F80-1F80:SFR'}  // mapped to INDF0
  {$SET_STATE_RAM '1FE4-1FEB:SFR'}  // STATUS_SHAD, WREG_SHAD, BSR_SHAD, PCLATH_SHAD, FSR0L_SHAD, FSR0H_SHAD, FSR1L_SHAD, FSR1H_SHAD
  {$SET_STATE_RAM '1FED-1FEF:SFR'}  // STKPTR, TOSL, TOSH
  {$SET_STATE_RAM '1FF0-1FFF:GPR'} 


  // -- Define mapped RAM --

  {$SET_MAPPED_RAM '080-08B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '0F0-0FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '100-10B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1000-100B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1070-107F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1080-108B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '10F0-10FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1100-110B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1170-117F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1180-118B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '11F0-11FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1200-120B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1270-127F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1280-128B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '12F0-12FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1300-130B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1370-137F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1380-138B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '13F0-13FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1400-140B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1470-147F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1480-148B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '14F0-14FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1500-150B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1570-157F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1580-158B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '15F0-15FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1600-160B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1670-167F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1680-168B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '16F0-16FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '170-17F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1700-170B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1770-177F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1780-178B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '17F0-17FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '180-18B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1800-180B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1870-187F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1880-188B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '18F0-18FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1900-190B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1970-197F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1980-198B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '19F0-19FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1A00-1A0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1A70-1A7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1A80-1A8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1AF0-1AFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1B00-1B0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1B70-1B7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1B80-1B8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1BF0-1BFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1C00-1C0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1C70-1C7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1C80-1C8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1CF0-1CFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1D00-1D0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1D70-1D7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1D80-1D8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1DF0-1DFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1E00-1E0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1E70-1E7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1E80-1E8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1EF0-1EFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1F0-1FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1F00-1F0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1F70-1F7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '1F80-1F8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '1FF0-1FFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '200-20B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '270-27F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '280-28B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '2F0-2FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '300-30B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '370-37F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '380-38B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '3F0-3FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '400-40B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '470-47F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '480-48B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '4F0-4FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '500-50B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '570-57F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '580-58B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '5F0-5FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '600-60B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '670-67F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '680-68B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '6F0-6FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '700-70B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '770-77F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '780-78B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '7F0-7FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '800-80B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '870-87F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '880-88B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '8F0-8FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '900-90B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '970-97F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM '980-98B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM '9F0-9FF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'A00-A0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'A70-A7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'A80-A8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'AF0-AFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'B00-B0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'B70-B7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'B80-B8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'BF0-BFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'C00-C0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'C70-C7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'C80-C8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'CF0-CFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'D00-D0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'D70-D7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'D80-D8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'DF0-DFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'E00-E0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'E70-E7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'E80-E8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'EF0-EFF:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'F00-F0B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'F70-F7F:bnk0'} // maps to area 070-07F (bank 0)
  {$SET_MAPPED_RAM 'F80-F8B:bnk0'} // maps to INDF0, INDF1, PCL, STATUS, FSR0L, FSR0H, FSR1L, FSR1H, BSR, WREG, PCLATH, INTCON (bank 0)
  {$SET_MAPPED_RAM 'FF0-FFF:bnk0'} // maps to area 070-07F (bank 0)


  // -- Un-implemented fields --

  {$SET_UNIMP_BITS '003:1F'} // STATUS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '008:3F'} // BSR bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00A:7F'} // PCLATH bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00B:C1'} // INTCON bits 5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00C:3F'} // PORTA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '00D:F0'} // PORTB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '012:3F'} // TRISA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '013:F0'} // TRISB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '018:3F'} // LATA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '019:F0'} // LATB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '09F:3F'} // ADPCH bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '10D:1F'} // ADACQH bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '10E:1F'} // ADCAP bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '110:1F'} // ADPREH bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '111:DD'} // ADCON0 bits 5,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '112:F9'} // ADCON1 bits 2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '114:7F'} // ADCON3 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '115:F7'} // ADSTAT bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '117:1F'} // ADACT bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '118:3F'} // ADCLK bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '11F:DB'} // BAUD1CON bits 5,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '20E:37'} // T1CON bits 7,6,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '20F:FC'} // T1GCON bits 1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '210:1F'} // T1GATE bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '211:1F'} // T1CLK bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '214:37'} // T3CON bits 7,6,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '215:FC'} // T3GCON bits 1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '216:1F'} // T3GATE bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '217:1F'} // T3CLK bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '21A:37'} // T5CON bits 7,6,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '21B:FC'} // T5GCON bits 1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '21C:1F'} // T5GATE bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '21D:1F'} // T5CLK bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '21F:3F'} // CCPTMRS1 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '290:0F'} // T2CLKCON bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '291:1F'} // T2RST bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '296:0F'} // T4CLKCON bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '297:1F'} // T4RST bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '29C:0F'} // T6CLKCON bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '29D:1F'} // T6RST bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '29F:81'} // ADCPCON0 bits 6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '30E:BF'} // CCP1CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '30F:07'} // CCP1CAP bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '312:BF'} // CCP2CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '313:07'} // CCP2CAP bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '316:BF'} // CCP3CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '317:07'} // CCP3CAP bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '31A:BF'} // CCP4CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '31B:07'} // CCP4CAP bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '38C:C0'} // PWM6DCL bits 5,4,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '38E:B0'} // PWM6CON bits 6,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '390:C0'} // PWM7DCL bits 5,4,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '392:B0'} // PWM7CON bits 6,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '498:BF'} // SMT1CON0 bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '499:CF'} // SMT1CON1 bits 5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '49A:E7'} // SMT1STAT bits 4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '49B:07'} // SMT1CLK bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '49C:1F'} // SMT1SIG bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '49D:1F'} // SMT1WIN bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '58E:0F'} // NCO1ACCU bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '591:0F'} // NCO1INCU bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '592:B1'} // NCO1CON bits 6,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '593:EF'} // NCO1CLK bit 4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '59E:BF'} // T0CON0 bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '60C:01'} // CWG1CLK bits 7,6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '60D:0F'} // CWG1ISM bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '60E:3F'} // CWG1DBR bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '60F:3F'} // CWG1DBF bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '610:C7'} // CWG1CON0 bits 5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '611:2F'} // CWG1CON1 bits 7,6,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '612:FC'} // CWG1AS0 bits 1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '613:7F'} // CWG1AS1 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '616:01'} // CWG2CLK bits 7,6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '617:0F'} // CWG2ISM bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '618:3F'} // CWG2DBR bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '619:3F'} // CWG2DBF bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '61A:C7'} // CWG2CON0 bits 5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '61B:2F'} // CWG2CON1 bits 7,6,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '61C:FC'} // CWG2AS0 bits 1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '61D:7F'} // CWG2AS1 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '70C:31'} // PIR0 bits 7,6,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '70D:C3'} // PIR1 bits 5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '70E:43'} // PIR2 bits 7,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '70F:3F'} // PIR3 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '710:3F'} // PIR4 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '711:F7'} // PIR5 bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '712:0F'} // PIR6 bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '713:33'} // PIR7 bits 7,6,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '714:07'} // PIR8 bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '716:31'} // PIE0 bits 7,6,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '717:C3'} // PIE1 bits 5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '718:43'} // PIE2 bits 7,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '719:3F'} // PIE3 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '71A:3F'} // PIE4 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '71B:F7'} // PIE5 bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '71C:0F'} // PIE6 bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '71D:33'} // PIE7 bits 7,6,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '71E:07'} // PIE8 bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '796:C7'} // PMD0 bits 5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '797:7F'} // PMD1 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '798:80'} // PMD2 bits 6,5,4,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '799:67'} // PMD3 bits 7,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '79A:6F'} // PMD4 bits 7,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '79B:60'} // PMD5 bits 7,4,3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '79C:13'} // PMD6 bits 7,6,5,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '79D:3F'} // PMD7 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '80C:3F'} // WDTCON0 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '80D:77'} // WDTCON1 bits 7,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '810:7F'} // WDTTMR bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '811:81'} // BORCON bits 6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '812:02'} // VREGCON bits 7,6,5,4,3,2,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '814:02'} // PCON1 bits 7,6,5,4,3,2,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '81B:7F'} // NVMADRH bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '81D:3F'} // NVMDATH bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '81E:7F'} // NVMCON1 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '88C:F7'} // CPUDOZE bit 3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '88D:7F'} // OSCCON1 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '88E:7F'} // OSCCON2 bit 7 un-implemented (read as 0)
  {$SET_UNIMP_BITS '88F:D8'} // OSCCON3 bits 5,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '890:FD'} // OSCSTAT bit 1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '891:FC'} // OSCEN bits 1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '892:3F'} // OSCTUNE bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '893:07'} // OSCFRQ bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '895:9F'} // CLKRCON bits 6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '896:0F'} // CLKRCLK bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '897:B1'} // MD1CON0 bits 6,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '898:33'} // MD1CON1 bits 7,6,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '899:1F'} // MD1SRC bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '89A:0F'} // MD1CARL bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '89B:0F'} // MD1CARH bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '90E:AD'} // DAC1CON0 bits 6,4,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '90F:1F'} // DAC1CON1 bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '91F:B3'} // ZCDCON bits 6,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '98F:03'} // CMOUT bits 7,6,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '990:D3'} // CM1CON0 bits 5,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '991:03'} // CM1CON1 bits 7,6,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '992:07'} // CM1NCH bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '993:07'} // CM1PCH bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '994:D3'} // CM2CON0 bits 5,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '995:03'} // CM2CON1 bits 7,6,5,4,3,2 un-implemented (read as 0)
  {$SET_UNIMP_BITS '996:07'} // CM2NCH bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '997:07'} // CM2PCH bits 7,6,5,4,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E0F:0F'} // CLCDATA bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E10:BF'} // CLC1CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E11:8F'} // CLC1POL bits 6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E12:3F'} // CLC1SEL0 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E13:3F'} // CLC1SEL1 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E14:3F'} // CLC1SEL2 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E15:3F'} // CLC1SEL3 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E1A:BF'} // CLC2CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E1B:8F'} // CLC2POL bits 6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E1C:3F'} // CLC2SEL0 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E1D:3F'} // CLC2SEL1 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E1E:3F'} // CLC2SEL2 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E1F:3F'} // CLC2SEL3 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E24:BF'} // CLC3CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E25:8F'} // CLC3POL bits 6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E26:3F'} // CLC3SEL0 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E27:3F'} // CLC3SEL1 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E28:3F'} // CLC3SEL2 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E29:3F'} // CLC3SEL3 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E2E:BF'} // CLC4CON bit 6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E2F:8F'} // CLC4POL bits 6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E30:3F'} // CLC4SEL0 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E31:3F'} // CLC4SEL1 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E32:3F'} // CLC4SEL2 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E33:3F'} // CLC4SEL3 bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E8F:01'} // PPSLOCK bits 7,6,5,4,3,2,1 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E90:0F'} // INTPPS bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E91:0F'} // T0CKIPPS bits 7,6,5,4 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E92:1F'} // T1CKIPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E93:1F'} // T1GPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E94:1F'} // T3CKIPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E95:1F'} // T3GPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E96:1F'} // T5CKIPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E97:1F'} // T5GPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E9C:1F'} // T2INPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E9D:1F'} // T4INPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1E9E:1F'} // T6INPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EA1:1F'} // CCP1PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EA2:1F'} // CCP2PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EA3:1F'} // CCP3PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EA4:1F'} // CCP4PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EA9:1F'} // SMT1WINPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EAA:1F'} // SMT1SIGPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EB1:1F'} // CWG1PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EB2:1F'} // CWG2PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EB8:1F'} // MDCARLPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EB9:1F'} // MDCARHPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EBA:1F'} // MDSRCPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EBB:1F'} // CLCIN0PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EBC:1F'} // CLCIN1PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EBD:1F'} // CLCIN2PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EBE:1F'} // CLCIN3PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EC3:1F'} // ADACTPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EC5:1F'} // SSP1CLKPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EC6:1F'} // SSP1DATPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EC7:1F'} // SSP1SSPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EC8:1F'} // SSP2CLKPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1EC9:1F'} // SSP2DATPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1ECA:1F'} // SSP2SSPPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1ECB:1F'} // RX1PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1ECC:1F'} // CK1PPS bits 7,6,5 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F10:3F'} // RA0PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F11:3F'} // RA1PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F12:3F'} // RA2PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F14:3F'} // RA4PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F15:3F'} // RA5PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F1C:3F'} // RB4PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F1D:3F'} // RB5PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F1E:3F'} // RB6PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F1F:3F'} // RB7PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F20:3F'} // RC0PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F21:3F'} // RC1PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F22:3F'} // RC2PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F23:3F'} // RC3PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F24:3F'} // RC4PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F25:3F'} // RC5PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F26:3F'} // RC6PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F27:3F'} // RC7PPS bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F38:37'} // ANSELA bits 7,6,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F39:3F'} // WPUA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F3A:37'} // ODCONA bits 7,6,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F3B:37'} // SLRCONA bits 7,6,3 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F3C:3F'} // INLVLA bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F3D:3F'} // IOCAP bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F3E:3F'} // IOCAN bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F3F:3F'} // IOCAF bits 7,6 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F43:F0'} // ANSELB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F44:F0'} // WPUB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F45:F0'} // ODCONB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F46:F0'} // SLRCONB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F47:F0'} // INLVLB bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F48:F0'} // IOCBP bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F49:F0'} // IOCBN bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1F4A:F0'} // IOCBF bits 3,2,1,0 un-implemented (read as 0)
  {$SET_UNIMP_BITS '1FED:1F'} // STKPTR bits 7,6,5 un-implemented (read as 0)


  // -- PIN mapping --

  // Pin  1 : RA0/ANA0/C1IN0+/DAC1OUT1/ICDDAT/ICSPDAT
  // Pin  2 : RA1/ANA1/ADCVREF+/C1IN0-/C2IN0-/DAC1VREF+/MDSRC/SS2_n/ICDCLK/ICSPCLK
  // Pin  3 : RA2/ANA2/T0CKI/CWG1IN/CWG2IN/ZCD1/CLCIN0/INT0
  // Pin  4 : RA3/MCLR_n/VPP
  // Pin  5 : RA4/ANA4/T1G/SMT1WIN/CCP4IN/SOSCO/CLKOUT/OSC2
  // Pin  6 : RA5/ANA5/T1CKI/T2IN/SMT1SIG/SOSCI/CLKIN/OSC1
  // Pin  7 : RB4/ANB4/T5G/SDI1/SDA1/CLCIN2
  // Pin  8 : RB5/ANB5/CCP3IN/SCK2/SCL2/RX1/DT1/CLCIN3
  // Pin  9 : RB6/ANB6/SCK1/SCL1
  // Pin 10 : RB7/ANB7/T6IN/SDI2/SDA2/CK1
  // Pin 11 : RC0/ANC0/C2IN0+/T3CKI/T3G
  // Pin 12 : RC1/ANC1/C1IN1-/C2IN1-
  // Pin 13 : RC2/ANC2/ADACT/C1IN2-/C2IN2-/MDCARL/T5CKI
  // Pin 14 : RC3/ANC3/C1IN3-/C2IN3-/CCP2IN/CLCIN1
  // Pin 15 : RC4/ANC4
  // Pin 16 : RC5/ANC5/MDCARH/T4IN/CCP1IN
  // Pin 17 : RC6/ANC6/SS1_n
  // Pin 18 : RC7/ANC7
  // Pin 19 : VDD
  // Pin 20 : VSS


  // -- RAM to PIN mapping --

  {$MAP_RAM_TO_PIN '00C:1-1,2-2,3-3,4-4,5-5,6-6'} // PORTA
  {$MAP_RAM_TO_PIN '00D:4-7,5-8,6-9,7-10'} // PORTB
  {$MAP_RAM_TO_PIN '00E:0-11,1-12,2-13,3-14,4-15,5-16,6-17,7-18'} // PORTC


  // -- Bits Configuration --

  // FEXTOSC : External Oscillator mode selection bits
  {$define _FEXTOSC_ECH      = $3FFF}  // EC above 8MHz; PFM set to high power
  {$define _FEXTOSC_ECM      = $3FFE}  // EC for 500kHz to 8MHz; PFM set to medium power
  {$define _FEXTOSC_ECL      = $3FFD}  // EC below 500kHz; PFM set to low power
  {$define _FEXTOSC_OFF      = $3FFC}  // Oscillator not enabled
  {$define _FEXTOSC_RESERVED = $3FFB}  // Reserved
  {$define _FEXTOSC_HS       = $3FFA}  // HS (crystal oscillator) above 4MHz; PFM set to high power
  {$define _FEXTOSC_XT       = $3FF9}  // XT (crystal oscillator) above 500kHz, below 4MHz; PFM set to medium power
  {$define _FEXTOSC_LP       = $3FF8}  // LP (crystal oscillator) optimized for 32.768kHz; PFM set to low power

  // RSTOSC : Power-up default value for COSC bits
  {$define _RSTOSC_EXT1X     = $3FFF}  // EXTOSC operating per FEXTOSC bits
  {$define _RSTOSC_HFINT1    = $3FEF}  // HFINTOSC (1MHz)
  {$define _RSTOSC_LFINT     = $3FDF}  // LFINTOSC
  {$define _RSTOSC_SOSC      = $3FCF}  // SOSC
  {$define _RSTOSC_RESERVED  = $3FBF}  // Reserved
  {$define _RSTOSC_EXT4X     = $3FAF}  // EXTOSC with 4x PLL, with EXTOSC operating per FEXTOSC bits
  {$define _RSTOSC_HFINTPLL  = $3F9F}  // HFINTOSC with 2x PLL, with OSCFRQ = 16 MHz and CDIV = 1:1 (FOSC = 32 MHz)
  {$define _RSTOSC_HFINT32   = $3F8F}  // HFINTOSC with OSCFRQ= 32 MHz and CDIV = 1:1

  // CLKOUTEN : Clock Out Enable bit
  {$define _CLKOUTEN_ON      = $3EFF}  // CLKOUT function is enabled; FOSC/4 clock appears at OSC2
  {$define _CLKOUTEN_OFF     = $3FFF}  // CLKOUT function is disabled; i/o or oscillator function on OSC2

  // CSWEN : Clock Switch Enable bit
  {$define _CSWEN_ON         = $3FFF}  // Writing to NOSC and NDIV is allowed
  {$define _CSWEN_OFF        = $37FF}  // The NOSC and NDIV bits cannot be changed by user software

  // FCMEN : Fail-Safe Clock Monitor Enable bit
  {$define _FCMEN_ON         = $3FFF}  // FSCM timer enabled
  {$define _FCMEN_OFF        = $1FFF}  // FSCM timer disabled

  // MCLRE : Master Clear Enable bit
  {$define _MCLRE_ON         = $3FFF}  // MCLR pin is Master Clear function
  {$define _MCLRE_OFF        = $3FFE}  // MCLR pin function is port defined function

  // PWRTS : Power-up Timer Enable bit
  {$define _PWRTS_OFF        = $3FFF}  // PWRT disabled
  {$define _PWRTS_PWRT_64    = $3FFD}  // PWRT set at 64 ms
  {$define _PWRTS_PWRT_16    = $3FFB}  // PWRT set at 16 ms
  {$define _PWRTS_PWRT_1     = $3FF9}  // PWRT set at 1 ms

  // LPBOREN : Low-Power BOR enable bit
  {$define _LPBOREN_OFF      = $3FFF}  // ULPBOR disabled
  {$define _LPBOREN_ON       = $3FDF}  // ULPBOR enabled

  // BOREN : Brown-out reset enable bits
  {$define _BOREN_ON         = $3FFF}  // Brown-out Reset Enabled, SBOREN bit is ignored
  {$define _BOREN_NSLEEP     = $3FBF}  // Brown-out Reset enabled while running, disabled in sleep; SBOREN is ignored
  {$define _BOREN_SBOREN     = $3F7F}  // Brown-out reset enabled according to SBOREN bit
  {$define _BOREN_OFF        = $3F3F}  // Brown-out reset disabled

  // BORV : Brown-out Reset Voltage Selection
  {$define _BORV_LO          = $3FFF}  // Brown-out Reset Voltage (VBOR) set to 2.45V
  {$define _BORV_HI          = $3DFF}  // Brown-out Reset Voltage (VBOR) is set to 2.7V

  // ZCD : Zero-cross detect disable
  {$define _ZCD_OFF          = $3FFF}  // Zero-cross detect circuit is disabled at POR.
  {$define _ZCD_ON           = $3BFF}  // Zero-cross detect circuit is always enabled

  // PPS1WAY : Peripheral Pin Select one-way control
  {$define _PPS1WAY_ON       = $3FFF}  // The PPSLOCK bit can be cleared and set only once in software
  {$define _PPS1WAY_OFF      = $37FF}  // The PPSLOCK bit can be set and cleared repeatedly by software

  // STVREN : Stack Overflow/Underflow Reset Enable bit
  {$define _STVREN_ON        = $3FFF}  // Stack Overflow or Underflow will cause a reset
  {$define _STVREN_OFF       = $2FFF}  // Stack Overflow or Underflow will not cause a reset

  // WDTCPS : WDT Period Select bits
  {$define _WDTCPS_WDTCPS_0  = $3FE0}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_1  = $3FE1}  // Divider ratio 1:64
  {$define _WDTCPS_WDTCPS_2  = $3FE2}  // Divider ratio 1:128
  {$define _WDTCPS_WDTCPS_3  = $3FE3}  // Divider ratio 1:256
  {$define _WDTCPS_WDTCPS_4  = $3FE4}  // Divider ratio 1:512
  {$define _WDTCPS_WDTCPS_5  = $3FE5}  // Divider ratio 1:1024
  {$define _WDTCPS_WDTCPS_6  = $3FE6}  // Divider ratio 1:2048
  {$define _WDTCPS_WDTCPS_7  = $3FE7}  // Divider ratio 1:4096
  {$define _WDTCPS_WDTCPS_8  = $3FE8}  // Divider ratio 1:8192
  {$define _WDTCPS_WDTCPS_9  = $3FE9}  // Divider ratio 1:16384
  {$define _WDTCPS_WDTCPS_10 = $3FEA}  // Divider ratio 1:32768
  {$define _WDTCPS_WDTCPS_11 = $3FEB}  // Divider ratio 1:65536
  {$define _WDTCPS_WDTCPS_12 = $3FEC}  // Divider ratio 1:131072
  {$define _WDTCPS_WDTCPS_13 = $3FED}  // Divider ratio 1:262144
  {$define _WDTCPS_WDTCPS_14 = $3FEE}  // Divider ratio 1:524299
  {$define _WDTCPS_WDTCPS_15 = $3FEF}  // Divider ratio 1:1048576
  {$define _WDTCPS_WDTCPS_16 = $3FF0}  // Divider ratio 1:2097152
  {$define _WDTCPS_WDTCPS_17 = $3FF1}  // Divider ratio 1:4194304
  {$define _WDTCPS_WDTCPS_18 = $3FF2}  // Divider ratio 1:8388608
  {$define _WDTCPS_WDTCPS_19 = $3FF3}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_20 = $3FF4}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_21 = $3FF5}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_22 = $3FF6}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_23 = $3FF7}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_24 = $3FF8}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_25 = $3FF9}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_26 = $3FFA}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_27 = $3FFB}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_28 = $3FFC}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_29 = $3FFD}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_30 = $3FFE}  // Divider ratio 1:32
  {$define _WDTCPS_WDTCPS_31 = $3FFF}  // Divider ratio 1:65536; software control of WDTPS

  // WDTE : WDT operating mode
  {$define _WDTE_OFF         = $3F9F}  // WDT Disabled, SWDTEN is ignored
  {$define _WDTE_SWDTEN      = $3FBF}  // WDT enabled/disabled by SWDTEN bit in WDTCON0
  {$define _WDTE_NSLEEP      = $3FDF}  // WDT enabled while sleep=0, suspended when sleep=1; SWDTEN ignored
  {$define _WDTE_ON          = $3FFF}  // WDT enabled regardless of sleep; SWDTEN ignored

  // WDTCWS : WDT Window Select bits
  {$define _WDTCWS_WDTCWS_0  = $38FF}  // window delay = 87.5 percent of time; no software control; keyed access required
  {$define _WDTCWS_WDTCWS_1  = $39FF}  // window delay = 75 percent of time; no software control; keyed access required
  {$define _WDTCWS_WDTCWS_2  = $3AFF}  // window delay = 62.5 percent of time; no software control; keyed access required
  {$define _WDTCWS_WDTCWS_3  = $3BFF}  // window delay = 50 percent of time; no software control; keyed access required
  {$define _WDTCWS_WDTCWS_4  = $3CFF}  // window delay = 37.5 percent of time; no software control; keyed access required
  {$define _WDTCWS_WDTCWS_5  = $3DFF}  // window delay = 25 percent of time; no software control; keyed access required
  {$define _WDTCWS_WDTCWS_6  = $3EFF}  // window always open (100%); no software control; keyed access required
  {$define _WDTCWS_WDTCWS_7  = $3FFF}  // window always open (100%); software control; keyed access not required

  // WDTCCS : WDT input clock selector
  {$define _WDTCCS_LFINTOSC  = $07FF}  // WDT reference clock is the 31.0kHz LFINTOSC output
  {$define _WDTCCS_HFINTOSC  = $0FFF}  // WDT reference clock is the 31.25 kHz HFINTOSC
  {$define _WDTCCS_SOSC      = $17FF}  // WDT reference clock is the 32kHz secondary oscillator
  {$define _WDTCCS_SC        = $3FFF}  // Software Control

  // BBSIZE : Boot Block Size Selection bits
  {$define _BBSIZE_BB512     = $3FFF}  // 512 words boot block size
  {$define _BBSIZE_BB1K      = $3FFE}  // 1024 words boot block size
  {$define _BBSIZE_BB2K      = $3FFD}  // 2048 words boot block size
  {$define _BBSIZE_BB4K      = $3FFC}  // 4096 words boot block size
  {$define _BBSIZE_BB8K      = $3FFB}  // 8192 words boot block size
  {$define _BBSIZE_BB16K     = $3FFA}  // * half of user program memory
  {$define _BBSIZE_BB32K     = $3FF9}  // * half of user program memory
  {$define _BBSIZE_BB64K     = $3FF8}  // * half of user program memory

  // BBEN : Boot Block Enable bit
  {$define _BBEN_OFF         = $3FFF}  // Boot Block disabled
  {$define _BBEN_ON          = $3FF7}  // Boot Block enabled

  // SAFEN : SAF Enable bit
  {$define _SAFEN_OFF        = $3FFF}  // SAF disabled
  {$define _SAFEN_ON         = $3FEF}  // SAF enabled

  // WRTAPP : Application Block Write Protection bit
  {$define _WRTAPP_OFF       = $3FFF}  // Application Block not write protected
  {$define _WRTAPP_ON        = $3F7F}  // Application Block write protected

  // WRTB : Boot Block Write Protection bit
  {$define _WRTB_OFF         = $3FFF}  // Boot Block not write protected
  {$define _WRTB_ON          = $3EFF}  // Boot Block write protected

  // WRTC : Configuration Register Write Protection bit
  {$define _WRTC_OFF         = $3FFF}  // Configuration Register not write protected
  {$define _WRTC_ON          = $3DFF}  // Configuration Register write protected

  // WRTD : Data EEPROM write protection bit
  {$define _WRTD_OFF         = $3FFF}  // Data EEPROM NOT write protected
  {$define _WRTD_ON          = $3BFF}  // Data EEPROM write protected

  // WRTSAF : Storage Area Flash Write Protection bit
  {$define _WRTSAF_OFF       = $3FFF}  // SAF not write protected
  {$define _WRTSAF_ON        = $37FF}  // SAF write protected

  // LVP : Low Voltage Programming Enable bit
  {$define _LVP_ON           = $3FFF}  // Low Voltage programming enabled. MCLR/Vpp pin function is MCLR.
  {$define _LVP_OFF          = $1FFF}  // High Voltage on MCLR/Vpp must be used for programming

  // CP : UserNVM Program memory code protection bit
  {$define _CP_OFF           = $3FFF}  // UserNVM code protection disabled
  {$define _CP_ON            = $3FFE}  // UserNVM code protection enabled

implementation
end.