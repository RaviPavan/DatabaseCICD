CREATE TABLE [dbo].[ValidationQueryLog] (
    [ID]             UNIQUEIDENTIFIER NOT NULL,
    [DBName]         NVARCHAR (250)   NOT NULL,
    [SchemaName]     NVARCHAR (250)   NOT NULL,
    [TableName]      NVARCHAR (250)   NOT NULL,
    [SystemType]     NVARCHAR (250)   NOT NULL,
    [ValidationType] NVARCHAR (250)   NOT NULL,
    [Query]          NVARCHAR (MAX)   NOT NULL
);

