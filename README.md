# Data-Factory
Source control for js-ADF in MAC

This is a lab environment built for demos and test purposes using Azure Data Factory.

The capabilities built into this lab are:

1) Link Services for:
  a. A FileShare on an on-premises VM
  b. To Azure Data Lake Gen 2 with Hierarchical capability turned on
  c. To Azure SQL Database
  
2) Pipelines that:
  a. Copy binary files (images) from the FileShare to ADLSv2 raw/images
  b. Copy CSV file from FileShare to ADLSv2 raw/CSV
  c. Copy TXT files (large) from FileShare to ADLSv2 raw/TXT
  d. Runs the Data Flow mentioned in 3a below
  
3) Data Flow (In Public Preview at time of build)
  a. Maps the CSV file for MockPersons to a SQLDB table
  
** More to come **
