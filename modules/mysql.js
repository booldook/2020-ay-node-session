const mysql = require('mysql2/promise');
const connect = mysql.createPool({
	host: "localhost",
	port: 3306,
	user: "root",
	password: process.env.dbpass,
	database: "node",
	connectionLimit: 10,
	waitForConnections: true
});

module.exports = connect;