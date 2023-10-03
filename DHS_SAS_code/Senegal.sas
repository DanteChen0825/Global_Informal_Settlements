/* Step 1: Set the input dataset */
libname indata "N:/Downloads/SNIR8BSD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.SNIR8BFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 16, 17, 18, 19, 20
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Senegal_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
