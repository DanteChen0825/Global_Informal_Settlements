/* Step 1: Set the input dataset */
libname indata "N:/Downloads/HTIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.HTIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
2, 6, 17, 20, 26, 32, 42, 44, 49, 50, 63, 91, 92, 112, 115, 119, 120, 125, 132, 143, 144, 146, 159, 160, 166, 168, 170, 173, 181, 191, 199, 222, 224, 229, 247, 253, 259, 271, 286, 312, 313, 324, 329, 337, 345, 384, 388, 391, 392, 394, 395, 402, 405, 427, 450
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Haiti_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
