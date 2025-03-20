create table BOOK_IN_TRANSACTION
(
    ISBN           bigint
        references Books,
    Transaction_ID varchar(255)
        references "Transaction"
);

