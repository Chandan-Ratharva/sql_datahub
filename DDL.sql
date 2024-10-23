Create table logging_Details (PipelineName varchar(255),Runid varchar(255),Triqger_Type varchar(200),
RunStart varchar(255),RunEnd varchar(255),ServerName varchar(255),Dbname varchar(200))
Create Procedure sp_logging_Details
@PipelineName varchar (50),
@RunId varchar (100),
@TriggerType varchar (100),
@RunStartdt datetime,
@RunEnddt datetime,
@ServerName varchar (100),
@Dbname varchar (50)
as
begin
Insert Into logging_Details
values (@PipelineName,@RunId,@TriggerType,@RunStartdt, @RunEnddt,@ServerName,@Dbname)
End