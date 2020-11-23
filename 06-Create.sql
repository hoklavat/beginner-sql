-- 06-Create
-- Covered: CREATE TABLE, PRIMARY KEY, FOREING KEY, CONSTRAINT, REFERENCES, MATCH SIMPLE, ON UPDATE, NO ACTION, ON DELETE, VARCHAR, TIMESTAMP, SERIAL, INTEGER, UNIQUE, NOT NULL

-- 1) Create table called role; columns: role_id (integer, primary), role_name (varchar(25))
CREATE TABLE role(
role_id serial PRIMARY KEY,
role_name VARCHAR(255) UNIQUE NOT NULL);

-- 2) Create table called account_role; columns: user_id (integer, primary from account, primary from role), role_id (integer, ), grant_date (timestamp)
-- CREATE TABLE account_role(
-- user_id integer NOT NULL,
-- role_id integer NOT NULL,
-- grant_date timestamp without time zone,
-- PRIMARY KEY(user_id, role_id),
-- CONSTRAINT account_role_role_id_fkey FOREIGN KEY(role_id) REFERENCES role(role_id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
-- CONSTRAINT account_role_user_id_fkey FOREIGN KEY(user_id) REFERENCES account(user_id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION);

-- 3) Create table called account; columns: user_id (integer, primary from account_role), username (varchar(50)), password (varchar(50)), email (varchar(355)), created_on (timestamp), last_login (timestamp)
-- CREATE TABLE account(
-- user_id serial PRIMARY KEY,
-- username VARCHAR(50) UNIQUE NOT NULL,
-- password VARCHAR(50) NOT NULL,
-- email VARCHAR(355) UNIQUE NOT NULL,
-- created_on TIMESTAMP NOT NULL,
-- last_login TIMESTAMP);

-- 4) Create table called leads; columns first_name, last_name, email, sign_up_date, number of minutes spent on the dvd rental site, id tracker. 
-- CREATE TABLE leads(
-- user_id serial PRIMARY KEY,
-- first_name VARCHAR(50) NOT NULL,
-- last_name VARCHAR(50) NOT NULL,
-- email VARCHAR(300) UNIQUE NOT NULL,
-- minutes integer NOT NULL,
-- signup_date timestamp NOT NULL);