const express = require('express');
const router = express.Router();
const controller = require('../controllers/classController')

router.get('/', controller.get);

module.exports = router;