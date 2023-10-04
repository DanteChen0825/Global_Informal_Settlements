# Global_Informal_Settlements

This project is a component of my MSc Urban Spatial Science dissertation, [A Machine Learning Approach for The Identification of Informal Settlements by Remote Sensing Data and Socio-Economic Linkages, Evidence From 68 Cities Around the Globe](Dissertation.pdf), completed at the UCL [Centre for Advanced Spatial Analysis](https://www.ucl.ac.uk/bartlett/casa/). The guidance and support of my supervisor, [Dr. Ollie Ballinger](https://oballinger.github.io), have been instrumental throughout this study.

## DHS Data

In light of the constraints imposed by the DHS, the raw data are not allowed to be shared publicly. However, interested parties can access the pertinent raw data via [the official website of the DHS Program](https://dhsprogram.com/data/available-datasets.cfm), with the data being readily accessible upon request.

The SAS codes for processing DHS raw data specific to each country are located within the [DHS_SAS_code](DHS_SAS_code) directory, while the processed output data for each country can be located in the [DHS_output folder](Global_Informal_Settlements/DHS_output) directory.

Subsequently, we employ R for data integration and manipulation. The respective code for individual-level processing is encapsulated in the [Survey_data_process_individual.Rmd](Survey_data_process_individual.Rmd), whereas code for cluster-level processing can be found in the [Survey_data_process_cluster.Rmd](Survey_data_process_cluster.Rmd). Additionally, the Gini coefficient data utilized throughout this procedure, [gini_clean.csv](data/gini_clean.csv), can be retrieved from the data folder."

## Open Buildings Data

We used JavaScript code within Google Earth Engine to calculate the relevant building area metrics and establish the Small Building Density Score. Access to the corresponding code can be attained via Google Earth Engine [Script Path](https://code.earthengine.google.com/?scriptPath=users%2FDanteChen0825%2FGlobal_Informal_Settlements%3AData_Processing) or
[Shareable Snapshot](https://code.earthengine.google.com/d27b6083956925d1113667b9f3358a30).

Special attention should be paid to the fact that due to the excessive amount of calculation, the total computing time of Google Earth Engine exceeds 24 hours, therefore, we split one large task into several small tasks according to countries or regions, and then merge the output results into one file. 

The output geojson files originating from Google Earth Engine have been organized within the [GEE_output](GEE_output) folder. We then processed the files with QGIS and R, including [geo_data_process.Rmd](geo_data_process.Rmd). The ultimate output data [point_data.csv](data/point_data.csv) is in the data folder.

## Data Analysis

The data analysis at the individual level was conducted utilizing R, and the corresponding code can be accessed in the file [data_analysis_individual.Rmd](data_analysis_individual.Rmd). This document encompasses not only the output of select data visualizations but also includes Models 1 through 9.

Similarly, the R code employed for data analysis at the cluster level can be found in [data_analysis_cluster.Rmd](data_analysis_cluster.Rmd). This file comprises the output of partial visualizations, in addition to Models 10 through 17.

## Data Visualization

During the course of this project, numerous visualizations were crafted. One of these visualizations is [Global Cities Building Area Map](https://dantechen0825.github.io/Global_Building_Area_Layer/) based on Open Buildings data, encompassing a visualization of building areas within a 500-meter grid across 27 countries and 68 most populous cities worldwide. In this visualization, deeper colors signify larger areas covered by buildings within the grid, implying a lack of greenery, congestion, or high population density.
