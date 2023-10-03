/* Step 1: Set the input dataset */
libname indata "N:/Downloads/CDIR61SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.CDIR61FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
	3, 7, 34, 50, 96, 103, 115, 117, 134, 158, 192, 206, 211, 218, 243, 249, 261, 266, 287, 301, 304, 317, 321, 325, 334, 350, 352, 370, 380, 398, 401, 404, 405, 412, 422, 427, 432, 437, 443, 463, 480, 490, 491, 492, 513, 525, 526, 530, 531
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/DR_Congo_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
