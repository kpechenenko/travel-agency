-- Заполняем Клиенты.
insert into customers(name, surname, patronymic, gender, passport_number, birth_date)
values ('Ivan', 'Pupkin', 'Anatolyevich', 'men', '999222', '1972-06-01');
insert into customers(name, surname, patronymic, gender, passport_number, birth_date)
values ('Sergey', 'Pupkin', 'Ivanovich', 'men', '568932', '2002-07-03');
insert into customers(name, surname, patronymic, gender, passport_number, birth_date)
values ('Irina', 'Shwed', 'Kirillovna', 'women', '123567', '1980-02-17');
insert into customers(surname, name, patronymic, gender, passport_number, birth_date)
values ('Kashina', 'Galina', 'Grigorievna', 'women', '345770', '1965-06-30');
insert into customers(surname, name, patronymic, gender, passport_number, birth_date)
values ('Loginova', 'Elizaveta', 'Denisovna', 'women', '890432', '1993-04-25');
-- Заполняем Страны.
insert into countries(name)
values ('Russia');
insert into countries(name)
values ('Spain');
insert into countries(name)
values ('Greece');
insert into countries(name)
values ('Georgia');
insert into countries(name)
values ('Kazakhstan');
-- Заполняем Авиокомпании.
insert into airlines(name)
values ('Aeroflot');
insert into airlines(name)
values ('S7 airlines');
insert into airlines(name)
values ('Victory');
insert into airlines(name)
values ('Air astana');
-- Заполняем Отели.
insert into hotels(name, company_price, customer_price)
values ('B and B', -15000, 18000);
insert into hotels(name, company_price, customer_price)
values ('Holiday village', -26800, 28000);
insert into hotels(name, company_price, customer_price)
values ('Guest House', -20000, 22000);
insert into hotels(name, company_price, customer_price)
values ('Lodge', -13000, 15500);
insert into hotels(name, company_price, customer_price)
values ('SPA', -35000, 40000);
-- Заполняем Авиарейсы.
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (1, -20000, 25000, 1, 3);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (4, -15000, 18600, 1, 5);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (2, -20000, 23000, 1, 4);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (3, -30000, 33600, 1, 2);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (1, -18000, 23500, 3, 1);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (4, -17300, 19600, 5, 1);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (2, -21400, 23000, 4, 1);
insert into flights(airline_id, company_price, customer_price, departure_country_id, destination_country_id)
values (3, -29700, 31900, 2, 1);
-- Заполняем Туры.
insert into tours(hotel_id, country_id, departure_flight_id, arrival_flight_id, start_date, finish_date,
                  company_service_cost, number_of_free_seats)
values (1, 3, 5, 1, '2020-06-01', '2020-06-11', 10000, 3);
insert into tours(hotel_id, country_id, departure_flight_id, arrival_flight_id, start_date, finish_date,
                  company_service_cost, number_of_free_seats)
values (5, 2, 8, 3, '2020-07-04', '2020-07-14', 9000, 2);
-- Заполняем Экскурсии.
insert into excursions(country_id, location, company_price)
values (2, 'Lazurnyi beach', -2000);
insert into excursions(country_id, location, company_price)
values (3, 'Barjomi rill', -3000);
insert into excursions(country_id, location, company_price)
values (4, 'Big mountain', -2500);
insert into excursions(country_id, location, company_price)
values (5, 'Astana eye', -3500);
-- Заполняем Договоры.
insert into contracts(tour_id, date_of_conclusion)
values (1, '2020-05-31');
insert into contracts(tour_id, date_of_conclusion)
values (2, '2020-06-25');
insert into contracts(tour_id, date_of_conclusion)
values (2, '2020-06-17');
insert into contracts(tour_id, date_of_conclusion)
values (1, '2020-05-19');
-- Заполняем Туристы.
insert into tourists(customer_id, contract_id)
values (1, 1);
insert into tourists(customer_id, contract_id)
values (2, 1);
insert into tourists(customer_id, contract_id)
values (3, 2);
insert into tourists(customer_id, contract_id)
values (4, 3);
insert into tourists(customer_id, contract_id)
values (5, 4);
-- Заполняем Посещенные экскурсии.
insert into visited_excursions(contract_id, excursion_id, customer_price, date_of_visit)
values (1, 2, 4000, '2020-06-03');
insert into visited_excursions(contract_id, excursion_id, customer_price, date_of_visit)
values (1, 2, 4000, '2020-06-07');
insert into visited_excursions(contract_id, excursion_id, customer_price, date_of_visit)
values (3, 1, 3500, '2020-07-05');
-- Заполняем Отправленные грузы.
insert into goods_specifications
values (2, 8, -5000, 7000, 3);
insert into goods_specifications
values (4, 5, -10000, 15000, 15);