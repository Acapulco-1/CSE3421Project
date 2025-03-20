create table "Transaction"
(
    Transaction_ID int
        primary key,
    Completion     boolean,
    Date           DATE,
    Account_ID     varchar(255)
        references Customers
);

