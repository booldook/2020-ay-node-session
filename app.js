const express = require('express');
const app = express();
const dotenv = require('dotenv').config();
const createError = require('http-errors');
const path = require('path');
const cookieParser = require('cookie-parser');
const session = require('express-session');
// const FileStore = require('session-file-store')(session);	//세션을 파일에 저장(실무X)
// const redis = require('redis');
// const ConnectRedis = require('connect-redis')(session);
const MySQLConnect = require('express-mysql-session')(session);
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
	resave: false,
	saveUninitialized: false,
	cookie: {secure: false},
	// store: new FileStore()
	/* store: new ConnectRedis({
		"host": "localhost",
		"port": 6379,
		"prefix": "session:",
		"client": redis.createClient(6379, "localhost"),
		"db": 0
	}) */
	store: new MySQLConnect({
		host: 'localhost',
		port: 3306,
		user: 'root',
		password: process.env.dbpass,
		database: 'node'
	})
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

