-- Create the database
CREATE DATABASE IF NOT EXISTS `discuss`;
USE `discuss`;

-- Create users table
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create category table
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create questions table
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create answers table
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert default categories
INSERT INTO `category` (`name`) VALUES
('Technology'),
('Science'),
('Health'),
('Education'),
('Business'),
('Arts'),
('Sports'),
('Entertainment'),
('Food'),
('Travel');

-- Insert default users (password is 'password123' for all users)
INSERT INTO `users` (`username`, `email`, `password`, `address`) VALUES
('JohnDoe', 'john@example.com', 'password123', 'New York, USA'),
('JaneSmith', 'jane@example.com', 'password123', 'London, UK'),
('TechGuru', 'tech@example.com', 'password123', 'San Francisco, USA'),
('ScienceFan', 'science@example.com', 'password123', 'Boston, USA'),
('HealthExpert', 'health@example.com', 'password123', 'Toronto, Canada');

-- Insert default questions
INSERT INTO `questions` (`title`, `description`, `category_id`, `user_id`) VALUES
('What are the best practices for PHP security?', 'I am new to PHP development and want to learn about security best practices. What are the key things I should know about securing PHP applications?', 1, 1),
('How to start with machine learning?', 'I want to learn machine learning but don\'t know where to start. What are some good resources and prerequisites?', 2, 2),
('Tips for maintaining a healthy lifestyle', 'What are some practical tips for maintaining a healthy lifestyle while working a desk job?', 3, 5),
('Best online learning platforms', 'What are the best online platforms for learning programming? Looking for both free and paid options.', 4, 3),
('Starting a tech startup', 'What are the essential steps to start a tech startup? Looking for advice from experienced entrepreneurs.', 5, 1),
('Modern art appreciation', 'How can I better understand and appreciate modern art? Any recommended resources or approaches?', 6, 2),
('Home workout routines', 'What are some effective home workout routines that don\'t require equipment?', 7, 4),
('Movie recommendations', 'Looking for movie recommendations in the sci-fi genre. What are some must-watch films?', 8, 3),
('Healthy meal prep ideas', 'What are some easy and healthy meal prep ideas for busy professionals?', 9, 5),
('Budget travel tips', 'What are your best tips for traveling on a budget? Looking for advice on accommodation, food, and activities.', 10, 1);

-- Insert some default answers
INSERT INTO `answers` (`answer`, `question_id`, `user_id`) VALUES
('Always use prepared statements to prevent SQL injection, validate and sanitize user input, and keep PHP and all dependencies updated.', 1, 3),
('Start with Python and libraries like scikit-learn. Take online courses on Coursera or edX, and practice with real datasets.', 2, 4),
('Take regular breaks, stay hydrated, and incorporate short exercises throughout the day. Consider a standing desk.', 3, 5),
('Coursera, Udemy, and freeCodeCamp are great options. Also check out YouTube channels like Traversy Media.', 4, 1),
('Focus on solving a real problem, validate your idea, create an MVP, and get feedback from potential users.', 5, 2); 