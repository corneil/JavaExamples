CREATE DATABASE TOTP;
USE TOTP;
CREATE TABLE users (user VARCHAR(20) NOT NULL PRIMARY KEY, password VARBINARY(200) NOT NULL);
CREATE TABLE TOTP (user VARCHAR(20) NOT NULL, secret VARBINARY(200), FOREIGN KEY(user) REFERENCES users(user));
CREATE TABLE roles (user VARCHAR(20) NOT NULL, role VARCHAR(20) NOT NULL, FOREIGN KEY(user) REFERENCES users(user));