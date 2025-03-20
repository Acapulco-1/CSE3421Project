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

