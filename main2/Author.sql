create table Author
(
    Author varchar(255),
    ISBN   bigint
        references Books
);

