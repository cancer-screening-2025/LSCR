options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'Other_Demo.dat' lrecl=400 missover DSD DLM=' ' print;
input
  H0015900
  H0052200
  R0000100
  R0000500
  R0006500
  R0173600
  R0214700
  R0214800
  R7598800
  R7703700
  R8299600
  R8302000
  R8496100
  R8496500
  R8496600
  R8497200
  R8498700
  R8504300
  T0898800
  T0899900
  T0987800
  T0988300
  T0988400
  T0989000
  T0990500
  T0996000
  T2055300
  T2055400
  T2055500
  T2056003
  T2056004
  T2058200
  T2210000
  T2210300
  T2210400
  T2210800
  T2212300
  T2217800
  T3025700
  T3025800
  T3025900
  T3026403
  T3026404
  T3028700
  T3107800
  T3108200
  T3108300
  T3108700
  T3110200
  T3115800
  T3956500
  T3956600
  T3956700
  T3957203
  T3957204
  T3959500
  T4112300
  T4112700
  T4112800
  T4113200
  T4114700
  T4120300
  T4894200
  T4894300
  T4894400
  T4894903
  T4894904
  T4897200
  T5022600
  T5023100
  T5023200
  T5023600
  T5026000
  T5031500
  T5597300
  T5597400
  T5597500
  T5598003
  T5598004
  T5601200
  T5770800
  T5771000
  T5771100
  T5771500
  T5774100
  T5779700
  T8090200
  T8090300
  T8090400
  T8090903
  T8090904
  T8093400
  T8218700
  T8219100
  T8219200
  T8219400
  T8221300
  T8226800
  T8622600
  T8622700
  T8625900
  T8787900
  T8788300
  T8788400
  T8788600
  T8790500
  T8796100
  T9180600
  T9180700
  T9184600
  T9299700
  T9300100
  T9300200
  T9300400
  T9302300
  T9307900
  T9900000
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label H0015900 = "SF12 - ASSESSMENT OF GENERAL HEALTH XRND";
  label H0052200 = "SF12 - ASSESSMENT OF GENERAL HEALTH XRND";
  label R0000100 = "ID# (1-12686) 79";
  label R0000500 = "DATE OF BIRTH - YR 79";
  label R0006500 = "HGC BY RS MOTHER 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";
  label R7598800 = "TIME SINCE LAST PHYSICAL EXAM 2002";
  label R7703700 = "TOTAL NET FAMILY INCOME 2002";
  label R8299600 = "TIME SINCE LAST PHYSICAL EXAM 2004";
  label R8302000 = "R HAVE HEALTH/HOSP PLAN 2004";
  label R8496100 = "TOTAL NET FAMILY INCOME 2004";
  label R8496500 = "REGION OF RESIDENCE 2004";
  label R8496600 = "MARITAL STATUS (COLLAPSED) 2004";
  label R8497200 = "AGE AT INTERVIEW DATE 2004";
  label R8498700 = "RS RESIDENCE IN SMSA 2004";
  label R8504300 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2004";
  label T0898800 = "TIME SINCE LAST PHYSICAL EXAM 2006";
  label T0899900 = "R HAVE HEALTH/HOSP PLAN 2006";
  label T0987800 = "TOTAL NET FAMILY INCOME 2006";
  label T0988300 = "REGION OF RESIDENCE 2006";
  label T0988400 = "MARITAL STATUS (COLLAPSED) 2006";
  label T0989000 = "AGE AT INTERVIEW DATE 2006";
  label T0990500 = "RS RESIDENCE IN SMSA 2006";
  label T0996000 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2006";
  label T2055300 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2008";
  label T2055400 = "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2008";
  label T2055500 = "TIME SINCE LAST PHYSICAL EXAM 2008";
  label T2056003 = "MED TEST IN PAST 24 MO - MAMMOGRAM 2008";
  label T2056004 = "MED TEST IN PAST 24 MO - PAP SMEAR 2008";
  label T2058200 = "R HAVE HEALTH/HOSP PLAN 2008";
  label T2210000 = "TOTAL NET FAMILY INCOME 2008";
  label T2210300 = "REGION OF RESIDENCE 2008";
  label T2210400 = "MARITAL STATUS (COLLAPSED) 2008";
  label T2210800 = "AGE AT INTERVIEW DATE 2008";
  label T2212300 = "RS RESIDENCE IN SMSA 2008";
  label T2217800 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2008";
  label T3025700 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2010";
  label T3025800 = "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2010";
  label T3025900 = "TIME SINCE LAST PHYSICAL EXAM 2010";
  label T3026403 = "MED TEST IN PAST 24 MO - MAMMOGRAM 2010";
  label T3026404 = "MED TEST IN PAST 24 MO - PAP SMEAR 2010";
  label T3028700 = "R HAVE HEALTH/HOSP PLAN 2010";
  label T3107800 = "TOTAL NET FAMILY INCOME 2010";
  label T3108200 = "REGION OF RESIDENCE 2010";
  label T3108300 = "MARITAL STATUS (COLLAPSED) 2010";
  label T3108700 = "AGE AT INTERVIEW DATE 2010";
  label T3110200 = "RS RESIDENCE IN SMSA 2010";
  label T3115800 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2010";
  label T3956500 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2012";
  label T3956600 = "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2012";
  label T3956700 = "TIME SINCE LAST PHYSICAL EXAM 2012";
  label T3957203 = "MED TEST IN PAST 24 MO - MAMMOGRAM 2012";
  label T3957204 = "MED TEST IN PAST 24 MO - PAP SMEAR 2012";
  label T3959500 = "R HAVE HEALTH/HOSP PLAN 2012";
  label T4112300 = "TOTAL NET FAMILY INCOME 2012";
  label T4112700 = "REGION OF RESIDENCE 2012";
  label T4112800 = "MARITAL STATUS (COLLAPSED) 2012";
  label T4113200 = "AGE AT INTERVIEW DATE 2012";
  label T4114700 = "RS RESIDENCE IN SMSA 2012";
  label T4120300 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2012";
  label T4894200 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2014";
  label T4894300 = "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2014";
  label T4894400 = "TIME SINCE LAST PHYSICAL EXAM 2014";
  label T4894903 = "MED TEST IN PAST 24 MO - MAMMOGRAM 2014";
  label T4894904 = "MED TEST IN PAST 24 MO - PAP SMEAR 2014";
  label T4897200 = "R HAVE HEALTH/HOSP PLAN 2014";
  label T5022600 = "TOTAL NET FAMILY INCOME 2014";
  label T5023100 = "REGION OF RESIDENCE 2014";
  label T5023200 = "MARITAL STATUS (COLLAPSED) 2014";
  label T5023600 = "AGE AT INTERVIEW 2014";
  label T5026000 = "RS RESIDENCE IN SMSA 2014";
  label T5031500 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2014";
  label T5597300 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2016";
  label T5597400 = "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2016";
  label T5597500 = "TIME SINCE LAST PHYSICAL EXAM 2016";
  label T5598003 = "MED TEST IN PAST 24 MO - MAMMOGRAM 2016";
  label T5598004 = "MED TEST IN PAST 24 MO - PAP SMEAR 2016";
  label T5601200 = "R HAVE HEALTH/HOSP PLAN 2016";
  label T5770800 = "TOTAL NET FAMILY INCOME 2016";
  label T5771000 = "REGION OF RESIDENCE 2016";
  label T5771100 = "MARITAL STATUS (COLLAPSED) 2016";
  label T5771500 = "AGE AT INTERVIEW 2016";
  label T5774100 = "RS RESIDENCE IN SMSA 2016";
  label T5779700 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2016";
  label T8090200 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2018";
  label T8090300 = "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2018";
  label T8090400 = "TIME SINCE LAST PHYSICAL EXAM 2018";
  label T8090903 = "MED TEST IN PAST 24 MO - MAMMOGRAM 2018";
  label T8090904 = "MED TEST IN PAST 24 MO - PAP SMEAR 2018";
  label T8093400 = "R HAVE HEALTH/HOSP PLAN 2018";
  label T8218700 = "TOTAL NET FAMILY INCOME 2018";
  label T8219100 = "REGION OF RESIDENCE 2018";
  label T8219200 = "MARITAL STATUS (COLLAPSED) 2018";
  label T8219400 = "AGE AT INTERVIEW 2018";
  label T8221300 = "RS RESIDENCE IN SMSA 2018";
  label T8226800 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2018";
  label T8622600 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2020";
  label T8622700 = "TIME SINCE LAST PHYSICAL EXAM 2020";
  label T8625900 = "R HAVE HEALTH/HOSP PLAN 2020";
  label T8787900 = "TOTAL NET FAMILY INCOME 2020";
  label T8788300 = "REGION OF RESIDENCE 2020";
  label T8788400 = "MARITAL STATUS (COLLAPSED) 2020";
  label T8788600 = "AGE AT INTERVIEW 2020";
  label T8790500 = "RS RESIDENCE IN SMSA 2020";
  label T8796100 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2020";
  label T9180600 = "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2022";
  label T9180700 = "TIME SINCE LAST PHYSICAL EXAM 2022";
  label T9184600 = "R HAVE HEALTH/HOSP PLAN 2022";
  label T9299700 = "TOTAL NET FAMILY INCOME 2022";
  label T9300100 = "REGION OF RESIDENCE 2022";
  label T9300200 = "MARITAL STATUS (COLLAPSED) 2022";
  label T9300400 = "AGE AT INTERVIEW 2022";
  label T9302300 = "RS RESIDENCE IN SMSA 2022";
  label T9307900 = "NUM BIO/STEP/ADPT CHILDREN IN HH 2022";
  label T9900000 = "HIGHEST GRADE EVER COMPLETED XRND";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  H0015900 = 'H50SF12-2_XRND'n
  H0052200 = 'H60SF12-2_XRND'n
  R0000100 = 'CASEID_1979'n
  R0000500 = 'Q1-3_A~Y_1979'n
  R0006500 = 'HGC-MOTHER_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
  R7598800 = 'Q11-GENHLTH_4A_2002'n
  R7703700 = 'TNFI_TRUNC_2002'n
  R8299600 = 'Q11-GENHLTH_4A_2004'n
  R8302000 = 'Q11-79_2004'n
  R8496100 = 'TNFI_TRUNC_2004'n
  R8496500 = 'REGION_2004'n
  R8496600 = 'MARSTAT-COL_2004'n
  R8497200 = 'AGEATINT_2004'n
  R8498700 = 'SMSARES_2004'n
  R8504300 = 'NUMCH04_2004'n
  T0898800 = 'Q11-GENHLTH_4A_2006'n
  T0899900 = 'Q11-79_2006'n
  T0987800 = 'TNFI_TRUNC_2006'n
  T0988300 = 'REGION_2006'n
  T0988400 = 'MARSTAT-COL_2006'n
  T0989000 = 'AGEATINT_2006'n
  T0990500 = 'SMSARES_2006'n
  T0996000 = 'NUMCH06_2006'n
  T2055300 = 'Q11-GENHLTH-PRV1_2008'n
  T2055400 = 'Q11-GENHLTH-PRV2_2008'n
  T2055500 = 'Q11-GENHLTH_4A_2008'n
  T2056003 = 'Q11-GENHLTH_4C_F~000004_2008'n
  T2056004 = 'Q11-GENHLTH_4C_F~000005_2008'n
  T2058200 = 'Q11-79_2008'n
  T2210000 = 'TNFI_TRUNC_2008'n
  T2210300 = 'REGION_2008'n
  T2210400 = 'MARSTAT-COL_2008'n
  T2210800 = 'AGEATINT_2008'n
  T2212300 = 'SMSARES_2008'n
  T2217800 = 'NUMCH08_2008'n
  T3025700 = 'Q11-GENHLTH-PRV1_2010'n
  T3025800 = 'Q11-GENHLTH-PRV2_2010'n
  T3025900 = 'Q11-GENHLTH_4A_2010'n
  T3026403 = 'Q11-GENHLTH_4C_F~000004_2010'n
  T3026404 = 'Q11-GENHLTH_4C_F~000005_2010'n
  T3028700 = 'Q11-79_2010'n
  T3107800 = 'TNFI_TRUNC_2010'n
  T3108200 = 'REGION_2010'n
  T3108300 = 'MARSTAT-COL_2010'n
  T3108700 = 'AGEATINT_2010'n
  T3110200 = 'SMSARES_2010'n
  T3115800 = 'NUMCH10_2010'n
  T3956500 = 'Q11-GENHLTH-PRV1_2012'n
  T3956600 = 'Q11-GENHLTH-PRV2_2012'n
  T3956700 = 'Q11-GENHLTH_4A_2012'n
  T3957203 = 'Q11-GENHLTH_4C_F~000004_2012'n
  T3957204 = 'Q11-GENHLTH_4C_F~000005_2012'n
  T3959500 = 'Q11-79_2012'n
  T4112300 = 'TNFI_TRUNC_2012'n
  T4112700 = 'REGION_2012'n
  T4112800 = 'MARSTAT-COL_2012'n
  T4113200 = 'AGEATINT_2012'n
  T4114700 = 'SMSARES_2012'n
  T4120300 = 'NUMCH12_2012'n
  T4894200 = 'Q11-GENHLTH-PRV1_2014'n
  T4894300 = 'Q11-GENHLTH-PRV2_2014'n
  T4894400 = 'Q11-GENHLTH_4A_2014'n
  T4894903 = 'Q11-GENHLTH_4C_F~000004_2014'n
  T4894904 = 'Q11-GENHLTH_4C_F~000005_2014'n
  T4897200 = 'Q11-79_2014'n
  T5022600 = 'TNFI_TRUNC_2014'n
  T5023100 = 'REGION_2014'n
  T5023200 = 'MARSTAT-COL_2014'n
  T5023600 = 'AGEATINT_2014'n
  T5026000 = 'SMSARES_2014'n
  T5031500 = 'NUMCH14_2014'n
  T5597300 = 'Q11-GENHLTH-PRV1_2016'n
  T5597400 = 'Q11-GENHLTH-PRV2_2016'n
  T5597500 = 'Q11-GENHLTH_4A_2016'n
  T5598003 = 'Q11-GENHLTH_4C_F~000004_2016'n
  T5598004 = 'Q11-GENHLTH_4C_F~000005_2016'n
  T5601200 = 'Q11-79_2016'n
  T5770800 = 'TNFI_TRUNC_2016'n
  T5771000 = 'REGION_2016'n
  T5771100 = 'MARSTAT-COL_2016'n
  T5771500 = 'AGEATINT_2016'n
  T5774100 = 'SMSARES_2016'n
  T5779700 = 'NUMCH16_2016'n
  T8090200 = 'Q11-GENHLTH-PRV1_2018'n
  T8090300 = 'Q11-GENHLTH-PRV2_2018'n
  T8090400 = 'Q11-GENHLTH_4A_2018'n
  T8090903 = 'Q11-GENHLTH_4C_F~000004_2018'n
  T8090904 = 'Q11-GENHLTH_4C_F~000005_2018'n
  T8093400 = 'Q11-79_2018'n
  T8218700 = 'TNFI_TRUNC_2018'n
  T8219100 = 'REGION_2018'n
  T8219200 = 'MARSTAT-COL_2018'n
  T8219400 = 'AGEATINT_2018'n
  T8221300 = 'SMSARES_2018'n
  T8226800 = 'NUMCH18_2018'n
  T8622600 = 'Q11-GENHLTH-PRV1_2020'n
  T8622700 = 'Q11-GENHLTH_4A_2020'n
  T8625900 = 'Q11-79_2020'n
  T8787900 = 'TNFI_TRUNC_2020'n
  T8788300 = 'REGION_2020'n
  T8788400 = 'MARSTAT-COL_2020'n
  T8788600 = 'AGEATINT_2020'n
  T8790500 = 'SMSARES_2020'n
  T8796100 = 'NUMCH20_2020'n
  T9180600 = 'Q11-GENHLTH-PRV1_2022'n
  T9180700 = 'Q11-GENHLTH_4A_2022'n
  T9184600 = 'Q11-79_2022'n
  T9299700 = 'TNFI_TRUNC_2022'n
  T9300100 = 'REGION_2022'n
  T9300200 = 'MARSTAT-COL_2022'n
  T9300400 = 'AGEATINT_2022'n
  T9302300 = 'SMSARES_2022'n
  T9307900 = 'NUMCH22_2022'n
  T9900000 = 'HGC_EVER_XRND'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx0f
  1='Excellent'
  2='Very Good'
  3='Good'
  4='Fair'
  5='Poor'
