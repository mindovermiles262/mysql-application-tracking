USE Applicants;
DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons (
  PersonId int NOT NULL AUTO_INCREMENT,
  Name varchar(255) NOT NULL,
  Email varchar(255),
  Address varchar(255),
  Phone varchar(255),
  PRIMARY KEY (PersonId)
);
