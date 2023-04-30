--create database: company
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

--use the company_db database
USE company_db;


-- table structure for table 'department'
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dep_name VARCHAR(30) NOT NULL)
  


-- Table structure for table `employee`
CREATE TABLE employee (
  id int NOT NULL AUTO_INCREMENT primary key,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  role_id int NOT NULL,
  manager_id int DEFAULT NULL
) 

-- Table structure for table `role`

CREATE TABLE role (
  id int NOT NULL AUTO_INCREMENT primary key,
  title varchar(30) NOT NULL,
  salary decimal(10,0) NOT NULL,
  department_id int NOT NULL

);


-- Indexes for dumped tables

-- Indexes for table `employee`
ALTER TABLE `employee`
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `role_id` (`role_id`);

 -- Indexes for table `role`

ALTER TABLE `role`
  ADD KEY `department_id` (`department_id`); 



-- Constraints for dumped tables

  -- Constraints for table `employee`

ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- Constraints for table `role`

ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;
