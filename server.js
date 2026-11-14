// Express API + website for the Banks and ATMs of Mirpur Khas Web GIS
const express = require('express');
const cors = require('cors');
const path = require('path');
const pool = require('./db');

const app = express();
app.use(cors());

// ---------- Website (public folder) ----------
app.use(express.static(path.join(__dirname, 'public')));

// ---------- GET /api/banks  ->  GeoJSON FeatureCollection ----------
// optional filters:  ?type=Bank|ATM   ?bank=HBL   ?q=text
app.get('/api/banks', async (req, res) => {
    try {
        const where = [];
        const values = [];

        if (req.query.type) { values.push(req.query.type); where.push('feature_type = $' + values.length); }
        if (req.query.bank) { values.push(req.query.bank); where.push('bank_name = $' + values.length); }
        if (req.query.q) {
            values.push('%' + req.query.q + '%');
            where.push('(name ILIKE $' + values.length + ' OR bank_name ILIKE $' + values.length +
                       ' OR address ILIKE $' + values.length + ')');
        }

        const sql = `
            SELECT json_build_object(
                'type', 'FeatureCollection',
                'features', COALESCE(json_agg(
                    json_build_object(
                        'type', 'Feature',
                        'geometry', ST_AsGeoJSON(geom)::json,
                        'properties', json_build_object(
                            'id', id,
                            'name', name,
                            'feature_type', feature_type,
                            'bank_name', bank_name,
                            'address', address,
                            'opening_hours', opening_hours,
                            'source', source
                        )
                    ) ORDER BY id
                ), '[]'::json)
            ) AS geojson
            FROM banks_atms
            ${where.length ? 'WHERE ' + where.join(' AND ') : ''}`;

        const result = await pool.query(sql, values);
        res.json(result.rows[0].geojson);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Database error.' });
    }
});

// ---------- GET /api/stats ----------
app.get('/api/stats', async (req, res) => {
    try {
        const r = await pool.query(`
            SELECT COUNT(*)::int AS total,
                   COUNT(*) FILTER (WHERE feature_type = 'Bank')::int AS banks,
                   COUNT(*) FILTER (WHERE feature_type = 'ATM')::int  AS atms
            FROM banks_atms`);
        res.json(r.rows[0]);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Database error.' });
    }
});

// ---------- GET /api/bank-names  (for the filter dropdown) ----------
app.get('/api/bank-names', async (req, res) => {
    try {
        const r = await pool.query(
            `SELECT DISTINCT bank_name FROM banks_atms
             WHERE bank_name IS NOT NULL ORDER BY bank_name`);
        res.json(r.rows.map(row => row.bank_name));
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Database error.' });
    }
});

app.listen(3000, () => {
    console.log('Open http://localhost:3000 in your browser');
});