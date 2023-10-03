/* Step 1: Set the input dataset */
libname indata "N:/Downloads/ETIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.ETIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
11, 15, 19, 31, 61, 83, 90, 91, 100, 107, 108, 110, 112, 144, 145, 153, 155, 159, 170, 195, 211, 225, 236, 247, 252, 261, 264, 274, 293, 302, 305, 314, 330, 339, 353, 369, 402, 414, 428, 451, 463, 464, 475, 487, 509, 532, 539, 560, 582, 608, 626, 635, 639, 645
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Ethiopia_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
