const express = require('express');
const router = express.Router();
const connect = require('../modules/mysql');
const { alert } = require('../modules/util');


router.get('/signup', (req, res) => {
	let pugVals = {name: 'signup'};
	res.render('signup.pug', pugVals);
});

router.post('/join', async (req, res) => {
	let { userid, userpw, username, email } = req.body;
	let sql, sqls, result, pugs;
	sql = "INSERT INTO member SET userid=?, userpw=?, username=?, email=?";
	sqls = [userid, userpw, username, email];
	result = await connect.execute(sql, sqls);
	res.send(alert("회원가입이 정상 처리되었습니다.", "/"));
});

module.exports = router;