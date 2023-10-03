/* Step 1: Set the input dataset */
libname indata "N:/Downloads/IAIR7ESD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.IAIR7EFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
84102, 84103, 84104, 84105, 84106, 84107, 84108, 84109, 84112, 84113, 84114, 84115, 84117, 84118, 84119, 84120, 84121, 84122, 84123, 84125, 84126, 84128, 84129, 84130, 84131, 84132, 84133, 84135, 84136, 84137, 84138, 84139, 84140, 84141, 84142, 84201, 84202, 84204, 84205, 84206, 84208, 84209, 84210, 84211, 84214, 84215, 84216, 84217, 84218, 84219, 84220, 84221, 84222, 84224, 84225, 84226, 84227, 84228, 84229, 84230, 84231, 84232, 84233, 84234, 84235, 84236, 84237, 84238, 84241, 84242, 84301, 84302, 84303, 84304, 84305, 84306, 84307, 84308, 84309, 84310, 84311, 84312, 84313, 84314, 84316, 84317, 84318, 84319, 84320, 84321, 84322, 84323, 84324, 84325, 84326, 84327, 84328, 84329, 84330, 84331, 84332, 84333, 84334, 84335, 84336, 84337, 84338, 84339, 84340, 84341, 84342, 84401, 84403, 84405, 84407, 84410, 84412, 84414, 84415, 84417, 84418, 84419, 84420, 84421, 84422, 84423, 84424, 84425, 84426, 84427, 84428, 84429, 84431, 84432, 84434, 84435, 84436, 84437, 84438, 84439, 84440, 84441, 84442, 84501, 84502, 84503, 84505, 84506, 84507, 84508, 84509, 84510, 84511, 84512, 84513, 84514, 84515, 84516, 84517, 84518, 84519, 84520, 84521, 84522, 84523, 84524, 84525, 84526, 84527, 84528, 84529, 84530, 84531, 84533, 84534, 84535, 84536, 84537, 84538, 84540, 84542, 84601, 84602, 84603, 84604, 84605, 84607, 84608, 84610, 84611, 84612, 84614, 84615, 84616, 84617, 84618, 84619, 84620, 84621, 84622, 84623, 84624, 84625, 84626, 84627, 84628, 84629, 84631, 84632, 84633, 84635, 84636, 84637, 84638, 84640, 84641, 84642, 84701, 84702, 84703, 84704, 84705, 84706, 84707, 84708, 84710, 84711, 84712, 84713, 84714, 84715, 84716, 84717, 84718, 84719, 84720, 84721, 84722, 84723, 84724, 84725, 84726, 84727, 84728, 84729, 84731, 84732, 84733, 84734, 84735, 84736, 84737, 84738, 84739, 84740, 84741, 84742, 84801, 84802, 84803, 84804, 84805, 84807, 84808, 84809, 84810, 84811, 84812, 84814, 84815, 84816, 84817, 84818, 84819, 84820, 84821, 84822, 84823, 84824, 84825, 84826, 84827, 84828, 84829, 84832, 84833, 84834, 84835, 84836, 84837, 84838, 84839, 84840, 84841, 84842, 85101, 85106, 88501, 88502, 88503, 88504, 88505, 88507, 88509, 88510, 88511, 88512, 88514, 88515, 88517, 88518, 88519, 88521, 88522, 88523, 88524, 88525, 88526, 88527, 88529, 88530, 88532, 88533, 88534, 88535, 88537, 88538, 88539, 88540, 88541, 88542, 90518, 90533, 90539
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/India_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;