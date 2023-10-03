/* Step 1: Set the input dataset */
libname indata "N:/Downloads/KEIR8ASD"; /* Specify the directory where the SAS dataset is located */
data my_data;
  set indata.KEIR8AFL(keep=CASEID V000 V001	V002 V008 V010 V011 V012 V013 V015 V020 V149 V106 V107 V119 V120 V121 V122 V123 V124 V125 V136 V137 V167 V171A V190 V191 V170 V394 V129 V113 V116 V153);
  where V001 in (
1635, 1636, 1637, 1638, 1639, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1650, 1651, 1652, 1653, 1654, 1655, 1657, 1658, 1659, 1660, 1661, 1662, 1663, 1664, 1665, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692
);
run;

/* Step 2: Export the dataset to a CSV file */
proc export data=my_data
  outfile="N:/Downloads/DHS_output/Kenya_survey.csv" /* Specify the output CSV file path */
  dbms=csv replace;
run;
