
/*2. Напишите скрипт создания таблицы с параметрами:
название таблицы — ORDERS;
содержит в себе 4 столбца — id, date, customer_id,product_name, amount;
поле id будет первичным ключом, который инкрементируется каждый раз при создании заказа;
внешним ключом на поле id таблицы пользователей будет customer_id.*/

create table ORDERS
(
    id           bigserial,
    date        varchar(255) not null,
    customer_id  bigserial    not null,
    product_name    varchar(255) not null,
    amount int,
    primary key (id),
	foreign key (customer_id) references CUSTOMERS (id)
);

INSERT INTO ORDERS(date, customer_id, product_name, amount)
VALUES('03.02.2025', 1, 'Bread', 10),
       ('04.02.2025', 2, 'Milk', 5),
       ('03.02.2025', 2, 'Cake', 10),
       ('07.02.2025', 3, 'Butter', 500),
       ('13.02.2025', 4, 'Meat', 5),
       ('13.02.2025', 4, 'Bread', 5),
       ('03.03.2025', 4, 'Ketchup', 5),
       ('04.01.2025', 5, 'Cake', 3);

INSERT INTO ORDERS(date, customer_id, product_name, amount)
VALUES('23.02.2025', 7, 'Juce', 10)   

select * from ORDERS;