;
value vx1f
  1='Excellent'
  2='Very Good'
  3='Good'
  4='Fair'
  5='Poor'
;
value vx3f
  0-56='0 TO 56: < 57'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
  63='63'
  64='64'
  65='65'
  66='66'
  67='67'
  68='68'
  69='69'
  70='70'
  71='71'
  72='72'
  73-99999='73 TO 99999: 73+'
;
value vx4f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YR COL'
  14='2ND YR COL'
  15='3RD YR COL'
  16='4TH YR COL'
  17='5TH YR COL'
  18='6TH YR COL'
  19='7TH YR COL'
  20='8TH YR COL OR MORE'
  95='UNGRADED'
;
value vx5f
  1='CROSS MALE WHITE'
  2='CROSS MALE WH. POOR'
  3='CROSS MALE BLACK'
  4='CROSS MALE HISPANIC'
  5='CROSS FEMALE WHITE'
  6='CROSS FEMALE WH POOR'
  7='CROSS FEMALE BLACK'
  8='CROSS FEMALE HISPANIC'
  9='SUP MALE WH POOR'
  10='SUP MALE BLACK'
  11='SUP MALE HISPANIC'
  12='SUP FEM WH POOR'
  13='SUP FEMALE BLACK'
  14='SUP FEMALE HISPANIC'
  15='MIL MALE WHITE'
  16='MIL MALE BLACK'
  17='MIL MALE HISPANIC'
  18='MIL FEMALE WHITE'
  19='MIL FEMALE BLACK'
  20='MIL FEMALE HISPANIC'
