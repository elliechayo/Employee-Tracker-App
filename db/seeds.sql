INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Human Resource'),
(2, 'Research & Development'),
(3, 'Finance');

INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES
(1, 'Manager', '5000', 2),
(2, 'Executive', '6000', 1),
(3, 'Intern', '600', 1);

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES
(1, 'John', 'Doe', 1, NULL),
(2, 'Jane', 'Doe', 3, 1),
(3, 'Mike', 'Dane', 2, NULL);