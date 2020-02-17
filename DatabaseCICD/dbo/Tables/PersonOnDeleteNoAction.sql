CREATE TABLE [dbo].[PersonOnDeleteNoAction] (
    [PersonId]   INT           IDENTITY (1, 1) NOT NULL,
    [PersonName] VARCHAR (100) NULL,
    [CityId]     INT           NULL,
    CONSTRAINT [FK__PersonOnD__CityI__634EBE90] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([CityId]) ON DELETE CASCADE
);

