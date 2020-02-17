CREATE TABLE [dbo].[Account] (
    [AccountID]        INT          IDENTITY (1, 1) NOT NULL,
    [AccountName]      VARCHAR (50) NULL ,
    [PrimaryContactID] INT          NULL,
    PRIMARY KEY CLUSTERED ([AccountID] ASC),
    CONSTRAINT [FK__Account__Primary__2FCF1A8A] FOREIGN KEY ([PrimaryContactID]) REFERENCES [dbo].[Contact] ([ContactID]) ON DELETE CASCADE
);

