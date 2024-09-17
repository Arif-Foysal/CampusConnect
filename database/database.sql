CREATE DATABASE IF NOT EXISTS campus;
USE campus;

CREATE TABLE IF NOT EXISTS `Users` (
  `user_id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_type` VARCHAR(255),
  `fname` VARCHAR(255),
  `lname` VARCHAR(255),
  `student_id` VARCHAR(255),
  `phone` VARCHAR(255),
  `password` VARCHAR(255),
  `rcvEmails` BOOLEAN,
  `CreatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `profile_photo_url` VARCHAR(255) NULL
);

