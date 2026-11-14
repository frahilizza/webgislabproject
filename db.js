const { Pool } = require('pg');

const pool = new Pool({
    host: 'localhost',
    port: 5432,
    database: 'webgis_labproject',
    user: 'postgres',
    password: '123'      // <-- put YOUR postgres password here
});

module.exports = pool;