INSERT INTO department (`id`, `dept_name`) VALUES
(1, 'Human Resource'),
(2, 'Development'),
(3, 'Finance');


INSERT INTO role (`id`, `title`, `salary`, `department_id`) VALUES
(1, 'Manager', 100000, 2),
(2, 'Executive', 190000, 1),
(3, 'Intern', 50000, 1);




INSERT INTO employee (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES
(1, 'John', 'Smith', 1, NULL),
(2, 'Jane', 'Connoly', 3, 1),
(3, 'Mike', 'Callahan', 2, NULL);

