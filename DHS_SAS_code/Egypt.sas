/* Step 1: Set the input dataset */
libname indata "N:/Downloads/EGIR61SD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.EGIR61FL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V190 V191 V394 V129 V113 V116 V153);
  where V001 in (
10706, 11602, 12505, 20803, 21604, 30206, 31501, 32802, 40212, 40613, 50507, 51004, 60406, 61101, 61805, 72503, 73101, 73802, 80804, 81605, 82503, 90202, 90506, 100403, 101103, 101904, 112601, 113304, 114101, 120901, 121907, 130402, 131202, 140301, 141304, 152303, 153202, 160501, 161202, 161906, 172504, 173208, 173902, 180403, 181203, 182010, 190203, 200505, 210402, 210904, 220202, 220204, 230610, 231607, 243406, 244401, 245308, 250203, 250902, 260901, 270407, 271301, 280303, 281003, 281802, 290603, 291203, 300210, 300402, 310302, 311005, 311702, 320108, 320403, 330208, 330405, 340605, 341305, 350702, 351701, 360107, 360302, 370201, 370203, 380201, 380501, 390305, 390804, 400301, 400303, 410103, 410105, 420101, 420103, 430103, 430106, 450603, 451412, 460303, 470302, 470704, 480102, 480105, 490102, 490108, 500201, 500204, 510211, 510404, 520209, 521004, 521830, 532605, 533405, 534208, 540503, 541301, 542101, 550601, 551502, 552401, 560104, 561016, 561807, 570203, 570902, 571702, 582402, 583201, 583902, 590403, 670403, 671109, 681401, 692402, 693302, 704301, 705314, 710303, 710606, 720307, 720803, 730405, 731604, 732807, 740102, 750605, 760512, 761108, 770204, 771109, 772106, 783006, 783904, 784801, 790202, 790601, 800203, 800604, 810404, 810909, 820203, 820903, 830203, 830802, 840204, 842104, 850203, 851002, 851707, 862506, 863208, 864006, 870201, 870603, 880705, 881504, 890203, 890401, 900502, 901104, 910102, 910105, 920203, 920206, 930116, 930604, 940906, 941903, 960301, 961005, 961701, 970102, 970105, 980401, 981002, 990303, 990705, 1000302, 1000701, 1010401, 1011002, 1020301, 1021005, 1030202, 1030604, 1040501, 1041403, 1050503, 1052203, 1063006, 1063904, 1064703, 1070205, 1070402, 1080501, 1100402, 1100403, 3011304, 3020401, 3021205, 3022005, 3030204, 3030402, 3040401, 3041104, 3041902, 3052603, 3053302, 3054101, 3064801, 3065503, 3066305, 3070203, 3070901, 3071502, 3082202, 3082909, 3083601, 3094307, 3095001, 3095712, 3106302, 3107006, 3107701, 3118401, 3119108, 3119804, 3120701, 3121502, 3122303, 3130203, 3131105, 3142005, 3142902, 3153806, 3154709, 3165501, 3166406, 3177302, 3178202, 3280301, 3281002, 3290507, 3291104, 3310201, 3320407, 3330201, 3330205, 3340501, 3350801, 3360503, 5120102, 5120905, 5121706, 5132502, 5133309, 5134002, 5140301, 5140304, 5150403, 5151101, 5160204, 5161408, 5162602, 5173808, 5175007, 5176302, 5180102, 5180501, 5190103, 5190106, 5200608, 5201403, 5210707, 5211505, 5212203, 5220805, 5221703, 5230603, 5231506, 5242302, 5243104, 5250908, 5252402, 5254014, 5260206, 5261003, 5261802, 5270501, 5271404, 5280301, 5281304, 5282301, 5290203, 5300303, 5300708, 5321603, 5330305, 5330706, 5340408, 5341111, 5350210, 5351005, 5351907, 5362702, 5363504, 5364401, 5382402, 5383102, 5383801, 5390801, 5391603, 5392403, 5400505, 5401107, 5450307, 5460210, 5460407, 5470507, 5471506, 5480406, 5480905
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Egypt_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
