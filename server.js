const express = require('express');
// Utilizes mysql2
const mysql = require('mysql2');
const inquirer = require('inquirer');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connects to the database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL Username
    user: 'root',
    // MySQL Password
    password: 'rootroot',
    // Connects to the database
    database: 'tracker_db'
  },
  console.log(`Connected to the tracker_db database.`)
);

// Listens for the port required
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});