CREATE TABLE [dbo].[PersonOnDeleteCascade] (
    [PersonId]   INT           IDENTITY (1, 1) NOT NULL,
    [PersonName] VARCHAR (100) NULL,
    [CityId]     INT           NULL,
    CONSTRAINT [FK__PersonOnD__CityI__6166761E] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([CityId]) ON DELETE CASCADE
);

