show databases;
create database IF NOT exists newdatabase;
show databases;
use newdatabase;
CREATE TABLE person (
    driver_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(20),
    address VARCHAR(30)
);

CREATE TABLE car (
    reg_num VARCHAR(10) PRIMARY KEY,
    model VARCHAR(10),
    year INT
);

CREATE TABLE accident (
    report_num INT PRIMARY KEY,
    accident_date DATE,
    location VARCHAR(20)
);

CREATE TABLE owns (
    driver_id VARCHAR(10),
    reg_num VARCHAR(10),
    PRIMARY KEY(driver_id, reg_num),
    FOREIGN KEY(driver_id) REFERENCES person(driver_id),
    FOREIGN KEY(reg_num) REFERENCES car(reg_num)
);

CREATE TABLE participated (
    driver_id VARCHAR(10),
    reg_num VARCHAR(10),
    report_num INT,
    damage_amount INT,
    PRIMARY KEY(driver_id, reg_num, report_num),
    FOREIGN KEY(driver_id) REFERENCES person(driver_id),
    FOREIGN KEY(reg_num) REFERENCES car(reg_num),
    FOREIGN KEY(report_num) REFERENCES accident(report_num)
);

INSERT INTO person (driver_id, name, address) VALUES ('D001', 'Alice', '123 Main St');
INSERT INTO person (driver_id, name, address) VALUES ('D002', 'Bob', '456 Elm St');
INSERT INTO person (driver_id, name, address) VALUES ('D003', 'Charlie', '789 Pine St');
INSERT INTO person (driver_id, name, address) VALUES ('D004', 'David', '321 Oak St');
INSERT INTO person (driver_id, name, address) VALUES ('D005', 'Eva', '654 Maple St');


INSERT INTO car (reg_num, model, year) VALUES ('KA053408', 'Toyota', 2020);
INSERT INTO car (reg_num, model, year) VALUES ('KB123456', 'Honda', 2019);
INSERT INTO car (reg_num, model, year) VALUES ('KC654321', 'Ford', 2021);
INSERT INTO car (reg_num, model, year) VALUES ('KD112233', 'Chevrolet', 2018);
INSERT INTO car (reg_num, model, year) VALUES ('KE445566', 'BMW', 2022);


INSERT INTO accident (report_num, accident_date, location) VALUES (11, '2003-01-01', 'Mysore Road');
INSERT INTO accident (report_num, accident_date, location) VALUES (12, '2004-02-02', 'South End Circle');
INSERT INTO accident (report_num, accident_date, location) VALUES (13, '2003-01-21', 'Bull Temple Road');
INSERT INTO accident (report_num, accident_date, location) VALUES (14, '2008-02-17', 'Mysore Road');
INSERT INTO accident (report_num, accident_date, location) VALUES (15, '2004-03-05', 'Kanakpura Road');


INSERT INTO owns (driver_id, reg_num) VALUES ('D001', 'KA053408');
INSERT INTO owns (driver_id, reg_num) VALUES ('D002', 'KB123456');
INSERT INTO owns (driver_id, reg_num) VALUES ('D003', 'KC654321');
INSERT INTO owns (driver_id, reg_num) VALUES ('D004', 'KD112233');
INSERT INTO owns (driver_id, reg_num) VALUES ('D005', 'KE445566');


INSERT INTO participated (driver_id, reg_num, report_num, damage_amount) VALUES ('D001', 'K A053408', 12, 20000);
INSERT INTO participated (driver_id, reg_num, report_num, damage_amount) VALUES ('D002', 'K B123456', 11, 30000);
INSERT INTO participated (driver_id, reg_num, report_num, damage_amount) VALUES ('D003', 'K C654321', 13, 15000);
INSERT INTO participated (driver_id, reg_num, report_num, damage_amount) VALUES ('D004', 'K D112233', 14, 25000);
INSERT INTO participated (driver_id, reg_num, report_num, damage_amount) VALUES ('D005', 'K E445566', 15, 40000);
