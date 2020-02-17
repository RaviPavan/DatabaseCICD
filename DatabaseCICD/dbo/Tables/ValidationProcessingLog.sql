CREATE TABLE [dbo].[ValidationProcessingLog] (
    [ID]              UNIQUEIDENTIFIER NOT NULL,
    [ValidationType]  NVARCHAR (250)   NOT NULL,
    [MessageSeverity] NVARCHAR (250)   NOT NULL,
    [MessageCategory] NVARCHAR (250)   NOT NULL,
    [Source]          NVARCHAR (750)   NULL,
    [Target]          NVARCHAR (750)   NULL,
    [Message]         NVARCHAR (4000)  NULL,
    [CreatedOn]       DATETIME         NULL
);

