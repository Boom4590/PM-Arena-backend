const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'yamanote.proxy.rlwy.net',
  database: 'railway',
  password: 'YAvyzPHdPaOjelzvmcpsJcCmeqqAyljL',
  port: 25362,
  ssl: {
    rejectUnauthorized: false,
  },
});

module.exports = pool;

