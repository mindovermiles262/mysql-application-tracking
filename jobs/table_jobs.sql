CREATE DATABASE IF NOT EXISTS ApplicationTracking;
USE ApplicationTracking;
CREATE TABLE Jobs (
  JobId int NOT NULL AUTO_INCREMENT,
  Title varchar(255),
  Department varchar(255),
  HiringManager varchar(255),
  PostDate datetime,
  PRIMARY KEY (JobId)
);
