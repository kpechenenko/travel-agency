-- Авиакомпании.
create table airlines
(
    id   serial primary key,
    name varchar(255) not null
);
-- Страна.
create table countries
(
    id   serial primary key,
    name varchar(255) not null
);
-- Клиент.
create table customers
(
    id              serial primary key,
    surname         varchar(255) not null,
    name            varchar(255) not null,
    -- Отчество.
    patronymic      varchar(255),
    gender          varchar(35)  not null,
    passport_number varchar(35)  not null,
    birth_date      date         not null
);
-- Отель.
create table hotels
(
    id             serial primary key,
    name           varchar(255) not null,
    company_price  integer      not null check (company_price <= 0),
    customer_price integer      not null check (customer_price > 0)
);
-- Перелёт.
create table flights
(
    id                     serial primary key,
    airline_id             integer not null references airlines (id),
    company_price          integer not null,
    customer_price         integer not null,
    -- Страна отправления.
    departure_country_id   integer not null references countries (id),
    -- Пункт назначения.
    destination_country_id integer not null references countries (id)
);
--Тур.
create table tours
(
    id                   serial primary key,
    hotel_id             integer not null references hotels (id),
    country_id           integer not null references countries (id) not null,
    -- Id авиарейса вылета (отправления).
    departure_flight_id  integer not null references flights (id),
    -- Id авиарейса прилёта (прибытия).
    arrival_flight_id    integer not null references flights (id),
    start_date           date    not null,
    finish_date          date    not null,
    company_service_cost integer not null check (company_service_cost > 0),
    number_of_free_seats integer not null check (number_of_free_seats > 0)
);
-- Договор.
create table contracts
(
    id                 serial primary key,
    tour_id            integer not null references tours (id),
    -- Дата заключения.
    date_of_conclusion date    not null
);
-- Турист.
create table tourists
(
    customer_id integer not null references customers (id),
    contract_id integer not null references contracts (id),
    primary key (customer_id, contract_id)
);
-- Экскурсия.
create table excursions
(
    id            serial primary key,
    location      varchar(255) not null,
    company_price integer      not null check (company_price <= 0),
    country_id    integer      not null references countries (id)
);
-- Посещенная экскурсия.
create table visited_excursions
(
    contract_id    integer not null references contracts (id),
    excursion_id   integer not null references excursions (id),
    primary key (contract_id, excursion_id),
    customer_price integer not null check (customer_price > 0),
    date_of_visit  date    not null
);
-- Ведомости о грузах.
create table goods_specifications
(
    contract_id                 integer not null references contracts (id),
    flight_id                   integer not null references flights (id),
    primary key (contract_id, flight_id),
    shipping_price_for_company  integer not null check (shipping_price_for_company <= 0),
    shipping_price_for_customer integer not null check (shipping_price_for_customer > 0),
    weight                      integer not null check (weight > 0)
);