# Set up 
---

1. Install: [docker](https://docs.docker.com/engine/install/) **Choose the your operating system** 

After installing, make sure you have docker running on your computer.

**Windows**

Install

   i) [Sql Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
    
   ii) Configure SSMS and setting up MS SQL Server
   
   Type into terminal or bash in the following order
   
        1. docker build -t dockerfile .
        
        2. docker run -p 1433:1433 -d dockerfile
        
   3. Open up SSMS and fill in as such. 
        
  ![](https://github.com/Juan-Zambrano/MSSQL_Example/blob/master/Lesson/Introduction/Resource/image.png)
            
  Password is *Password2020!* ,**Please never use this password in a production setting or with sensitive data.**
    
   4. If you see AdventureWorks as a listed database, then you are complete.
         
         
**MAC or Linux**
Install

   i)[Azure Data Studio](https://www.youtube.com/watch?v=04XTRrSJic8&t=453s)

   ii) Configure ADS
        


# Instruction video
[![IMAGE ALT TEXT HERE](https://i.ytimg.com/vi/04XTRrSJic8/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLAaZqogNWXpLcWG_azhOUgkTaeWNQ)](https://www.youtube.com/watch?v=04XTRrSJic8)
