CREATE DATABASE Друзья_человека;
CREATE TABLE Domestic_Animals (
  animal_id INT PRIMARY KEY,
  animal_type VARCHAR(50)
);

CREATE TABLE Pack_Animals (
  animal_id INT PRIMARY KEY,
  animal_type VARCHAR(50)
);

CREATE TABLE Dogs (
  dog_id INT PRIMARY KEY,
  breed VARCHAR(50),
  age INT,
  FOREIGN KEY (dog_id) REFERENCES Domestic_Animals(animal_id)
    ON DELETE CASCADE
);

-- Create tables for other classes: Cats, Hamsters, Horses, Camels, Donkeys

CREATE TABLE Cats (
  cat_id INT PRIMARY KEY,
  breed VARCHAR(50),
  age INT,
  FOREIGN KEY (cat_id) REFERENCES Domestic_Animals(animal_id)
    ON DELETE CASCADE
);

-- Create tables for other classes: Cats, Hamsters, Horses, Camels, Donkeys

CREATE TABLE Hamsters (
  hamster_id INT PRIMARY KEY,
  breed VARCHAR(50),
  age INT,
  FOREIGN KEY (hamster_id) REFERENCES Domestic_Animals(animal_id)
    ON DELETE CASCADE
);

-- Create tables for other classes: Cats, Hamsters, Horses, Camels, Donkeys

CREATE TABLE Horses (
  horse_id INT PRIMARY KEY,
  breed VARCHAR(50),
  age INT,
  FOREIGN KEY (horse_id) REFERENCES Pack_Animals(animal_id)
    ON DELETE CASCADE
);

-- Create tables for other classes: Cats, Hamsters, Horses, Camels, Donkeys


CREATE TABLE Camels (
  camel_id INT PRIMARY KEY,
  breed VARCHAR(50),
  age INT,
  FOREIGN KEY (camel_id) REFERENCES Pack_Animals(animal_id)
    ON DELETE CASCADE
);

-- Create tables for other classes: Cats, Hamsters, Horses, Camels, Donkeys

CREATE TABLE Donkeys (
  donkey_id INT PRIMARY KEY,
  breed VARCHAR(50),
  age INT,
  FOREIGN KEY (donkey_id) REFERENCES Pack_Animals(animal_id)
    ON DELETE CASCADE
);

-- Create tables for other classes: Cats, Hamsters, Horses, Camels, Donkeys
INSERT INTO Dogs (dog_id, breed, age)
VALUES (1, 'German Shepherd', 5);

-- Insert other rows in the Dogs table

INSERT INTO Cats (cat_id, breed, age)
VALUES (1, 'Persian', 3);
INSERT INTO hamsters (Name, Birthday, Commands, Genus_id)
VALUES ('Малой', '2020-10-12', '', 3),
('Медведь', '2021-03-12', "атака сверху", 3),  
('Ниндзя', '2022-07-11', NULL, 3), 
('Бурый', '2022-05-10', NULL, 3);

INSERT INTO horses (Name, Birthday, Commands, Genus_id)
VALUES ('Гром', '2020-01-12', 'бегом, шагом', 1),
('Закат', '2017-03-12', "бегом, шагом, хоп", 1),  
('Байкал', '2016-07-12', "бегом, шагом, хоп, брр", 1), 
('Молния', '2020-11-10', "бегом, шагом, хоп", 1);

INSERT INTO donkeys (Name, Birthday, Commands, Genus_id)
VALUES ('Первый', '2019-04-10', NULL, 2),
('Второй', '2020-03-12', "", 2),  
('Третий', '2021-07-12', "", 2), 
('Четвертый', '2022-12-10', NULL, 2);

INSERT INTO camels (Name, Birthday, Commands, Genus_id)
VALUES ('Горбатый', '2022-04-10', 'вернись', 3),
('Самец', '2019-03-12', "остановись", 3),  
('Сифон', '2015-07-12', "повернись", 3), 
('Борода', '2022-12-10', "улыбнись", 3);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM camels;


CREATE TABLE новая_таблица AS
SELECT * FROM horses
UNION
SELECT * FROM camels;

CREATE TABLE молодые_животные AS
SELECT * 
FROM Domestic_Animals
WHERE возраст > 1 AND возраст < 3;

SELECT h.Name, h.Birthday, h.Commands, pa.Genus_name, ya.Age_in_month 
FROM horses h
LEFT JOIN yang_animal ya ON ya.Name = h.Name
LEFT JOIN packed_animals pa ON pa.Id = h.Genus_id
UNION 
SELECT d.Name, d.Birthday, d.Commands, pa.Genus_name, ya.Age_in_month 
FROM donkeys d 
LEFT JOIN yang_animal ya ON ya.Name = d.Name
LEFT JOIN packed_animals pa ON pa.Id = d.Genus_id
UNION
SELECT c.Name, c.Birthday, c.Commands, ha.Genus_name, ya.Age_in_month 
FROM cats c
LEFT JOIN yang_animal ya ON ya.Name = c.Name
LEFT JOIN home_animals ha ON ha.Id = c.Genus_id
UNION
SELECT d.Name, d.Birthday, d.Commands, ha.Genus_name, ya.Age_in_month 
FROM dogs d
LEFT JOIN yang_animal ya ON ya.Name = d.Name
LEFT JOIN home_animals ha ON ha.Id = d.Genus_id
UNION
SELECT hm.Name, hm.Birthday, hm.Commands, ha.Genus_name, ya.Age_in_month 
FROM hamsters hm
LEFT JOIN yang_animal ya ON ya.Name = hm.Name
LEFT JOIN home_animals ha ON ha.Id = hm.Genus_id;

