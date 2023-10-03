/* Step 1: Set the input dataset */
libname indata "N:/Downloads/TZIR7BSD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.TZIR7BFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Tanzania_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
