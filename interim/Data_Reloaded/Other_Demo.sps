file handle pcdat/name='Other_Demo.dat' /lrecl=400.
data list file pcdat free /
  H0015900 (F2)
  H0052200 (F2)
  R0000100 (F5)
  R0000500 (F2)
  R0006500 (F2)
  R0173600 (F2)
  R0214700 (F2)
  R0214800 (F2)
  R7598800 (F2)
  R7703700 (F6)
  R8299600 (F2)
  R8302000 (F2)
  R8496100 (F6)
  R8496500 (F2)
  R8496600 (F2)
  R8497200 (F2)
  R8498700 (F2)
  R8504300 (F2)
  T0898800 (F2)
  T0899900 (F2)
  T0987800 (F6)
  T0988300 (F2)
  T0988400 (F2)
  T0989000 (F2)
  T0990500 (F2)
  T0996000 (F2)
  T2055300 (F2)
  T2055400 (F2)
  T2055500 (F2)
  T2056003 (F2)
  T2056004 (F2)
  T2058200 (F2)
  T2210000 (F6)
  T2210300 (F2)
  T2210400 (F2)
  T2210800 (F2)
  T2212300 (F2)
  T2217800 (F2)
  T3025700 (F2)
  T3025800 (F2)
  T3025900 (F2)
  T3026403 (F2)
  T3026404 (F2)
  T3028700 (F2)
  T3107800 (F6)
  T3108200 (F2)
  T3108300 (F2)
  T3108700 (F2)
  T3110200 (F2)
  T3115800 (F2)
  T3956500 (F2)
  T3956600 (F2)
  T3956700 (F2)
  T3957203 (F2)
  T3957204 (F2)
  T3959500 (F2)
  T4112300 (F6)
  T4112700 (F2)
  T4112800 (F2)
  T4113200 (F2)
  T4114700 (F2)
  T4120300 (F2)
  T4894200 (F2)
  T4894300 (F2)
  T4894400 (F2)
  T4894903 (F2)
  T4894904 (F2)
  T4897200 (F2)
  T5022600 (F6)
  T5023100 (F2)
  T5023200 (F2)
  T5023600 (F2)
  T5026000 (F2)
  T5031500 (F2)
  T5597300 (F2)
  T5597400 (F2)
  T5597500 (F2)
  T5598003 (F2)
  T5598004 (F2)
  T5601200 (F2)
  T5770800 (F6)
  T5771000 (F2)
  T5771100 (F2)
  T5771500 (F2)
  T5774100 (F2)
  T5779700 (F2)
  T8090200 (F2)
  T8090300 (F2)
  T8090400 (F2)
  T8090903 (F2)
  T8090904 (F2)
  T8093400 (F2)
  T8218700 (F6)
  T8219100 (F2)
  T8219200 (F2)
  T8219400 (F2)
  T8221300 (F2)
  T8226800 (F2)
  T8622600 (F2)
  T8622700 (F2)
  T8625900 (F2)
  T8787900 (F6)
  T8788300 (F2)
  T8788400 (F2)
  T8788600 (F2)
  T8790500 (F2)
  T8796100 (F2)
  T9180600 (F2)
  T9180700 (F2)
  T9184600 (F2)
  T9299700 (F6)
  T9300100 (F2)
  T9300200 (F2)
  T9300400 (F2)
  T9302300 (F2)
  T9307900 (F2)
  T9900000 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  H0015900  "SF12 - ASSESSMENT OF GENERAL HEALTH XRND"
  H0052200  "SF12 - ASSESSMENT OF GENERAL HEALTH XRND"
  R0000100  "ID# (1-12686) 79"
  R0000500  "DATE OF BIRTH - YR 79"
  R0006500  "HGC BY RS MOTHER 79"
  R0173600  "SAMPLE ID  79 INT"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
  R7598800  "TIME SINCE LAST PHYSICAL EXAM 2002"
  R7703700  "TOTAL NET FAMILY INCOME 2002"
  R8299600  "TIME SINCE LAST PHYSICAL EXAM 2004"
  R8302000  "R HAVE HEALTH/HOSP PLAN 2004"
  R8496100  "TOTAL NET FAMILY INCOME 2004"
  R8496500  "REGION OF RESIDENCE 2004"
  R8496600  "MARITAL STATUS (COLLAPSED) 2004"
  R8497200  "AGE AT INTERVIEW DATE 2004"
  R8498700  "RS RESIDENCE IN SMSA 2004"
  R8504300  "NUM BIO/STEP/ADPT CHILDREN IN HH 2004"
  T0898800  "TIME SINCE LAST PHYSICAL EXAM 2006"
  T0899900  "R HAVE HEALTH/HOSP PLAN 2006"
  T0987800  "TOTAL NET FAMILY INCOME 2006"
  T0988300  "REGION OF RESIDENCE 2006"
  T0988400  "MARITAL STATUS (COLLAPSED) 2006"
  T0989000  "AGE AT INTERVIEW DATE 2006"
  T0990500  "RS RESIDENCE IN SMSA 2006"
  T0996000  "NUM BIO/STEP/ADPT CHILDREN IN HH 2006"
  T2055300  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2008"
  T2055400  "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2008"
  T2055500  "TIME SINCE LAST PHYSICAL EXAM 2008"
  T2056003  "MED TEST IN PAST 24 MO - MAMMOGRAM 2008"
  T2056004  "MED TEST IN PAST 24 MO - PAP SMEAR 2008"
  T2058200  "R HAVE HEALTH/HOSP PLAN 2008"
  T2210000  "TOTAL NET FAMILY INCOME 2008"
  T2210300  "REGION OF RESIDENCE 2008"
  T2210400  "MARITAL STATUS (COLLAPSED) 2008"
  T2210800  "AGE AT INTERVIEW DATE 2008"
  T2212300  "RS RESIDENCE IN SMSA 2008"
  T2217800  "NUM BIO/STEP/ADPT CHILDREN IN HH 2008"
  T3025700  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2010"
  T3025800  "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2010"
  T3025900  "TIME SINCE LAST PHYSICAL EXAM 2010"
  T3026403  "MED TEST IN PAST 24 MO - MAMMOGRAM 2010"
  T3026404  "MED TEST IN PAST 24 MO - PAP SMEAR 2010"
  T3028700  "R HAVE HEALTH/HOSP PLAN 2010"
  T3107800  "TOTAL NET FAMILY INCOME 2010"
  T3108200  "REGION OF RESIDENCE 2010"
  T3108300  "MARITAL STATUS (COLLAPSED) 2010"
  T3108700  "AGE AT INTERVIEW DATE 2010"
  T3110200  "RS RESIDENCE IN SMSA 2010"
  T3115800  "NUM BIO/STEP/ADPT CHILDREN IN HH 2010"
  T3956500  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2012"
  T3956600  "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2012"
  T3956700  "TIME SINCE LAST PHYSICAL EXAM 2012"
  T3957203  "MED TEST IN PAST 24 MO - MAMMOGRAM 2012"
  T3957204  "MED TEST IN PAST 24 MO - PAP SMEAR 2012"
  T3959500  "R HAVE HEALTH/HOSP PLAN 2012"
  T4112300  "TOTAL NET FAMILY INCOME 2012"
  T4112700  "REGION OF RESIDENCE 2012"
  T4112800  "MARITAL STATUS (COLLAPSED) 2012"
  T4113200  "AGE AT INTERVIEW DATE 2012"
  T4114700  "RS RESIDENCE IN SMSA 2012"
  T4120300  "NUM BIO/STEP/ADPT CHILDREN IN HH 2012"
  T4894200  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2014"
  T4894300  "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2014"
  T4894400  "TIME SINCE LAST PHYSICAL EXAM 2014"
  T4894903  "MED TEST IN PAST 24 MO - MAMMOGRAM 2014"
  T4894904  "MED TEST IN PAST 24 MO - PAP SMEAR 2014"
  T4897200  "R HAVE HEALTH/HOSP PLAN 2014"
  T5022600  "TOTAL NET FAMILY INCOME 2014"
  T5023100  "REGION OF RESIDENCE 2014"
  T5023200  "MARITAL STATUS (COLLAPSED) 2014"
  T5023600  "AGE AT INTERVIEW 2014"
  T5026000  "RS RESIDENCE IN SMSA 2014"
  T5031500  "NUM BIO/STEP/ADPT CHILDREN IN HH 2014"
  T5597300  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2016"
  T5597400  "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2016"
  T5597500  "TIME SINCE LAST PHYSICAL EXAM 2016"
  T5598003  "MED TEST IN PAST 24 MO - MAMMOGRAM 2016"
  T5598004  "MED TEST IN PAST 24 MO - PAP SMEAR 2016"
  T5601200  "R HAVE HEALTH/HOSP PLAN 2016"
  T5770800  "TOTAL NET FAMILY INCOME 2016"
  T5771000  "REGION OF RESIDENCE 2016"
  T5771100  "MARITAL STATUS (COLLAPSED) 2016"
  T5771500  "AGE AT INTERVIEW 2016"
  T5774100  "RS RESIDENCE IN SMSA 2016"
  T5779700  "NUM BIO/STEP/ADPT CHILDREN IN HH 2016"
  T8090200  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2018"
  T8090300  "PLACE R MOST OFTEN GOES FOR HEALTH CARE 2018"
  T8090400  "TIME SINCE LAST PHYSICAL EXAM 2018"
  T8090903  "MED TEST IN PAST 24 MO - MAMMOGRAM 2018"
  T8090904  "MED TEST IN PAST 24 MO - PAP SMEAR 2018"
  T8093400  "R HAVE HEALTH/HOSP PLAN 2018"
  T8218700  "TOTAL NET FAMILY INCOME 2018"
  T8219100  "REGION OF RESIDENCE 2018"
  T8219200  "MARITAL STATUS (COLLAPSED) 2018"
  T8219400  "AGE AT INTERVIEW 2018"
  T8221300  "RS RESIDENCE IN SMSA 2018"
  T8226800  "NUM BIO/STEP/ADPT CHILDREN IN HH 2018"
  T8622600  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2020"
  T8622700  "TIME SINCE LAST PHYSICAL EXAM 2020"
  T8625900  "R HAVE HEALTH/HOSP PLAN 2020"
  T8787900  "TOTAL NET FAMILY INCOME 2020"
  T8788300  "REGION OF RESIDENCE 2020"
  T8788400  "MARITAL STATUS (COLLAPSED) 2020"
  T8788600  "AGE AT INTERVIEW 2020"
  T8790500  "RS RESIDENCE IN SMSA 2020"
  T8796100  "NUM BIO/STEP/ADPT CHILDREN IN HH 2020"
  T9180600  "HEALTH CARE PROVIDER TO SEE/SEEK ADVICE 2022"
  T9180700  "TIME SINCE LAST PHYSICAL EXAM 2022"
  T9184600  "R HAVE HEALTH/HOSP PLAN 2022"
  T9299700  "TOTAL NET FAMILY INCOME 2022"
  T9300100  "REGION OF RESIDENCE 2022"
  T9300200  "MARITAL STATUS (COLLAPSED) 2022"
  T9300400  "AGE AT INTERVIEW 2022"
  T9302300  "RS RESIDENCE IN SMSA 2022"
  T9307900  "NUM BIO/STEP/ADPT CHILDREN IN HH 2022"
  T9900000  "HIGHEST GRADE EVER COMPLETED XRND"
