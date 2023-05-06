-- --create database: company
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

-- CREATE DATABASE IF NOT EXISTS company_db;
-- --use the company_db database
USE company_db;


-- table structure for table 'department'
CREATE TABLE `department`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  `dept_name` VARCHAR(30) NOT NULL
);
  
-- Table structure for table `role`

CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` varchar(30) NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  `department_id` int NOT NULL,
  FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE


);


-- Table structure for table `employee`
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT  PRIMARY KEY,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `role_id` int,
  `manager_id` int DEFAULT NULL,
  FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`) ON DELETE set null,
  FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE
  
  

); 




