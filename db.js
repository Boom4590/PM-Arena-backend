const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'pubg',
  password: 'Nurbo4590$',
  port: 5432,
});

module.exports = pool;
