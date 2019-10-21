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

[Handling Bearer Tokens in Azure Pipeline](https://stackoverflow.com/questions/53859600/handling-bearer-tokens-in-azure-pipeline-for-http-objects)

[Creating SQL Table schemas from JSON](https://bertwagner.com/2018/05/22/converting-json-to-sql-server-create-table-statements/)

[Discussion regarding Operating System error(null)](https://stackoverflow.com/questions/46959338/error-executing-openrowset-bulk-azure-sql-database)

[Service-to-Service authentication with Azure Data Lake Storage using AAD](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-service-to-service-authenticate-using-active-directory)

[Loading files from Azure Blob Storage into Azure SQL Database](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2017/02/23/loading-files-from-azure-blob-storage-into-azure-sql-database/)

[Load data from Azure Data Lake into SQL](https://docs.microsoft.com/en-us/azure/sql-data-warehouse/sql-data-warehouse-load-from-azure-data-lake-store)

[Dark mode for SSMS](https://www.sqlshack.com/setting-up-the-dark-theme-in-sql-server-management-studio/)

[LeanIX Developer Guide and Data Model](https://dev.leanix.net/docs/data-model)

[Convert to base64 for the LeanIX apitoken](https://www.base64encode.org/)

[Discussion on how to format the body of a Web pipeline](https://social.msdn.microsoft.com/Forums/azure/en-US/c826f2a8-fa23-4513-bf72-51c97f36b407/the-format-of-body-for-a-post-request-in-web-activity-in-azure-data-factory)

[Get JSON reponse in a Web Activity](https://feedback.azure.com/forums/270578-data-factory/suggestions/34190236-get-the-json-response-in-a-web-activity)

[Discussion on how to use ouput from Web Activity in ADF](https://stackoverflow.com/questions/49693338/use-output-from-web-activity-call-as-variable)

[Discussion on how to run PowerShell in Data Factory](https://stackoverflow.com/questions/52721399/how-to-run-powershell-from-azure-data-factory)

[Custom Activity in Azure Data Factory](https://docs.microsoft.com/en-us/azure/data-factory/transform-data-using-dotnet-custom-activity)

