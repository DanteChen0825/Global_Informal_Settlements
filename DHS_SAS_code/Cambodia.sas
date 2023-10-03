/* Step 1: Set the input dataset */
libname indata "N:/Downloads/KHIR81SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.KHIR81FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
318, 319, 320, 321, 322, 323, 324, 325, 326, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 342, 345, 346, 347, 349
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Cambodia_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
