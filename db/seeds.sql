INSERT INTO department (`id`, `dept_name`) VALUES
(1, 'Human Resource'),
(2, 'Development'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Legal'),
(6, 'C-Level');

INSERT INTO role (`id`, `title`, `salary`, `department_id`) VALUES
(1, 'Sales Manager', 100000, 4),
(2, 'Sales Rep', 90000, 4),
(3, 'Telemarketer', 50000, 4),
(4, 'Admin', 110000, 1),
(5, 'CFO', 240000, 6);



INSERT INTO employee (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES
(1, 'John', 'Smith', 1, NULL),
(2, 'Jane', 'Connoly', 3, 1),
(3, 'Mike', 'Callahan', 2, NULL),
(4, 'Sarah', 'Johns', 4, 3);
