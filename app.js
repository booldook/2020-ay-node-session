const express = require('express');
const app = express();
const createError = require('http-errors');
const path = require('path');
const dotenv = require('dotenv').config();
const indexRouter = require('./routes/index');
const boardRouter = require('./routes/board');

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
app.use('/', express.static(path.join(__dirname, 'public')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));
app.use('/', indexRouter);
app.use('/board', boardRouter);

/* Error */
app.use((req, res, next) => {
	res.render('404.pug');
});

app.use((err, req, res, next) => {
	res.send(err.message);
});

