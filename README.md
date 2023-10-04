# Global_Informal_Settlements

## DHS Data

Due to the limitations of DHS, its raw data are not allowed to be shared publicly. The relevant raw data can be found on [the official website of the DHS Program](https://dhsprogram.com/data/available-datasets.cfm) and are available for free upon request.

The SAS codes for each country that processes DHS raw data can be found in the [DHS_SAS_code](DHS_SAS_code) folder, and the processed output data for each country can be found in the [DHS_output folder](Global_Informal_Settlements/DHS_output).

We then use R to integrate the data and for manipulation. The relevant code for the individual level can be found in the file [Survey_data_process_individual.Rmd](Survey_data_process_individual.Rmd), and code for cluster level can be found in the file [Survey_data_process_cluster.Rmd](Survey_data_process_cluster.Rmd). The Gini coefficient data used in this process, [gini_clean.csv](data/gini_clean.csv), can be found in the data folder.





## Remote Sensing Data

We used JavaScript code in Google Earth Engine to calculate the relevant building area metrics as well as the Small Building Density Score. The relevant code is available at Google Earth Engine [Script Path](https://code.earthengine.google.com/?scriptPath=users%2FDanteChen0825%2FGlobal_Informal_Settlements%3AData_Processing) Or
[Shareable Snapshot](https://code.earthengine.google.com/d27b6083956925d1113667b9f3358a30).

Special attention should be paid to the fact that due to the excessive amount of calculation, the total computing time of Google Earth Engine exceeds 24 hours, therefore, we split one large task into several small tasks according to countries or regions, and then merge the output results into one file. 

The output geojson files of Google Earth Engine are in the [GEE_output](GEE_output) folder. We then processed the files with QGIS and R, including [geo_data_process.Rmd](geo_data_process.Rmd). The output data [point_data.csv](data/point_data.csv) is in the data folder.
