/* Step 1: Set the input dataset */
libname indata "N:/Downloads/ZAIR71SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.ZAIR71FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
6, 13, 20, 21, 28, 29, 34, 56, 73, 83, 88, 95, 112, 114, 117, 118, 119, 123, 127, 129, 130, 131, 134, 135, 138, 142, 144, 145, 151, 156, 160, 164, 166, 170, 174, 177, 180, 185, 186, 192, 199, 200, 210, 211, 212, 221, 222, 230, 233, 236, 240, 241, 243, 246, 254, 261, 275, 281, 282, 290, 295, 298, 300, 308, 312, 317, 321, 323, 331, 332, 337, 339, 340, 345, 346, 349, 359, 365, 369, 379, 385, 393, 397, 400, 404, 411, 412, 427, 428, 430, 432, 451, 452, 454, 469, 480, 482, 485, 493, 499, 520, 524, 529, 532, 541, 550, 559, 563, 564, 572, 574, 575, 579, 582, 588, 589, 596, 597, 598, 600, 605, 606, 619, 633, 641, 642, 648, 650, 663, 666, 674, 677, 678, 680, 687, 695, 702, 703, 704, 706, 714, 715, 717, 723, 730, 748
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/South_Africa_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
