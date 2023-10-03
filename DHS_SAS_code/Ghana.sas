/* Step 1: Set the input dataset */
libname indata "N:/Downloads/GHIR72SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.GHIR72FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
3, 4, 8, 28, 35, 49, 69, 83, 88, 89, 93, 100, 104, 108, 112, 114, 117, 124, 127, 129, 136, 138, 146, 148, 151, 156, 162, 167, 181, 184, 188, 190, 196, 202, 203, 212, 231, 238, 243, 244, 250, 256, 260, 261, 271, 277, 304, 306, 316, 325, 331, 332, 338, 341, 346, 354, 356, 358, 361, 362, 366, 373, 375, 379, 380, 382, 384, 387, 395, 404, 405, 419, 421, 425
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Ghana_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
