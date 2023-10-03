/* Step 1: Set the input dataset */
libname indata "N:/Downloads/GNIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.GNIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
5, 14, 22, 31, 41, 42, 53, 57, 59, 62, 63, 77, 86, 104, 117, 130, 141, 146, 159, 186, 187, 190, 197, 201, 212, 224, 230, 232, 235, 249, 254, 255, 261, 269, 273, 285, 301, 325, 327, 335, 339, 340, 344, 355, 372, 376, 385, 388, 391, 393
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Guinea_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
