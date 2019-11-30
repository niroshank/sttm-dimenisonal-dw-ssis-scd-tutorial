# sttm-dimenisonal-dw-ssis-scd
Source to Target Mapping, Dimensional Model, Data warehousing, SQL Server Integration Services, Slowly Changing Dimension ( Kimbal's Type 1,2 and 3 )

## Setup 
1. Design a dimensional model for the below scenario -> **Dimensional Model** Folder

2. Implement the datawarehouse -> **Dollmart.Source.Database** VS Database Project Folder or **Database Backup** Folder, you can use the bak. file to restore the databases or run the sql script to generate schemas and data

3. Do a source to target mapping in an excel sheet -> **Source To Target Mapping** Folder (Source system - DSD = Dollmart Source Database)

4. Write ETL using MS SSIS -> **Dollmart.IntegrationServices** VS SSIS Project Folder

5. SCD -> Seperate shema called **scd** has created for this question, ETL process will populate the data into scd schema tables seperately

Thank you :+1:
