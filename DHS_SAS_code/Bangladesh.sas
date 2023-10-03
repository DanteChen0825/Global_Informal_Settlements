/* Step 1: Set the input dataset */
libname indata "N:/Downloads/BDIR7RSD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.BDIR7RFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
87, 88, 92, 135, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 165, 166, 169, 216, 217, 218, 220, 221, 222, 223, 224, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Bangladesh_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
