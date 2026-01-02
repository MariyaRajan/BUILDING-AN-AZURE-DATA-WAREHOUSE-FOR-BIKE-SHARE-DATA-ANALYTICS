# BUILDING-AN-AZURE-DATA-WAREHOUSE-FOR-BIKE-SHARE-DATA-ANALYTICS
This project builds a cloud-based data warehouse using Azure Synapse Analytics for Divvy bike share data. Data is extracted from PostgreSQL, loaded into Synapse using external tables, and transformed into a star schema using CETAS to support analytics.

PROJECT OVERVIEW :

 Divvy is a bike sharing program in Chicago, Illinois (USA) that allows riders to purchase a pass at a kiosk or use a mobile application to unlock a bike at stations around the city and use the bike for a specified amount of time. Bikes can be returned to the same station or to another station. The City of Chicago makes anonymized bike trip data publicly available for analysis.
Since the Divvy trip data are anonymous, this project uses synthetic rider, account, and payment data created to complement the public trip and station data. Together, the dataset simulates a real-world OLTP system.

Goal :

The goal of this project is to design and implement a cloud-based data warehouse using Azure Synapse Analytics, transforming the relational data into a star schema optimized for analytics.

Tasks completed : 

Task 1:Create your Azure resources
  Azure Database for PostgreSQL (used as OLTP source)
  Azure Synapse Workspace
  Azure Blob Storage (Data Lake Gen2)
  built-in serverless SQL pool and database within the Synapse workspace

Task 2: Design a star schema
  design a star schema based on business outcomes using fact and dimension tables.

Task 3: Create the data in PostgreSQL
  Used the provided Python script ProjectDataToPostgres.py
  four tables into PostgreSQL and Verified data using pgAdmin

Task 4: EXTRACT the data from PostgreSQL
  Used Azure Synapse Ingest Wizard
  Extract data from PostgreSQL to Azure Blob Storage

Task 5: LOAD the data into external tables in the data warehouse
  Created external staging tables using CREATE EXTERNAL TABLE

Task 6: TRANSFORM the data to the star schema using CETAS
  Created star schema tables using CREATE EXTERNAL TABLE AS SELECT (CETAS)

Key Concepts Demonstrated:

    Star schema modeling
    ELT pipeline design
    Azure Synapse serverless SQL pools
    External tables
    CETAS-based transformations
    Cloud-based data warehousing

   ## References
This project was developed as part of the Stream Training program, with guidance and reference from Udacity's course materials on *Azure Data Services*.


