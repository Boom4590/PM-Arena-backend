const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'yamabiko.proxy.rlwy.net',
  database: 'railway',
  password: 'AKvwoudfAsTPwLsTwuSAGEROavpuZirO',
  port: 40139,
  ssl: {
    rejectUnauthorized: false,
  },
});


module.exports = pool;