;
value vx6f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx7f
  1='MALE'
  2='FEMALE'
;
value vx8f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx9f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx10f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx11f
  1='Yes'
  0='No'
;
value vx12f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-999999999='50000 TO 999999999: 50000+'
;
value vx13f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx14f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx15f
  37='37'
  38='38'
  39='39'
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
;
value vx16f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx17f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx18f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx19f
  1='Yes'
  0='No'
;
value vx20f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx21f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx22f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx23f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
;
value vx24f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx25f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx26f
  1='Yes'
  0='No'
;
value vx27f
  1='Clinic or health center'
  2='Doctor’s office or HMO'
  3='Hospital emergency room'
  4='Some other place'
  5='Don’t go to one place most often'
;
value vx28f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx29f
  1='YES'
  0='NO'
;
value vx30f
  1='YES'
  0='NO'
;
value vx31f
  1='Yes'
  0='No'
;
value vx32f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx33f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx34f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx35f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
;
value vx36f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx37f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx38f
  1='Yes'
  0='No'
;
value vx39f
  1='Clinic or health center'
  2='Doctor’s office or HMO'
  3='Hospital emergency room'
  4='Some other place'
  5='Don’t go to one place most often'
;
value vx40f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx41f
  1='Yes'
  0='No'
;
value vx42f
  1='Yes'
  0='No'
