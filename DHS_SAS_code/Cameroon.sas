/* Step 1: Set the input dataset */
libname indata "N:/Downloads/CMIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.CMIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
5, 12, 17, 31, 32, 50, 51, 52, 53, 54, 72, 89, 95, 98, 99, 107, 110, 121, 125, 127, 133, 146, 149, 153, 156, 163, 167, 172, 174, 178, 179, 188, 191, 196, 197, 202, 213, 214, 225, 232, 233, 239, 246, 250, 270, 272, 282, 283, 292, 293, 299, 300, 304, 311, 314, 319, 320, 322, 326, 343, 345, 357, 363, 370, 376, 379, 382, 389, 394, 400, 412, 413, 414, 428, 433, 437, 445, 446, 447, 458, 461, 465
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Cameroon_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
