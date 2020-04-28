CREATE DATABASE IF NOT EXISTS ApplicationTracking;
USE ApplicationTracking;
DROP TABLE IF EXISTS Events;
CREATE TABLE Events(
  EventId INT NOT NULL AUTO_INCREMENT,
  ApplicationId INT NOT NULL,
  EventType ENUM(
    'New',
    'RecruiterScreen',
    'HMScreen',
    'Interview',
    'DecisionOverview',
    'Offer',
    'Hire'
  ),
  EventDate DATETIME,
  PRIMARY KEY (EventId),
  FOREIGN KEY (ApplicationId) REFERENCES Applications(ApplicationId)
)
