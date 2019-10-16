# Data Factory Demo Environment
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
  
## References

<a href="https://stackoverflow.com/questions/53859600/handling-bearer-tokens-in-azure-pipeline-for-http-objects">Handling Bearer Tokens in Azure Pipeline</a>

<a href="https://bertwagner.com/2018/05/22/converting-json-to-sql-server-create-table-statements/">Creating SQL Table schemas from JSON</a>

<a href="https://stackoverflow.com/questions/46959338/error-executing-openrowset-bulk-azure-sql-database">Discussion regarding Operating System error(null)</a>

<a href="https://blogs.msdn.microsoft.com/sqlserverstorageengine/2017/02/23/loading-files-from-azure-blob-storage-into-azure-sql-database/">Loading files from Azure Blob Storage into Azure SQL Database</a>

