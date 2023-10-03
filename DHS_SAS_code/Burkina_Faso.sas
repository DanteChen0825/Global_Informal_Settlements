/* Step 1: Set the input dataset */
libname indata "N:/Downloads/BFIR62SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.BFIR62FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
8, 11, 12, 18, 36, 46, 54, 62, 63, 64, 106, 113, 117, 118, 136, 144, 214, 217, 224, 242, 251, 260, 264, 294, 333, 380, 384, 386, 461, 469, 481, 502, 506, 525, 528, 536, 566
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Burkina_Faso_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
