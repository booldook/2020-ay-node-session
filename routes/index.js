const express = require('express');
const router = express.Router();

router.get('/', (req, res, next) => {
	let pugVals = {name: 'index'};
	res.render('index', pugVals);
});

module.exports = router;