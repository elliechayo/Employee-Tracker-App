INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Human Resource'),
(2, 'Development'),
(3, 'Finance')
(4, 'Sales')
(5, 'Legal')
(6, 'C-Level')
(7, 'Marketing');

INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES
(1, 'Sales Manager', '100000', 4),
(2, 'Sales Rep','90000', 4),
(3, 'Telemarketer', '50000', 4),
(4, 'Admin', '110000', 1),
(5, 'CFO', '240000', 6),
(6, 'CEO', '250000', 6),
(7, 'COO', '230000', 6),
(8, 'CMO', '200000', 6),
(8, 'Intern', '40000', 5),
(9, 'lawyer', '150000', 5),
(10, 'Accountant', '90000', 3),
(11, 'Bookkeeper', '70000', 3),
(12, 'Content creator', '60000', 7),
(13, 'Graphic Designer', '80000', 7),
(14, 'Blogger', '50000', 7),
(15, 'Wed Developer', '90000', 2),
(16, 'Software Engineer', '100000', 2),


;

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES
(1, 'John', 'Smith', 1, NULL),
(2, 'Jane', 'Connoly', 3, 1),
(3, 'Mike', 'Callahan', 2, NULL);
(4, 'Sarah', 'Johns', 6, 5);
(5, 'Danielle', 'levi', 5,9);
(6, 'Sam', 'Brown', 5, NULL);
(7, 'Kate', 'Dane', 6,6);
(8, 'Mike', 'Dane', 5,5);
(9, 'Tim', 'Mclain', 2, 16);
(10, 'Jeff', 'Spance', 4, NULL);
(11, 'Phillip', 'Anderson', 7, 12);