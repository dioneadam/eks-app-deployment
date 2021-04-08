const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const router = express.Router();

const index = require('./routes/index');
const teacherRoute = require('./routes/teacherRoute');
const classRoute = require('./routes/classRoute');

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

app.use('/', index);
app.use('/teacher', teacherRoute);
app.use('/class', classRoute)

module.exports = app;