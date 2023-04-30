// Import and require express, mysql2, inquirer
const express = require('express');
const mysql = require('mysql2');
const app = express();
const inquirer = require("inquirer");

// create the database connection
const connection = mysql.createConnection(
     {
          host: 'localhost',
          user: 'root',
          password: '',
          database: 'company_db',
          port:'3001'
        },
);