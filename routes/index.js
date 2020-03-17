const express = require('express');
const router = express.Router();

router.get('/', (req, res, next) => { 
	let pugVals = { name: 'index', user: req.session.user ? req.session.user : null };
	res.render('index', pugVals);
});

module.exports = router;