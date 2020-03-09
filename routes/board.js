const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
	let pugVals = {name: 'board'};
	res.render('board', pugVals);
});

module.exports = router;