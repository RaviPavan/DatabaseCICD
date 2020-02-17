CREATE TABLE [dbo].[PersonOnDeleteSetNULL] (
    [PersonId]   INT           IDENTITY (1, 1) NOT NULL,
    [PersonName] VARCHAR (100) NULL,
    [CityId]     INT           NULL,
    CONSTRAINT [FK__PersonOnD__CityI__65370702] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([CityId]) ON DELETE CASCADE
);