.

* Recode continuous values. 
* recode 
    / 
 R0000500 
    (0 thru 56 eq 0)
    (57 thru 57 eq 57)
    (58 thru 58 eq 58)
    (59 thru 59 eq 59)
    (60 thru 60 eq 60)
    (61 thru 61 eq 61)
    (62 thru 62 eq 62)
    (63 thru 63 eq 63)
    (64 thru 64 eq 64)
    (65 thru 65 eq 65)
    (66 thru 66 eq 66)
    (67 thru 67 eq 67)
    (68 thru 68 eq 68)
    (69 thru 69 eq 69)
    (70 thru 70 eq 70)
    (71 thru 71 eq 71)
    (72 thru 72 eq 72)
    (73 thru 99999 eq 73)
    / 
 R7703700 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 R8496100 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 999999999 eq 50000)
    / 
 R8504300 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T0987800 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T0996000 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T2210000 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T2217800 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T3107800 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T3115800 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T4112300 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T4120300 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T5022600 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T5031500 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T5770800 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T5779700 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T8218700 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T8226800 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T8787900 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T8796100 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T9299700 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T9307900 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
.

* value labels
 H0015900
    1 "Excellent"
    2 "Very Good"
    3 "Good"
    4 "Fair"
    5 "Poor"
    /
 H0052200
    1 "Excellent"
    2 "Very Good"
    3 "Good"
    4 "Fair"
    5 "Poor"
    /
 R0000500
    0 "0 TO 56: < 57"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    63 "63"
    64 "64"
    65 "65"
    66 "66"
    67 "67"
    68 "68"
    69 "69"
    70 "70"
    71 "71"
    72 "72"
    73 "73 TO 99999: 73+"
    /
 R0006500
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YR COL"
    14 "2ND YR COL"
    15 "3RD YR COL"
    16 "4TH YR COL"
    17 "5TH YR COL"
    18 "6TH YR COL"
    19 "7TH YR COL"
    20 "8TH YR COL OR MORE"
    95 "UNGRADED"
    /
 R0173600
    1 "CROSS MALE WHITE"
    2 "CROSS MALE WH. POOR"
    3 "CROSS MALE BLACK"
    4 "CROSS MALE HISPANIC"
    5 "CROSS FEMALE WHITE"
    6 "CROSS FEMALE WH POOR"
    7 "CROSS FEMALE BLACK"
    8 "CROSS FEMALE HISPANIC"
    9 "SUP MALE WH POOR"
    10 "SUP MALE BLACK"
    11 "SUP MALE HISPANIC"
    12 "SUP FEM WH POOR"
    13 "SUP FEMALE BLACK"
    14 "SUP FEMALE HISPANIC"
    15 "MIL MALE WHITE"
    16 "MIL MALE BLACK"
    17 "MIL MALE HISPANIC"
    18 "MIL FEMALE WHITE"
    19 "MIL FEMALE BLACK"
    20 "MIL FEMALE HISPANIC"
    /
 R0214700
    1 "HISPANIC"
    2 "BLACK"
    3 "NON-BLACK, NON-HISPANIC"
    /
 R0214800
    1 "MALE"
    2 "FEMALE"
    /
 R7598800
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 R7703700
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 R8299600
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 R8302000
    1 "Yes"
    0 "No"
    /
 R8496100
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 999999999: 50000+"
    /
 R8496500
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 R8496600
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 R8497200
    37 "37"
    38 "38"
    39 "39"
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    /
 R8498700
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 R8504300
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T0898800
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T0899900
    1 "Yes"
    0 "No"
    /
 T0987800
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T0988300
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 T0988400
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 T0989000
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    /
 T0990500
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T0996000
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T2055300
    1 "Yes"
    0 "No"
    /
 T2055400
    1 "Clinic or health center"
    2 "Doctor’s office or HMO"
    3 "Hospital emergency room"
    4 "Some other place"
    5 "Don’t go to one place most often"
    /
 T2055500
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T2056003
    1 "YES"
    0 "NO"
    /
 T2056004
    1 "YES"
    0 "NO"
    /
 T2058200
    1 "Yes"
    0 "No"
    /
 T2210000
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T2210300
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T2210400
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T2210800
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    /
 T2212300
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T2217800
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T3025700
    1 "Yes"
    0 "No"
    /
 T3025800
    1 "Clinic or health center"
    2 "Doctor’s office or HMO"
    3 "Hospital emergency room"
    4 "Some other place"
    5 "Don’t go to one place most often"
    /
 T3025900
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T3026403
    1 "Yes"
    0 "No"
    /
 T3026404
    1 "Yes"
    0 "No"
    /
 T3028700
    1 "Yes"
    0 "No"
    /
 T3107800
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T3108200
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T3108300
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T3108700
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    /
 T3110200
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T3115800
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T3956500
    1 "Yes"
    0 "No"
    /
 T3956600
    1 "Clinic or health center"
    2 "Doctor’s office or HMO"
    3 "Hospital emergency room"
    4 "Some other place"
    5 "Don’t go to one place most often"
    /
 T3956700
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T3957203
    1 "Yes"
    0 "No"
    /
 T3957204
    1 "Yes"
    0 "No"
    /
 T3959500
    1 "Yes"
    0 "No"
    /
 T4112300
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T4112700
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T4112800
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T4113200
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    54 "54"
    55 "55"
    56 "56"
    /
 T4114700
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T4120300
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T4894200
    1 "Yes"
    0 "No"
    /
 T4894300
    1 "Clinic or health center"
    2 "Doctor’s office or HMO"
    3 "Hospital emergency room"
    4 "Some other place"
    5 "Don’t go to one place most often"
    /
 T4894400
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T4894903
    1 "Yes"
    0 "No"
    /
 T4894904
    1 "Yes"
    0 "No"
    /
 T4897200
    1 "Yes"
    0 "No"
    /
 T5022600
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T5023100
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T5023200
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T5023600
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    54 "54"
    55 "55"
    56 "56"
    57 "57"
    58 "58"
    /
 T5026000
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T5031500
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T5597300
    1 "Yes"
    0 "No"
    /
 T5597400
    1 "Clinic or health center"
    2 "Doctor’s office or HMO"
    3 "Hospital emergency room"
    4 "Some other place"
    5 "Don’t go to one place most often"
    /
 T5597500
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T5598003
    1 "Yes"
    0 "No"
    /
 T5598004
    1 "Yes"
    0 "No"
    /
 T5601200
    1 "Yes"
    0 "No"
    /
 T5770800
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T5771000
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T5771100
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T5771500
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    54 "54"
    55 "55"
    56 "56"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    /
 T5774100
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T5779700
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T8090200
    1 "YES"
    0 "NO"
    /
 T8090300
    1 "CLINIC OR HEALTH CENTER"
    2 "DOCTOR'S OFFICE OR HMO"
    3 "HOSPITAL EMERGENCY ROOM"
    4 "SOME OTHER PLACE"
    5 "DON'T GO TO ONE PLACE MOST OFTEN"
    6 "House visit by nurse or Doctor"
    /
 T8090400
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T8090903
    1 "YES"
    0 "NO"
    /
 T8090904
    1 "YES"
    0 "NO"
    /
 T8093400
    1 "YES"
    0 "NO"
    /
 T8218700
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T8219100
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T8219200
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T8219400
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    54 "54"
    55 "55"
    56 "56"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    /
 T8221300
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T8226800
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T8622600
    1 "YES"
    0 "NO"
    /
 T8622700
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T8625900
    1 "YES"
    0 "NO"
    /
 T8787900
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T8788300
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T8788400
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T8788600
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    54 "54"
    55 "55"
    56 "56"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    63 "63"
    64 "64"
    /
 T8790500
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T8796100
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T9180600
    1 "YES"
    0 "NO"
    /
 T9180700
    0 "Never"
    1 "A year ago or less"
    2 "More than 1 year but not more than 2 years"
    3 "More than 2 years but not more than 3 years"
    4 "More than 3 years but not more than 5 years"
    5 "Over 5 years ago"
    /
 T9184600
    1 "YES"
    0 "NO"
    /
 T9299700
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T9300100
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T9300200
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T9300400
    40 "40"
    41 "41"
    42 "42"
    43 "43"
    44 "44"
    45 "45"
    46 "46"
    47 "47"
    48 "48"
    49 "49"
    50 "50"
    51 "51"
    52 "52"
    53 "53"
    54 "54"
    55 "55"
    56 "56"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    63 "63"
    64 "64"
    65 "65"
    66 "66"
    /
 T9302300
    1 "1: NOT IN SMSA"
    2 "2: SMSA, NOT CENTRAL CITY"
    3 "3: SMSA, IN CENTRAL CITY"
    4 "4: SMSA, CENTRAL CITY NOT KNOWN"
    /
 T9307900
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T9900000
    0 "NONE"
    93 "PRE-KINDERGARTEN"
    94 "KINDERGARTEN"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YEAR COLLEGE"
    14 "2ND YEAR COLLEGE"
    15 "3RD YEAR COLLEGE"
    16 "4TH YEAR COLLEGE"
    17 "5TH YEAR COLLEGE"
    18 "6TH YEAR COLLEGE"
    19 "7TH YEAR COLLEGE"
    20 "8TH YEAR COLLEGE OR MORE"
    95 "UNGRADED"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (H0015900 = H50SF12_2_XRND)   /* H50SF12-2 */
  (H0052200 = H60SF12_2_XRND)   /* H60SF12-2 */
  (R0000100 = CASEID_1979) 
  (R0000500 = Q1_3_A_Y_1979)   /* Q1-3_A~Y */
  (R0006500 = HGC_MOTHER_1979)   /* HGC-MOTHER */
  (R0173600 = SAMPLE_ID_1979) 
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
  (R7598800 = Q11_GENHLTH_4A_2002)   /* Q11-GENHLTH_4A */
  (R7703700 = TNFI_TRUNC_2002) 
  (R8299600 = Q11_GENHLTH_4A_2004)   /* Q11-GENHLTH_4A */
  (R8302000 = Q11_79_2004)   /* Q11-79 */
  (R8496100 = TNFI_TRUNC_2004) 
  (R8496500 = REGION_2004) 
  (R8496600 = MARSTAT_COL_2004)   /* MARSTAT-COL */
  (R8497200 = AGEATINT_2004) 
  (R8498700 = SMSARES_2004) 
  (R8504300 = NUMCH04_2004) 
  (T0898800 = Q11_GENHLTH_4A_2006)   /* Q11-GENHLTH_4A */
  (T0899900 = Q11_79_2006)   /* Q11-79 */
  (T0987800 = TNFI_TRUNC_2006) 
  (T0988300 = REGION_2006) 
  (T0988400 = MARSTAT_COL_2006)   /* MARSTAT-COL */
  (T0989000 = AGEATINT_2006) 
  (T0990500 = SMSARES_2006) 
  (T0996000 = NUMCH06_2006) 
  (T2055300 = Q11_GENHLTH_PRV1_2008)   /* Q11-GENHLTH-PRV1 */
  (T2055400 = Q11_GENHLTH_PRV2_2008)   /* Q11-GENHLTH-PRV2 */
  (T2055500 = Q11_GENHLTH_4A_2008)   /* Q11-GENHLTH_4A */
  (T2056003 = Q11_GENHLTH_4C_F_000004_2008)   /* Q11-GENHLTH_4C_F~000004 */
  (T2056004 = Q11_GENHLTH_4C_F_000005_2008)   /* Q11-GENHLTH_4C_F~000005 */
  (T2058200 = Q11_79_2008)   /* Q11-79 */
  (T2210000 = TNFI_TRUNC_2008) 
  (T2210300 = REGION_2008) 
  (T2210400 = MARSTAT_COL_2008)   /* MARSTAT-COL */
  (T2210800 = AGEATINT_2008) 
  (T2212300 = SMSARES_2008) 
  (T2217800 = NUMCH08_2008) 
  (T3025700 = Q11_GENHLTH_PRV1_2010)   /* Q11-GENHLTH-PRV1 */
  (T3025800 = Q11_GENHLTH_PRV2_2010)   /* Q11-GENHLTH-PRV2 */
  (T3025900 = Q11_GENHLTH_4A_2010)   /* Q11-GENHLTH_4A */
  (T3026403 = Q11_GENHLTH_4C_F_000004_2010)   /* Q11-GENHLTH_4C_F~000004 */
  (T3026404 = Q11_GENHLTH_4C_F_000005_2010)   /* Q11-GENHLTH_4C_F~000005 */
  (T3028700 = Q11_79_2010)   /* Q11-79 */
  (T3107800 = TNFI_TRUNC_2010) 
  (T3108200 = REGION_2010) 
  (T3108300 = MARSTAT_COL_2010)   /* MARSTAT-COL */
  (T3108700 = AGEATINT_2010) 
  (T3110200 = SMSARES_2010) 
  (T3115800 = NUMCH10_2010) 
  (T3956500 = Q11_GENHLTH_PRV1_2012)   /* Q11-GENHLTH-PRV1 */
  (T3956600 = Q11_GENHLTH_PRV2_2012)   /* Q11-GENHLTH-PRV2 */
  (T3956700 = Q11_GENHLTH_4A_2012)   /* Q11-GENHLTH_4A */
  (T3957203 = Q11_GENHLTH_4C_F_000004_2012)   /* Q11-GENHLTH_4C_F~000004 */
  (T3957204 = Q11_GENHLTH_4C_F_000005_2012)   /* Q11-GENHLTH_4C_F~000005 */
  (T3959500 = Q11_79_2012)   /* Q11-79 */
  (T4112300 = TNFI_TRUNC_2012) 
  (T4112700 = REGION_2012) 
  (T4112800 = MARSTAT_COL_2012)   /* MARSTAT-COL */
  (T4113200 = AGEATINT_2012) 
  (T4114700 = SMSARES_2012) 
  (T4120300 = NUMCH12_2012) 
  (T4894200 = Q11_GENHLTH_PRV1_2014)   /* Q11-GENHLTH-PRV1 */
  (T4894300 = Q11_GENHLTH_PRV2_2014)   /* Q11-GENHLTH-PRV2 */
  (T4894400 = Q11_GENHLTH_4A_2014)   /* Q11-GENHLTH_4A */
  (T4894903 = Q11_GENHLTH_4C_F_000004_2014)   /* Q11-GENHLTH_4C_F~000004 */
  (T4894904 = Q11_GENHLTH_4C_F_000005_2014)   /* Q11-GENHLTH_4C_F~000005 */
  (T4897200 = Q11_79_2014)   /* Q11-79 */
  (T5022600 = TNFI_TRUNC_2014) 
  (T5023100 = REGION_2014) 
  (T5023200 = MARSTAT_COL_2014)   /* MARSTAT-COL */
  (T5023600 = AGEATINT_2014) 
  (T5026000 = SMSARES_2014) 
  (T5031500 = NUMCH14_2014) 
  (T5597300 = Q11_GENHLTH_PRV1_2016)   /* Q11-GENHLTH-PRV1 */
  (T5597400 = Q11_GENHLTH_PRV2_2016)   /* Q11-GENHLTH-PRV2 */
  (T5597500 = Q11_GENHLTH_4A_2016)   /* Q11-GENHLTH_4A */
  (T5598003 = Q11_GENHLTH_4C_F_000004_2016)   /* Q11-GENHLTH_4C_F~000004 */
  (T5598004 = Q11_GENHLTH_4C_F_000005_2016)   /* Q11-GENHLTH_4C_F~000005 */
  (T5601200 = Q11_79_2016)   /* Q11-79 */
  (T5770800 = TNFI_TRUNC_2016) 
  (T5771000 = REGION_2016) 
  (T5771100 = MARSTAT_COL_2016)   /* MARSTAT-COL */
  (T5771500 = AGEATINT_2016) 
  (T5774100 = SMSARES_2016) 
  (T5779700 = NUMCH16_2016) 
  (T8090200 = Q11_GENHLTH_PRV1_2018)   /* Q11-GENHLTH-PRV1 */
  (T8090300 = Q11_GENHLTH_PRV2_2018)   /* Q11-GENHLTH-PRV2 */
  (T8090400 = Q11_GENHLTH_4A_2018)   /* Q11-GENHLTH_4A */
  (T8090903 = Q11_GENHLTH_4C_F_000004_2018)   /* Q11-GENHLTH_4C_F~000004 */
  (T8090904 = Q11_GENHLTH_4C_F_000005_2018)   /* Q11-GENHLTH_4C_F~000005 */
  (T8093400 = Q11_79_2018)   /* Q11-79 */
  (T8218700 = TNFI_TRUNC_2018) 
  (T8219100 = REGION_2018) 
  (T8219200 = MARSTAT_COL_2018)   /* MARSTAT-COL */
  (T8219400 = AGEATINT_2018) 
  (T8221300 = SMSARES_2018) 
  (T8226800 = NUMCH18_2018) 
  (T8622600 = Q11_GENHLTH_PRV1_2020)   /* Q11-GENHLTH-PRV1 */
  (T8622700 = Q11_GENHLTH_4A_2020)   /* Q11-GENHLTH_4A */
  (T8625900 = Q11_79_2020)   /* Q11-79 */
  (T8787900 = TNFI_TRUNC_2020) 
  (T8788300 = REGION_2020) 
  (T8788400 = MARSTAT_COL_2020)   /* MARSTAT-COL */
  (T8788600 = AGEATINT_2020) 
  (T8790500 = SMSARES_2020) 
  (T8796100 = NUMCH20_2020) 
  (T9180600 = Q11_GENHLTH_PRV1_2022)   /* Q11-GENHLTH-PRV1 */
  (T9180700 = Q11_GENHLTH_4A_2022)   /* Q11-GENHLTH_4A */
  (T9184600 = Q11_79_2022)   /* Q11-79 */
  (T9299700 = TNFI_TRUNC_2022) 
  (T9300100 = REGION_2022) 
  (T9300200 = MARSTAT_COL_2022)   /* MARSTAT-COL */
  (T9300400 = AGEATINT_2022) 
  (T9302300 = SMSARES_2022) 
  (T9307900 = NUMCH22_2022) 
  (T9900000 = HGC_EVER_XRND) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=H0015900, 
  H0052200, 
  R0000100, 
  R0000500, 
  R0006500, 
  R0173600, 
  R0214700, 
  R0214800, 
  R7598800, 
  R7703700, 
  R8299600, 
  R8302000, 
  R8496100, 
  R8496500, 
  R8496600, 
  R8497200, 
  R8498700, 
  R8504300, 
  T0898800, 
  T0899900, 
  T0987800, 
  T0988300, 
  T0988400, 
  T0989000, 
  T0990500, 
  T0996000, 
  T2055300, 
  T2055400, 
  T2055500, 
  T2056003, 
  T2056004, 
  T2058200, 
  T2210000, 
  T2210300, 
  T2210400, 
  T2210800, 
  T2212300, 
  T2217800, 
  T3025700, 
  T3025800, 
  T3025900, 
  T3026403, 
  T3026404, 
  T3028700, 
  T3107800, 
  T3108200, 
  T3108300, 
  T3108700, 
  T3110200, 
  T3115800, 
  T3956500, 
  T3956600, 
  T3956700, 
  T3957203, 
  T3957204, 
  T3959500, 
  T4112300, 
  T4112700, 
  T4112800, 
  T4113200, 
  T4114700, 
  T4120300, 
  T4894200, 
  T4894300, 
  T4894400, 
  T4894903, 
  T4894904, 
  T4897200, 
  T5022600, 
  T5023100, 
  T5023200, 
  T5023600, 
  T5026000, 
  T5031500, 
  T5597300, 
  T5597400, 
  T5597500, 
  T5598003, 
  T5598004, 
  T5601200, 
  T5770800, 
  T5771000, 
  T5771100, 
  T5771500, 
  T5774100, 
  T5779700, 
  T8090200, 
  T8090300, 
  T8090400, 
  T8090903, 
  T8090904, 
  T8093400, 
  T8218700, 
  T8219100, 
  T8219200, 
  T8219400, 
  T8221300, 
  T8226800, 
  T8622600, 
  T8622700, 
  T8625900, 
  T8787900, 
  T8788300, 
  T8788400, 
  T8788600, 
  T8790500, 
  T8796100, 
  T9180600, 
  T9180700, 
  T9184600, 
  T9299700, 
  T9300100, 
  T9300200, 
  T9300400, 
  T9302300, 
  T9307900, 
  T9900000.

