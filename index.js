// fetch and return all departments from database
const getDepartments = function () {
     connection
       .promise()
       .query("SELECT * FROM `department`")
       .then(([rows, fields]) => {
         console.table(rows);
         main();
       })
       .catch(console.log);
   };

   // fetch and return all employees from database
const getEmployees = function () {
     connection
       .promise()
       .query(
         "SELECT employee.id, first_name, last_name, role_id, manager_id, role.title, role.salary, role.department_id FROM `employee` INNER JOIN `role` ON (employee.role_id=role.id)"
       )
       .then(([rows, fields]) => {
         console.table(rows);
         main();
       })
       .catch(console.log);
   };


   // fetch and return all roles from database
const getRoles = function () {
     connection
       .promise()
       .query(
         "SELECT role.id, title, salary, department_id, department.name FROM `role` INNER JOIN department ON (role.department_id = department.id) ORDER BY role.id ASC"
       )
       .then(([rows, fields]) => {
         console.table(rows);
         main();
       })
       .catch(console.log);
   };

   // fetch and return all roles from database
const getRoles = function () {
     connection
       .promise()
       .query(
         "SELECT role.id, title, salary, department_id, department.name FROM `role` INNER JOIN department ON (role.department_id = department.id) ORDER BY role.id ASC"
       )
       .then(([rows, fields]) => {
         console.table(rows);
         main();
       })
       .catch(console.log);
   };

   