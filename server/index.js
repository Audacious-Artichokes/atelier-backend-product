require('dotenv').config();

const express = require('express');
const morgan = require('morgan');
const cors = require('cors');

const routes = require('./routes/index');
const pg = require('./database/db');

const app = express();

// Middleware
app.use(cors());
app.use(morgan('dev'));

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Set up routes
app.get('/loaderio-2180ae4142af375a63ed2a6c23ba2673', (req, res) => {
  res.send('loaderio-2180ae4142af375a63ed2a6c23ba2673');
});
routes(app);

module.exports = app;
