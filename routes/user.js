const express = require('express');
const router = express.Router();
const crypto = require('crypto');
const connect = require('../modules/mysql');
const { alert } = require('../modules/util');


router.get('/signup', (req, res) => {
	let pugVals = {name: 'signup'};
	res.render('signup.pug', pugVals);
});

router.post('/join', async (req, res, next) => {
	let { userid, userpw, username, email } = req.body;
	let sql, sqls, result, pugs;
	sql = "INSERT INTO member SET userid=?, userpw=?, username=?, email=?";
	userpw = crypto.createHash('sha512').update(userpw + process.env.passSalt).digest('base64');
	sqls = [userid, userpw, username, email];
	result = await connect.execute(sql, sqls);
	res.send(alert("회원가입이 정상 처리되었습니다.", "/"));
});

router.post('/idchk', async (req, res, next) => {
	const userid = req.body.userid;
	const sql = "SELECT userid FROM member WHERE userid=?";
	const result = await connect.execute(sql, [userid]);
	res.json(result[0]);
});

module.exports = router;