CREATE TABLE [dbo].[ValidationMetadata] (
    [SourceDB]                  NVARCHAR (250) NOT NULL,
    [SourceSchema]              NVARCHAR (250) NOT NULL,
    [SourceTable]               NVARCHAR (250) NOT NULL,
    [SourceColumn]              NVARCHAR (250) NOT NULL,
    [SourceDataType]            NVARCHAR (250) NOT NULL,
    [SourceDataSliceColumn]     NVARCHAR (250) NULL,
    [TargetDB]                  NVARCHAR (250) NOT NULL,
    [TargetSchema]              NVARCHAR (250) NOT NULL,
    [TargetTable]               NVARCHAR (250) NOT NULL,
    [TargetColumn]              NVARCHAR (250) NOT NULL,
    [TargetDataType]            NVARCHAR (250) NOT NULL,
    [FullDataComparisonOrderBy] INT            NULL,
    [TargetDataSliceColumn]     NVARCHAR (250) NULL,
    [IgnoreColumn]              BIT            DEFAULT ((0)) NULL,
    [IgnoreColumnSum]           BIT            DEFAULT ((0)) NULL,
    [IgnoreColumnChecksum]      BIT            DEFAULT ((0)) NULL,
    [IgnoreFullDataComparison]  BIT            DEFAULT ((0)) NULL
);

