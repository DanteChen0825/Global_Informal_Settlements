# Global_Informal_Settlements

## DHS Data

In light of the constraints imposed by the DHS, the raw data are not allowed to be shared publicly. However, interested parties can access the pertinent raw data via [the official website of the DHS Program](https://dhsprogram.com/data/available-datasets.cfm), with the data being readily accessible upon request.

The SAS codes for processing DHS raw data specific to each country are located within the [DHS_SAS_code](DHS_SAS_code) directory, while the processed output data for each country can be located in the [DHS_output folder](Global_Informal_Settlements/DHS_output) directory.

Subsequently, we employ R for data integration and manipulation. The respective code for individual-level processing is encapsulated in the [Survey_data_process_individual.Rmd](Survey_data_process_individual.Rmd), whereas code for cluster-level processing can be found in the [Survey_data_process_cluster.Rmd](Survey_data_process_cluster.Rmd). Additionally, the Gini coefficient data utilized throughout this procedure, [gini_clean.csv](data/gini_clean.csv), can be retrieved from the data folder."

## Remote Sensing Data

We used JavaScript code in Google Earth Engine to calculate the relevant building area metrics as well as the Small Building Density Score. The relevant code is available at Google Earth Engine [Script Path](https://code.earthengine.google.com/?scriptPath=users%2FDanteChen0825%2FGlobal_Informal_Settlements%3AData_Processing) or
[Shareable Snapshot](https://code.earthengine.google.com/d27b6083956925d1113667b9f3358a30).

Special attention should be paid to the fact that due to the excessive amount of calculation, the total computing time of Google Earth Engine exceeds 24 hours, therefore, we split one large task into several small tasks according to countries or regions, and then merge the output results into one file. 

The output geojson files of Google Earth Engine are in the [GEE_output](GEE_output) folder. We then processed the files with QGIS and R, including [geo_data_process.Rmd](geo_data_process.Rmd). The output data [point_data.csv](data/point_data.csv) is in the data folder.

## Data Analysis

The code for analysing the data at the individual level was carried out using R and can be found in [data_analysis_individual.Rmd](data_analysis_individual.Rmd), which includes the output of some data visualisations, as well as the Models 1 to 9.

The R code for data analysis at the cluster level can be found in [data_analysis_cluster.Rmd](data_analysis_cluster.Rmd), which includes the output of partial visualisations, as well as the Models 10 to 17.

## Data Visualization

During the course of this project, numerous visualizations were crafted. One of these visualizations is [Global Cities Building Area Map](https://dantechen0825.github.io/Global_Building_Area_Layer/) based on Open Buildings data, encompassing a visualization of building areas within a 500-meter grid across 27 countries and 68 most populous cities worldwide. In this visualization, deeper colors signify larger areas covered by buildings within the grid, implying a lack of greenery, congestion, or high population density.
