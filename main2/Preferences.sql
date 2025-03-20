create table Preferences
(
    Category   varchar(255),
    Publisher  varchar(255)
        references Publisher,
    Account_ID int
        primary key
        references Customers
);

