/* Step 1: Set the input dataset */
libname indata "N:/Downloads/ZMIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.ZMIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
29, 35, 43, 56, 102, 131, 137, 148, 149, 162, 174, 227, 229, 231, 268, 282, 304, 315, 317, 321, 337, 348, 352, 365, 407, 436, 439, 440, 444, 454, 457, 462, 497, 517, 519, 541
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Zambia_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
