CREATE TABLE [dbo].[ValidationReportLog] (
    [ID]               UNIQUEIDENTIFIER NOT NULL,
    [SourceDB]         NVARCHAR (250)   NOT NULL,
    [SourceSchema]     NVARCHAR (250)   NOT NULL,
    [SourceTable]      NVARCHAR (250)   NOT NULL,
    [SourceColumn]     NVARCHAR (250)   NOT NULL,
    [TargetDB]         NVARCHAR (250)   NOT NULL,
    [TargetSchema]     NVARCHAR (250)   NOT NULL,
    [TargetTable]      NVARCHAR (250)   NOT NULL,
    [TargetColumn]     NVARCHAR (250)   NOT NULL,
    [ValidationType]   NVARCHAR (250)   NOT NULL,
    [SourceValue]      DECIMAL (38, 10) NOT NULL,
    [TargetValue]      DECIMAL (38, 10) NOT NULL,
    [ValidationStatus] NVARCHAR (250)   NOT NULL
);

