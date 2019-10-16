Declare @LeanIXData VARCHAR(max)

SELECT @LeanIXData = BulkColumn 
FROM OPENROWSET(BULK 'C:\temp\LeanIXData.json', SINGLE_CLOB) as j;

SELECT @LeanIXData as SingleRow_Column

CREATE EXTERNAL DATA SOURCE MyAzureBlobStorage
WITH (TYPE = BLOB_STORAGE, LOCATION = 'https://saadlsv2.dfs.core.windows.net');


DROP EXTERNAL DATA SOURCE MyAzureBlobStorage;
DROP DATABASE SCOPED CREDENTIAL MyAzureBlobStorageCredential;
DROP MASTER KEY;

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Fluffy&jasmak1';

CREATE DATABASE SCOPED CREDENTIAL MyAzureBlobStorageCredential
With IDENTITY = 'SHARE ACCESS SIGNATURE',
SECRET = 'U6srj0HjtdOMl1+hR0kj4qySKRPNDt+my8VsWwORHC+fVY1UHXxr8o3BXnBvsgGlnF8mZ8FRJJqBOxBLyZA1Bw=='

CREATE EXTERNAL DATA SOURCE MyAzureBlobStorage
with (TYPE = BLOB_STORAGE, LOCATION = 'https://saadlsv2.dfs.core.windows.net', CREDENTIAL = MyAzureBlobStorageCredential);

SELECT * 
FROM OPENROWSET(BULK 'raw/json/data_c5b6a598-31c3-4384-ad01-9eb53345505e_2330cf89-5510-4ec4-8229-e88603c984e3.json', DATA_SOURCE = 'MyAzureBlobStorage', SINGLE_CLOB) as j;