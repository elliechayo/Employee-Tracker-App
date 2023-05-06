# Employee-Tracker-App

## Description 


The objective of the project was to build a command-line application from scratch to manage a company's employee database, using Node.js, Inquirer, and MySQL and have the following functionalities:

When user start the application, the user is presented with the following options and can through them using the arrow keys:
- view all departments
- view all roles
- view all employees
- add a department
- add a role
- add an employee
- update an employee role

When user chooses to view all departments, they are presented with a formatted table showing department names and department ids.

When user chooses to view all roles, they are presented with the job title, role id, the department that role belongs to, and the salary for that role.

When user chooses to view all employees, they are presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to.

When user chooses to add a department, they are prompted to enter the new department name and that department is added to the database. 

When user chooses to add a role, they are prompted to enter the name, salary, and department for the role and that role is added to the database.

When user chooses to add an employee, they are prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database.

When user chooses to update an employee role, they are prompted to select an employee to update, and their new role and this information is updated in the database. 




## Table of Contents
* [Work completed](#work-completed)
* [Installation](#installation)
* [Preview](#preview)
* [Links](#links)
* [License](#license)

## Work completed:
<hr>

* Created the Data base folder and sql files including the tables structure for the 'department', 'role' and 'employee' tables and created data to be seeded into the database.

* Establish the connection to the database with in a config.js file.

* Wrote the code for the following functions within the index.js file:
** To prompt the menu items
** To fetch and return the data from the 'department', 'role' and 'employee' database. 
** To add new 'department', 'employee' or 'role' into the database. 
** To Update an 'employee'. 

All work done was delineated by adding comments.


## Installation
<hr>


- Node 
- MySQL2 package
- Inquirer package
 

## Preview
<hr>

The following video shows the web application appearance and functionality once deployed:



[![walkthrough image](/assets/image1.png)](https://drive.google.com/file/d/12B4k7ne3tvFhcldKLwKJcF-DruRrA-3v/view)



## Links
<hr>


[URL of the GitHub repository](https://github.com/elliechayo/Employee-Tracker-App)

## License
<hr>

MIT License

Copyright (c) [2023] [Elinor Chayo]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
