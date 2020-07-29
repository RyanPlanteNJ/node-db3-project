const knex = require('knex');

const config = require('../knexfile.js');

module.express = knex(config.development);