;
value vx43f
  1='Yes'
  0='No'
;
value vx44f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx45f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx46f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx47f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
;
value vx48f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx49f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx50f
  1='Yes'
  0='No'
;
value vx51f
  1='Clinic or health center'
  2='Doctor’s office or HMO'
  3='Hospital emergency room'
  4='Some other place'
  5='Don’t go to one place most often'
;
value vx52f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx53f
  1='Yes'
  0='No'
;
value vx54f
  1='Yes'
  0='No'
;
value vx55f
  1='Yes'
  0='No'
;
value vx56f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx57f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx58f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx59f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
  54='54'
  55='55'
  56='56'
;
value vx60f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx61f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx62f
  1='Yes'
  0='No'
;
value vx63f
  1='Clinic or health center'
  2='Doctor’s office or HMO'
  3='Hospital emergency room'
  4='Some other place'
  5='Don’t go to one place most often'
;
value vx64f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx65f
  1='Yes'
  0='No'
;
value vx66f
  1='Yes'
  0='No'
;
value vx67f
  1='Yes'
  0='No'
;
value vx68f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx69f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx70f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx71f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
  54='54'
  55='55'
  56='56'
  57='57'
  58='58'
;
value vx72f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx73f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx74f
  1='Yes'
  0='No'
;
value vx75f
  1='Clinic or health center'
  2='Doctor’s office or HMO'
  3='Hospital emergency room'
  4='Some other place'
  5='Don’t go to one place most often'
