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

-- Chat

CREATE TABLE IF NOT EXISTS `Messages` (
  `message_id` INT AUTO_INCREMENT PRIMARY KEY,
  `sender_id` INT,
  `receiver_id` INT,
  `message_text` TEXT,
  `sent_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `status` ENUM('sent', 'delivered', 'read') DEFAULT 'sent',
  FOREIGN KEY (`sender_id`) REFERENCES `Users`(`user_id`),
  FOREIGN KEY (`receiver_id`) REFERENCES `Users`(`user_id`)
);

CREATE TABLE IF NOT EXISTS `SentPhotos` (
  `photo_id` INT AUTO_INCREMENT PRIMARY KEY,
  `message_id` INT,
  `photo_url` VARCHAR(255) NOT NULL,
  `uploaded_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`message_id`) REFERENCES `Messages`(`message_id`) ON DELETE CASCADE
);

