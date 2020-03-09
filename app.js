const express = require('express');
const app = express();
const path = require('path');
const dotenv = require('dotenv').config();

/* Server Running */
app.listen(process.env.port, () => {
	console.log(`http://127.0.0.1:${process.env.port}`);
});

/* View engine */
app.set('view engine', 'pug');
app.set('views', path.join(__dirname, 'views'));
app.locals.pretty = true;
app.locals.title = "Node.js 리뷰";


/* Middleware */


/* Router */
app.get('/', (req, res, next) => {
	res.render('index.pug');
});