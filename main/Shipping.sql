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

