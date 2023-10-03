/* Step 1: Set the input dataset */
libname indata "N:/Downloads/PKIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.PKIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
49, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 90, 92, 94, 113, 116, 117, 118, 120, 131, 133, 134, 148, 149, 150, 151, 152, 154, 155, 156, 158, 159, 165, 181, 183, 184, 268, 270, 271, 272, 274, 275, 276, 280, 282, 283, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 307, 309, 310, 311, 416, 418, 420, 423, 424, 426, 427, 430, 433, 434, 435, 437, 439, 440, 441, 442, 444, 445, 446, 466, 468
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Pakistan_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
