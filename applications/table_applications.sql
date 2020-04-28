CREATE DATABASE IF NOT EXISTS ApplicationTracking;
USE ApplicationTracking;
DROP TABLE IF EXISTS Applications;
CREATE TABLE Applications(
  ApplicationId INT NOT NULL AUTO_INCREMENT,
  PersonId INT NOT NULL,
  JobId INT NOT NULL,
  ApplicationDate DATETIME,
  PRIMARY KEY (ApplicationId), 
  FOREIGN KEY (PersonId) REFERENCES Persons(PersonId),
  FOREIGN KEY (JobId) REFERENCES Jobs(JobId)
) ENGINE=INNODB;
