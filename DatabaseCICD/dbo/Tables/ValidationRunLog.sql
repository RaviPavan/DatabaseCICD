CREATE TABLE [dbo].[ValidationRunLog] (
    [ID]                      UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [StartDate]               DATETIME         NOT NULL,
    [EndDate]                 DATETIME         NULL,
    [ConfigurationParameters] XML              NOT NULL
);

