create table Customers
(
    Account_ID int
        primary key,
    FirstName  varchar(255),
    LastName   varchar(255),
    PhoneNo    int,
    Balance    Decimal(15, 2)
);

create table Publisher
(
    Publisher varchar(255)
        primary key
);

create table Books
(
    ISBN      bigint
        primary key,
    Year      int,
    Price     decimal(15, 2),
    Title     varchar(255),
    Category  varchar(255),
    Publisher varchar(255)
        references Publisher,
    Total     int
);

create table Author
(
    Author varchar(255),
    ISBN   bigint
        references Books
);

create table Preferences
(
    Category   varchar(255),
    Publisher  varchar(255)
        references Publisher,
    Account_ID int
        primary key
        references Customers
);

create table "Transaction"
(
    Transaction_ID int
        primary key,
    Completion     boolean,
    Date           DATE,
    Account_ID     varchar(255)
        references Customers
);

create table BOOK_IN_TRANSACTION
(
    ISBN           bigint
        references Books,
    Transaction_ID varchar(255)
        references "Transaction"
);

create table Shipping
(
    Partner            varchar(255),
    Method             varchar(255),
    Predicted_End_Date DATE,
    Start_Date         DATE,
    Transaction_ID     varchar(255)
        primary key
        references "Transaction"
);

create table sqlite_master
(
    type     TEXT,
    name     TEXT,
    tbl_name TEXT,
    rootpage INT,
    sql      TEXT
);