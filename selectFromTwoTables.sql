/*3. Напишите скрипт, который будет возвращать из таблиц поля product_name 
для пользователей с именем alexey независимо от регистра ввода имени.*/

select o.product_name
from ORDERS o, CUSTOMERS c
where c.id = o.customer_id
and LOWER(name)=LOWER('alexey')