;
value vx76f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx77f
  1='Yes'
  0='No'
;
value vx78f
  1='Yes'
  0='No'
;
value vx79f
  1='Yes'
  0='No'
;
value vx80f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx81f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx82f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx83f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
  54='54'
  55='55'
  56='56'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
;
value vx84f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx85f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx86f
  1='YES'
  0='NO'
;
value vx87f
  1='CLINIC OR HEALTH CENTER'
  2='DOCTOR''S OFFICE OR HMO'
  3='HOSPITAL EMERGENCY ROOM'
  4='SOME OTHER PLACE'
  5='DON''T GO TO ONE PLACE MOST OFTEN'
  6='House visit by nurse or Doctor'
;
value vx88f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx89f
  1='YES'
  0='NO'
;
value vx90f
  1='YES'
  0='NO'
;
value vx91f
  1='YES'
  0='NO'
;
value vx92f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx93f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx94f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx95f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
  54='54'
  55='55'
  56='56'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
;
value vx96f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx97f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx98f
  1='YES'
  0='NO'
;
value vx99f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx100f
  1='YES'
  0='NO'
;
value vx101f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx102f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx103f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx104f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
  54='54'
  55='55'
  56='56'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
  63='63'
  64='64'
;
value vx105f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx106f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx107f
  1='YES'
  0='NO'