*--- Tabulations using qname variables.
*freq var=H50SF12_2_XRND, 
  H60SF12_2_XRND, 
  CASEID_1979, 
  Q1_3_A_Y_1979, 
  HGC_MOTHER_1979, 
  SAMPLE_ID_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979, 
  Q11_GENHLTH_4A_2002, 
  TNFI_TRUNC_2002, 
  Q11_GENHLTH_4A_2004, 
  Q11_79_2004, 
  TNFI_TRUNC_2004, 
  REGION_2004, 
  MARSTAT_COL_2004, 
  AGEATINT_2004, 
  SMSARES_2004, 
  NUMCH04_2004, 
  Q11_GENHLTH_4A_2006, 
  Q11_79_2006, 
  TNFI_TRUNC_2006, 
  REGION_2006, 
  MARSTAT_COL_2006, 
  AGEATINT_2006, 
  SMSARES_2006, 
  NUMCH06_2006, 
  Q11_GENHLTH_PRV1_2008, 
  Q11_GENHLTH_PRV2_2008, 
  Q11_GENHLTH_4A_2008, 
  Q11_GENHLTH_4C_F_000004_2008, 
  Q11_GENHLTH_4C_F_000005_2008, 
  Q11_79_2008, 
  TNFI_TRUNC_2008, 
  REGION_2008, 
  MARSTAT_COL_2008, 
  AGEATINT_2008, 
  SMSARES_2008, 
  NUMCH08_2008, 
  Q11_GENHLTH_PRV1_2010, 
  Q11_GENHLTH_PRV2_2010, 
  Q11_GENHLTH_4A_2010, 
  Q11_GENHLTH_4C_F_000004_2010, 
  Q11_GENHLTH_4C_F_000005_2010, 
  Q11_79_2010, 
  TNFI_TRUNC_2010, 
  REGION_2010, 
  MARSTAT_COL_2010, 
  AGEATINT_2010, 
  SMSARES_2010, 
  NUMCH10_2010, 
  Q11_GENHLTH_PRV1_2012, 
  Q11_GENHLTH_PRV2_2012, 
  Q11_GENHLTH_4A_2012, 
  Q11_GENHLTH_4C_F_000004_2012, 
  Q11_GENHLTH_4C_F_000005_2012, 
  Q11_79_2012, 
  TNFI_TRUNC_2012, 
  REGION_2012, 
  MARSTAT_COL_2012, 
  AGEATINT_2012, 
  SMSARES_2012, 
  NUMCH12_2012, 
  Q11_GENHLTH_PRV1_2014, 
  Q11_GENHLTH_PRV2_2014, 
  Q11_GENHLTH_4A_2014, 
  Q11_GENHLTH_4C_F_000004_2014, 
  Q11_GENHLTH_4C_F_000005_2014, 
  Q11_79_2014, 
  TNFI_TRUNC_2014, 
  REGION_2014, 
  MARSTAT_COL_2014, 
  AGEATINT_2014, 
  SMSARES_2014, 
  NUMCH14_2014, 
  Q11_GENHLTH_PRV1_2016, 
  Q11_GENHLTH_PRV2_2016, 
  Q11_GENHLTH_4A_2016, 
  Q11_GENHLTH_4C_F_000004_2016, 
  Q11_GENHLTH_4C_F_000005_2016, 
  Q11_79_2016, 
  TNFI_TRUNC_2016, 
  REGION_2016, 
  MARSTAT_COL_2016, 
  AGEATINT_2016, 
  SMSARES_2016, 
  NUMCH16_2016, 
  Q11_GENHLTH_PRV1_2018, 
  Q11_GENHLTH_PRV2_2018, 
  Q11_GENHLTH_4A_2018, 
  Q11_GENHLTH_4C_F_000004_2018, 
  Q11_GENHLTH_4C_F_000005_2018, 
  Q11_79_2018, 
  TNFI_TRUNC_2018, 
  REGION_2018, 
  MARSTAT_COL_2018, 
  AGEATINT_2018, 
  SMSARES_2018, 
  NUMCH18_2018, 
  Q11_GENHLTH_PRV1_2020, 
  Q11_GENHLTH_4A_2020, 
  Q11_79_2020, 
  TNFI_TRUNC_2020, 
  REGION_2020, 
  MARSTAT_COL_2020, 
  AGEATINT_2020, 
  SMSARES_2020, 
  NUMCH20_2020, 
  Q11_GENHLTH_PRV1_2022, 
  Q11_GENHLTH_4A_2022, 
  Q11_79_2022, 
  TNFI_TRUNC_2022, 
  REGION_2022, 
  MARSTAT_COL_2022, 
  AGEATINT_2022, 
  SMSARES_2022, 
  NUMCH22_2022, 
  HGC_EVER_XRND.
