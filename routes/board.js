const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
	let pugVals = {name: 'board', user: req.session.user ? req.session.user : null};
	res.render('board', pugVals);
});

module.exports = router;