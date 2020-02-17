CREATE TABLE [dbo].[Contact] (
    [ContactID]   INT          IDENTITY (1, 1) NOT NULL,
    [ContactName] VARCHAR (50) NULL,
    [AccountID]   INT          NULL,
    PRIMARY KEY CLUSTERED ([ContactID] ASC),
    CONSTRAINT [FK__Contact__Account__2EDAF651] FOREIGN KEY ([AccountID]) REFERENCES [dbo].[Account] ([AccountID])
);

