-- Создание пользователя для репликации
CREATE USER repl_user REPLICATION LOGIN PASSWORD 'q12345';

-- Создание базы данных
CREATE DATABASE base_pt;

-- Переключение на созданную базу данных
\connect base_pt;

-- Создание таблицы для номеров телефонов, если она не существует
CREATE TABLE IF NOT EXISTS phone_numbers (
    id SERIAL PRIMARY KEY,
    phone_number VARCHAR(20) NOT NULL
);

-- Создание таблицы для email, если она не существует
CREATE TABLE IF NOT EXISTS emails (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL
);

-- Вставка данных в таблицу emails
INSERT INTO emails (email) 
VALUES ('boba@test.com'), ('biba@yandex.ru');

-- Вставка данных в таблицу phone_numbers
INSERT INTO phone_numbers (phone_number) 
VALUES ('89306785498'), ('+75556668888');