/* Step 1: Set the input dataset */
libname indata "N:/Downloads/CIIR62SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.CIIR62FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
9, 19, 55, 58, 63, 71, 76, 93, 102, 114, 116, 136, 142, 151, 156, 160, 165, 194, 203, 210, 217, 221, 224, 228, 231, 237, 239, 252, 260, 264, 269, 276, 277, 284, 288, 302, 303, 311, 313, 317, 329, 335, 337, 344
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Ivory_Coast_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
