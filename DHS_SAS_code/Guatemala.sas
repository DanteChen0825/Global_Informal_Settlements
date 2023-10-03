/* Step 1: Set the input dataset */
libname indata "N:/Downloads/GUIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.GUIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 49, 56, 57, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 84, 85, 86, 87, 89, 90, 91, 92, 93, 94, 95, 96, 98, 99, 100, 101, 102, 105, 106, 107, 108);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Guatemala_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
