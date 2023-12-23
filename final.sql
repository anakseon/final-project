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


