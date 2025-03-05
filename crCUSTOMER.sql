
/*1. Напишите скрипт создания таблицы с параметрами:
название таблицы — CUSTOMERS;
содержит в себе 5 столбцов — id, name, surname, age, phone_number;
поле id будет первичным ключом, который инкрементируется каждый раз при создании пользователя.*/

create table CUSTOMERS
(
    id           bigserial,
    name         varchar(255) not null,
    surname      varchar(255) not null,
    age          int          not null default 18,
    phone_number varchar(20),
    primary key (id)
);

create SEQUENCE id_seq OWNED BY CUSTOMERS.id;

INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Piter', 'Parker', 36, 89275740189),
('Ivan', 'Petrov', 34, 89275740189),
('Anna', 'Ivanova', 23, 89274580189),
('Filipp', 'Antonov', 44, 89275740189),
('Svetlana', 'Zhdanova', 32, 89275740189),
('Bella', 'Ahmadulina', 17, 89275740189);


INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Dorov', 54, 89275557899)

select * from CUSTOMERS;
