/* Step 1: Set the input dataset */
libname indata "N:/Downloads/UGIR7BSD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.UGIR7BFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 72, 73, 74, 75, 78, 79, 80, 81, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Uganda_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