;
value vx108f
  0='Never'
  1='A year ago or less'
  2='More than 1 year but not more than 2 years'
  3='More than 2 years but not more than 3 years'
  4='More than 3 years but not more than 5 years'
  5='Over 5 years ago'
;
value vx109f
  1='YES'
  0='NO'
;
value vx110f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx111f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx112f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx113f
  40='40'
  41='41'
  42='42'
  43='43'
  44='44'
  45='45'
  46='46'
  47='47'
  48='48'
  49='49'
  50='50'
  51='51'
  52='52'
  53='53'
  54='54'
  55='55'
  56='56'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
  63='63'
  64='64'
  65='65'
  66='66'
;
value vx114f
  1='1: NOT IN SMSA'
  2='2: SMSA, NOT CENTRAL CITY'
  3='3: SMSA, IN CENTRAL CITY'
  4='4: SMSA, CENTRAL CITY NOT KNOWN'
;
value vx115f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx116f
  0='NONE'
  93='PRE-KINDERGARTEN'
  94='KINDERGARTEN'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YEAR COLLEGE'
  14='2ND YEAR COLLEGE'
  15='3RD YEAR COLLEGE'
  16='4TH YEAR COLLEGE'
  17='5TH YEAR COLLEGE'
  18='6TH YEAR COLLEGE'
  19='7TH YEAR COLLEGE'
  20='8TH YEAR COLLEGE OR MORE'
  95='UNGRADED'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format H0015900 vx0f.;
  format H0052200 vx1f.;
  format R0000500 vx3f.;
  format R0006500 vx4f.;
  format R0173600 vx5f.;
  format R0214700 vx6f.;
  format R0214800 vx7f.;
  format R7598800 vx8f.;
  format R7703700 vx9f.;
  format R8299600 vx10f.;
  format R8302000 vx11f.;
  format R8496100 vx12f.;
  format R8496500 vx13f.;
  format R8496600 vx14f.;
  format R8497200 vx15f.;
  format R8498700 vx16f.;
  format R8504300 vx17f.;
  format T0898800 vx18f.;
  format T0899900 vx19f.;
  format T0987800 vx20f.;
  format T0988300 vx21f.;
  format T0988400 vx22f.;
  format T0989000 vx23f.;
  format T0990500 vx24f.;
  format T0996000 vx25f.;
  format T2055300 vx26f.;
  format T2055400 vx27f.;
  format T2055500 vx28f.;
  format T2056003 vx29f.;
  format T2056004 vx30f.;
  format T2058200 vx31f.;
  format T2210000 vx32f.;
  format T2210300 vx33f.;
  format T2210400 vx34f.;
  format T2210800 vx35f.;
  format T2212300 vx36f.;
  format T2217800 vx37f.;
  format T3025700 vx38f.;
  format T3025800 vx39f.;
  format T3025900 vx40f.;
  format T3026403 vx41f.;
  format T3026404 vx42f.;
  format T3028700 vx43f.;
  format T3107800 vx44f.;
  format T3108200 vx45f.;
  format T3108300 vx46f.;
  format T3108700 vx47f.;
  format T3110200 vx48f.;
  format T3115800 vx49f.;
  format T3956500 vx50f.;
  format T3956600 vx51f.;
  format T3956700 vx52f.;
  format T3957203 vx53f.;
  format T3957204 vx54f.;
  format T3959500 vx55f.;
  format T4112300 vx56f.;
  format T4112700 vx57f.;
  format T4112800 vx58f.;
  format T4113200 vx59f.;
  format T4114700 vx60f.;
  format T4120300 vx61f.;
  format T4894200 vx62f.;
  format T4894300 vx63f.;
  format T4894400 vx64f.;
  format T4894903 vx65f.;
  format T4894904 vx66f.;
  format T4897200 vx67f.;
  format T5022600 vx68f.;
  format T5023100 vx69f.;
  format T5023200 vx70f.;
  format T5023600 vx71f.;
  format T5026000 vx72f.;
  format T5031500 vx73f.;
  format T5597300 vx74f.;
  format T5597400 vx75f.;
  format T5597500 vx76f.;
  format T5598003 vx77f.;
  format T5598004 vx78f.;
  format T5601200 vx79f.;
  format T5770800 vx80f.;
  format T5771000 vx81f.;
  format T5771100 vx82f.;
  format T5771500 vx83f.;
  format T5774100 vx84f.;
  format T5779700 vx85f.;
  format T8090200 vx86f.;
  format T8090300 vx87f.;
  format T8090400 vx88f.;
  format T8090903 vx89f.;
  format T8090904 vx90f.;
  format T8093400 vx91f.;
  format T8218700 vx92f.;
  format T8219100 vx93f.;
  format T8219200 vx94f.;
  format T8219400 vx95f.;
  format T8221300 vx96f.;
  format T8226800 vx97f.;
  format T8622600 vx98f.;
  format T8622700 vx99f.;
  format T8625900 vx100f.;
  format T8787900 vx101f.;
  format T8788300 vx102f.;
  format T8788400 vx103f.;
  format T8788600 vx104f.;
  format T8790500 vx105f.;
  format T8796100 vx106f.;
  format T9180600 vx107f.;
  format T9180700 vx108f.;
  format T9184600 vx109f.;
  format T9299700 vx110f.;
  format T9300100 vx111f.;
  format T9300200 vx112f.;
  format T9300400 vx113f.;
  format T9302300 vx114f.;
  format T9307900 vx115f.;
  format T9900000 vx116f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'H50SF12-2_XRND'n vx0f.;
  format 'H60SF12-2_XRND'n vx1f.;
  format 'Q1-3_A~Y_1979'n vx3f.;
  format 'HGC-MOTHER_1979'n vx4f.;
  format 'SAMPLE_ID_1979'n vx5f.;
  format 'SAMPLE_RACE_78SCRN'n vx6f.;
  format 'SAMPLE_SEX_1979'n vx7f.;
  format 'Q11-GENHLTH_4A_2002'n vx8f.;
  format 'TNFI_TRUNC_2002'n vx9f.;
  format 'Q11-GENHLTH_4A_2004'n vx10f.;
  format 'Q11-79_2004'n vx11f.;
  format 'TNFI_TRUNC_2004'n vx12f.;
  format 'REGION_2004'n vx13f.;
  format 'MARSTAT-COL_2004'n vx14f.;
  format 'AGEATINT_2004'n vx15f.;
  format 'SMSARES_2004'n vx16f.;
  format 'NUMCH04_2004'n vx17f.;
  format 'Q11-GENHLTH_4A_2006'n vx18f.;
  format 'Q11-79_2006'n vx19f.;
  format 'TNFI_TRUNC_2006'n vx20f.;
  format 'REGION_2006'n vx21f.;
  format 'MARSTAT-COL_2006'n vx22f.;
  format 'AGEATINT_2006'n vx23f.;
  format 'SMSARES_2006'n vx24f.;
  format 'NUMCH06_2006'n vx25f.;
  format 'Q11-GENHLTH-PRV1_2008'n vx26f.;
  format 'Q11-GENHLTH-PRV2_2008'n vx27f.;
  format 'Q11-GENHLTH_4A_2008'n vx28f.;
  format 'Q11-GENHLTH_4C_F~000004_2008'n vx29f.;
  format 'Q11-GENHLTH_4C_F~000005_2008'n vx30f.;
  format 'Q11-79_2008'n vx31f.;
  format 'TNFI_TRUNC_2008'n vx32f.;
  format 'REGION_2008'n vx33f.;
  format 'MARSTAT-COL_2008'n vx34f.;
  format 'AGEATINT_2008'n vx35f.;
  format 'SMSARES_2008'n vx36f.;
  format 'NUMCH08_2008'n vx37f.;
  format 'Q11-GENHLTH-PRV1_2010'n vx38f.;
  format 'Q11-GENHLTH-PRV2_2010'n vx39f.;
  format 'Q11-GENHLTH_4A_2010'n vx40f.;
  format 'Q11-GENHLTH_4C_F~000004_2010'n vx41f.;
  format 'Q11-GENHLTH_4C_F~000005_2010'n vx42f.;
  format 'Q11-79_2010'n vx43f.;
  format 'TNFI_TRUNC_2010'n vx44f.;
  format 'REGION_2010'n vx45f.;
  format 'MARSTAT-COL_2010'n vx46f.;
  format 'AGEATINT_2010'n vx47f.;
  format 'SMSARES_2010'n vx48f.;
  format 'NUMCH10_2010'n vx49f.;
  format 'Q11-GENHLTH-PRV1_2012'n vx50f.;
  format 'Q11-GENHLTH-PRV2_2012'n vx51f.;
  format 'Q11-GENHLTH_4A_2012'n vx52f.;
  format 'Q11-GENHLTH_4C_F~000004_2012'n vx53f.;
  format 'Q11-GENHLTH_4C_F~000005_2012'n vx54f.;
  format 'Q11-79_2012'n vx55f.;
  format 'TNFI_TRUNC_2012'n vx56f.;
  format 'REGION_2012'n vx57f.;
  format 'MARSTAT-COL_2012'n vx58f.;
  format 'AGEATINT_2012'n vx59f.;
  format 'SMSARES_2012'n vx60f.;
  format 'NUMCH12_2012'n vx61f.;
  format 'Q11-GENHLTH-PRV1_2014'n vx62f.;
  format 'Q11-GENHLTH-PRV2_2014'n vx63f.;
  format 'Q11-GENHLTH_4A_2014'n vx64f.;
  format 'Q11-GENHLTH_4C_F~000004_2014'n vx65f.;
  format 'Q11-GENHLTH_4C_F~000005_2014'n vx66f.;
  format 'Q11-79_2014'n vx67f.;
  format 'TNFI_TRUNC_2014'n vx68f.;
  format 'REGION_2014'n vx69f.;
  format 'MARSTAT-COL_2014'n vx70f.;
  format 'AGEATINT_2014'n vx71f.;
  format 'SMSARES_2014'n vx72f.;
  format 'NUMCH14_2014'n vx73f.;
  format 'Q11-GENHLTH-PRV1_2016'n vx74f.;
  format 'Q11-GENHLTH-PRV2_2016'n vx75f.;
  format 'Q11-GENHLTH_4A_2016'n vx76f.;
  format 'Q11-GENHLTH_4C_F~000004_2016'n vx77f.;
  format 'Q11-GENHLTH_4C_F~000005_2016'n vx78f.;
  format 'Q11-79_2016'n vx79f.;
  format 'TNFI_TRUNC_2016'n vx80f.;
  format 'REGION_2016'n vx81f.;
  format 'MARSTAT-COL_2016'n vx82f.;
  format 'AGEATINT_2016'n vx83f.;
  format 'SMSARES_2016'n vx84f.;
  format 'NUMCH16_2016'n vx85f.;
  format 'Q11-GENHLTH-PRV1_2018'n vx86f.;
  format 'Q11-GENHLTH-PRV2_2018'n vx87f.;
  format 'Q11-GENHLTH_4A_2018'n vx88f.;
  format 'Q11-GENHLTH_4C_F~000004_2018'n vx89f.;
  format 'Q11-GENHLTH_4C_F~000005_2018'n vx90f.;
  format 'Q11-79_2018'n vx91f.;
  format 'TNFI_TRUNC_2018'n vx92f.;
  format 'REGION_2018'n vx93f.;
  format 'MARSTAT-COL_2018'n vx94f.;
  format 'AGEATINT_2018'n vx95f.;
  format 'SMSARES_2018'n vx96f.;
  format 'NUMCH18_2018'n vx97f.;
  format 'Q11-GENHLTH-PRV1_2020'n vx98f.;
  format 'Q11-GENHLTH_4A_2020'n vx99f.;
  format 'Q11-79_2020'n vx100f.;
  format 'TNFI_TRUNC_2020'n vx101f.;
  format 'REGION_2020'n vx102f.;
  format 'MARSTAT-COL_2020'n vx103f.;
  format 'AGEATINT_2020'n vx104f.;
  format 'SMSARES_2020'n vx105f.;
  format 'NUMCH20_2020'n vx106f.;
  format 'Q11-GENHLTH-PRV1_2022'n vx107f.;
  format 'Q11-GENHLTH_4A_2022'n vx108f.;
  format 'Q11-79_2022'n vx109f.;
  format 'TNFI_TRUNC_2022'n vx110f.;
  format 'REGION_2022'n vx111f.;
  format 'MARSTAT-COL_2022'n vx112f.;
  format 'AGEATINT_2022'n vx113f.;
  format 'SMSARES_2022'n vx114f.;
  format 'NUMCH22_2022'n vx115f.;
  format 'HGC_EVER_XRND'n vx116f.;
run;
*/