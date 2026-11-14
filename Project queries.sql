INSERT INTO banks_atms (name, feature_type, bank_name, address, source, geom)
SELECT REPLACE(name, ' Branch and ATM', '') || ' ATM',
       'ATM',
       bank_name,
       address,
       source,
       ST_SetSRID(ST_MakePoint(ST_X(geom) + 0.00008, ST_Y(geom)), 4326)
FROM banks_atms
WHERE feature_type = 'Bank' AND source = 'Google Maps (manual)';

SELECT feature_type, COUNT(*) FROM banks_atms GROUP BY feature_type;