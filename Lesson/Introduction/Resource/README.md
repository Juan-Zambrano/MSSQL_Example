### Set up 
---

1. Install: [docker](https://docs.docker.com/engine/install/) **Choose the your operating system** 

** Windows**
Install

    i) [Sql Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
    
    ii) Configure SSMS and setting up MS SQL Server | Type into terminal or bash in the following order
        1. docker build -t dockerfile .
        2. docker run -p 1433:1433 -d dockerfile
        3. Open up SSMS and fill in as such. 
            
    
    

** MAC or Linux**
Install

    i)[Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15#get-azure-data-studio-for-macos)

    ii) Configure ADS
        

