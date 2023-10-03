/* Step 1: Set the input dataset */
libname indata "N:/Downloads/DRIR61SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.DRIR61FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
6, 14, 38, 221, 249, 261, 275, 288, 291, 292, 324, 336, 345, 374, 389, 523, 671, 739, 748, 749, 764, 841, 864, 946, 1060, 1073, 1092, 1114, 1165, 1181, 1186, 1204, 1328, 1357, 1588, 1594, 1605, 1635, 1660, 1720, 1749, 1811, 1821, 1832, 1853, 1901, 1961, 2017, 2019, 2024, 2035, 2153, 2176, 2223, 2246, 2268, 2283, 2302, 2314, 2342, 2459, 2464, 2474, 2496, 2622, 2708, 2742, 2778, 2790, 2820, 2837, 2885, 2898, 2901, 2919, 2996, 3038, 3067, 3097, 3110, 3131, 3168, 3215, 3285
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Dominican_Republic_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
