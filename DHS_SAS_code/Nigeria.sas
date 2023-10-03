/* Step 1: Set the input dataset */
libname indata "N:/Downloads/NGIR7BSD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.NGIR7BFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
39, 40, 41, 42, 43, 45, 46, 47, 49, 52, 55, 56, 57, 58, 552, 553, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 1129, 1130, 1131, 1133, 1152, 1198, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1218, 1219, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1242, 1243, 1244, 1245, 1247, 1248, 1252, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1276, 1277, 1279, 1372, 1374, 1375, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1388
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Nigeria_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
