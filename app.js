const express = require('express');
const app = express();
const dotenv = require('dotenv').config();
const createError = require('http-errors');
const path = require('path');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const FileStore = require('session-file-store')(session);
const indexRouter = require('./routes/index');
const boardRouter = require('./routes/board');
const userRouter = require('./routes/user');

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
app.use(express.json());
app.use(express.urlencoded({extended: false}));
app.use(cookieParser(process.env.cookieSalt));
app.use(session({
	secret: process.env.cookieSalt,
	resave: true,
	saveUninitialized: true,
	store: new FileStore()
}))

/* Router */
app.use('/', express.static(path.join(__dirname, 'public')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));
app.use('/', indexRouter);
app.use('/board', boardRouter);
app.use('/user', userRouter);

/* Error */
app.use((req, res, next) => {
	res.render('404.pug');
});

app.use((err, req, res, next) => {
	if(err) {
		console.log(err);
		res.json({ 
			error: err.message,
			status: err.status 
		});
	}
});

