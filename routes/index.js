const express = require('express');
const router = express.Router();

router.get('/', (req, res, next) => { 
	let user = req.session.user ? req.session.user : null;
	let pugVals = { name: 'index', user };
	res.render('index', pugVals);
});

module.exports = router;