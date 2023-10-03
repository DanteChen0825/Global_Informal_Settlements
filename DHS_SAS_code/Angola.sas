/* Step 1: Set the input dataset */
libname indata "N:/Downloads/AOIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.AOIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
10, 11, 23, 25, 33, 42, 44, 66, 68, 108, 112, 113, 126, 134, 138, 143, 156, 163, 167, 186, 199, 203, 215, 223, 224, 226, 247, 262, 266, 267, 271, 294, 303, 304, 308, 311, 333, 345, 362, 363, 367, 394, 406, 418, 448, 460, 465, 467, 481, 484, 497, 505, 517, 543, 546, 561, 569, 571, 578, 586, 590, 594, 604, 617, 627
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Angola_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
