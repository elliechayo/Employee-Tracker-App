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


   // add a new department to the db
const addDepartment = function () {
     inquirer
       .prompt([
         {
           type: "input",
           name: "departmentName",
           message: "Enter the Department name",
         },
       ])
       .then((answer) => {
         let name = answer.departmentName;
         connection
           .promise()
           .query("INSERT INTO `department` (name) VALUES (?)", [name])
           .then(([rows, fields]) => {
             console.log("Department Added");
             main();
           })
           .catch(console.log);
       });
   };


   // add a new employee to the db
const addEmployee = function () {
     inquirer
       .prompt([
         {
           type: "input",
           name: "firstName",
           message: "Employee's first name",
         },
         {
           type: "input",
           name: "lastName",
           message: "Employee's last name",
         },
         {
           type: "input",
           name: "manager",
           message: "Employee's manager",
         },
         {
           type: "input",
           name: "role",
           message: "Employee's role",
         },
       ])
       .then((answers) => {
         let { firstName, lastName, manager, role } = answers;
         if (!manager) manager = null;
         connection
           .promise()
           .query(
             "INSERT INTO `employee` (first_name, last_name, manager_id, role_id) VALUES (?, ?, ?, ?)",
             [firstName, lastName, manager, role]
           )
           .then(([rows, fields]) => {
             console.log("Employee Added");
             main();
           })
           .catch(console.log);
       });
   };
   // add a new role to the db
const addRole = function () {
     connection
       .promise()
       .query("SELECT * FROM `department`")
       .then(([_rows, _fields]) => {
         const deptMap = {};
         // loop through the departments and create a key,value pair
         for (let i = 0; i < _rows.length; i++) {
           deptMap[_rows[i].name] = _rows[i].id;
         }
   
         inquirer
           .prompt([
             {
               type: "input",
               name: "name",
               message: "Enter name",
             },
             {
               type: "input",
               name: "salary",
               message: "Enter salary",
             },
             {
               type: "list",
               name: "department",
               message: "Select department",
               choices: Object.keys(deptMap), // show the keys as the choices
               filter(val) {
                 return deptMap[val]; // on selection, use the value as the selected value
               },
             },
           ])
           .then((answers) => {
             let { name, salary, department } = answers;
             connection
               .promise()
               .query(
                 "INSERT INTO `role` (title, salary, department_id) VALUES (?, ?, ?)",
                 [name, salary, department]
               )
               .then(([rows, fields]) => {
                 console.log("Role Added");
                 main();
               });
           });
       });
   };
   

   // update the employee using the employeeID
// role can be updated by specifying the roleId
const updateEmployee = function () {
     inquirer
       .prompt([
         {
           type: "input",
           name: "employeeId",
           message: "Enter the employee id",
         },
         {
           type: "input",
           name: "roleId",
           message: "Enter the role id",
         },
       ])
       .then((answers) => {
         let { employeeId, roleId } = answers;
         connection
           .promise()
           .query("UPDATE `employee` SET role_id=? WHERE employee.id = ?", [
             roleId,
             employeeId,
           ])
           .then(([rows, fields]) => {
             console.log("Employee updated!");
             main();
           })
           .catch(console.log);
       });
   };