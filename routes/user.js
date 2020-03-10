const express = require('express');
const router = express.Router();

router.get('/signup', (req, res) => {
	let pugVals = {name: 'signup'};
	res.render('signup.pug', pugVals);
});

module.exports = router;