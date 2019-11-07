# Data Factory Demo Environment
Source control for js-ADF in MAC

This is a lab environment built for demos, tests, and PoC purposes using Azure Data Factory v2.

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
  
3) Data Flow (In Public Preview at time of build)<br>
  a. Maps the CSV file for MockPersons to a SQLDB table
  
## Use case/customer scenarios

### State of Hawaii - LeanIX Pipelines and DataSets
[MSX ID:7-UFW52PVX TPID:1299547  Contact: Jussi.Sipola@hawaii.gov](https://microsoftsales.crm.dynamics.com/main.aspx?appid=fe0c3504-3700-e911-a849-000d3a10b7cc&pagetype=entityrecord&etn=msp_engagement&id=ab6c8d16-1eea-e911-a85d-000d3a10b05d)
* REST API authentication activity getting and consuming a Bearer token in a Authorization Header
* Examples of how to pass parameters, using global pipeline variables, and setting dataset() specific paramaters
* Examples of using the Until and ForEach iterative loops
* Examples of setting/consuming pageSize parameter for REST APIs that return results one page at a time

### San Francisco Department of Public Works
[MSX ID:7-UENMBVYLG TPID:1312570  Contact: Vincent.Kwok@sfdpw.org](https://microsoftsales.crm.dynamics.com/main.aspx?appid=fe0c3504-3700-e911-a849-000d3a10b7cc&pagetype=entityrecord&etn=msp_engagement&id=1a8822f8-28e6-e911-a862-000d3a10be6f)
* Consuming Azure Tables REST API
  
## References

### General

[Handling Bearer Tokens in Azure Pipeline](https://stackoverflow.com/questions/53859600/handling-bearer-tokens-in-azure-pipeline-for-http-objects)

[Creating SQL Table schemas from JSON](https://bertwagner.com/2018/05/22/converting-json-to-sql-server-create-table-statements/)

[Discussion regarding Operating System error(null)](https://stackoverflow.com/questions/46959338/error-executing-openrowset-bulk-azure-sql-database)

[Service-to-Service authentication with Azure Data Lake Storage using AAD](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-service-to-service-authenticate-using-active-directory)

[Loading files from Azure Blob Storage into Azure SQL Database](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2017/02/23/loading-files-from-azure-blob-storage-into-azure-sql-database/)

[Load data from Azure Data Lake into SQL](https://docs.microsoft.com/en-us/azure/sql-data-warehouse/sql-data-warehouse-load-from-azure-data-lake-store)

[Dark mode for SSMS](https://www.sqlshack.com/setting-up-the-dark-theme-in-sql-server-management-studio/)

[Discussion on how to format the body of a Web pipeline](https://social.msdn.microsoft.com/Forums/azure/en-US/c826f2a8-fa23-4513-bf72-51c97f36b407/the-format-of-body-for-a-post-request-in-web-activity-in-azure-data-factory)

[Get JSON reponse in a Web Activity](https://feedback.azure.com/forums/270578-data-factory/suggestions/34190236-get-the-json-response-in-a-web-activity)

[Discussion on how to use ouput from Web Activity in ADF](https://stackoverflow.com/questions/49693338/use-output-from-web-activity-call-as-variable)

[Discussion on how to run PowerShell in Data Factory](https://stackoverflow.com/questions/52721399/how-to-run-powershell-from-azure-data-factory)

[Custom Activity in Azure Data Factory](https://docs.microsoft.com/en-us/azure/data-factory/transform-data-using-dotnet-custom-activity)

[For Each activity in Data Factory](https://docs.microsoft.com/en-us/azure/data-factory/control-flow-for-each-activity)

[Used these instructions to pass parameters from pipeline to Data Set parameters and then having something like the Relative URL field refer to the parameters in the dataset()](https://blog.pragmaticworks.com/azure-data-factory-v2-parameter-passing)

[Converting @activity output to string](https://stackoverflow.com/questions/49693338/use-output-from-web-activity-call-as-variable)

[Running Python code in an ADF Custom Activity](https://stackoverflow.com/questions/48316458/azure-data-factory-python-custom-activity)

### Online tools (especially useful for converting hashes like Base64, used in Authorization headers)

[Convert to base64 for the LeanIX apitoken](https://www.base64encode.org/)

[Testing Azure REST APIs with Postman](https://www.youtube.com/watch?v=ujzrq8Fg9Gc)

[Hash signature in Postman](https://stackoverflow.com/questions/52974244/concatenate-hex-256sha-hash-a-signature)

[Creating HMAC in Postman](https://gauravds.blogspot.com/2016/06/creating-hmac-in-postman-using-cryptojs.html)

[Discussion - Setting UTC Date variable in Postman to pass as a Header](https://gist.github.com/lsloan/8b986e4ac194dc01de35c017f355e455)

[Online Base64 Encoder/Decoder for Dev/Debugging purposes](https://www.base64converter.com/)

### Consuming Azure Tables REST API

[Azure Table Service REST API](https://docs.microsoft.com/en-us/rest/api/storageservices/table-service-rest-api)

[How to use Azure Storage APIs without SDK](https://tsmatz.wordpress.com/2016/07/06/how-to-get-azure-storage-rest-api-authorization-header/)

[Query timeout and pagination for Azure Tables](https://docs.microsoft.com/en-us/rest/api/storageservices/query-timeout-and-pagination)

[Authorize requests to Azure Storage](https://docs.microsoft.com/en-us/rest/api/storageservices/authorize-requests-to-azure-storage)

### Using AAD and Service Principals to access data stored in Storage Accounts (Blobs, etc)

[Use the Portal to Create an AAD App/Service Principal](https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal)

### LeanIX specific references

[LeanIX Developer Guide and Data Model](https://dev.leanix.net/docs/data-model)

[Pathfinder REST API explorer - good for debugging and consuming LeanIX APIs](https://hawaii.leanix.net/services/pathfinder/v1/docs/#!/factSheets/getFactSheetRelations)

### Videos

[Video of ForEach activity](https://www.youtube.com/watch?v=P9uk-q-N8a4&t=277s)

