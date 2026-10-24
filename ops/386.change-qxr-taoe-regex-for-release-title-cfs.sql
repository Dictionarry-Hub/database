-- @operation: export
-- @entity: batch
-- @name: Change QxR/TAoE Regex for Release Title CFs
-- @exportedAt: 2026-10-24T19:15:59.655Z
-- @opIds: 15309, 15310, 15311, 15312, 15313, 15314, 15315, 15316, 15317, 15318, 15319

-- --- BEGIN op 15309 ( update custom_format "QxR Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Bluray', 'Not HONE', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'Not HONE', 'HONE');
-- --- END op 15309

-- --- BEGIN op 15310 ( update custom_format "QxR Bluray" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR Bluray'
	  AND name = 'Not HONE'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15310

-- --- BEGIN op 15311 ( update custom_format "QxR Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Bluray', 'HONE', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'HONE', 'HONE');
-- --- END op 15311

-- --- BEGIN op 15312 ( update custom_format "QxR Blurays" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Blurays', 'HONE', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'HONE', 'HONE');
-- --- END op 15312

-- --- BEGIN op 15313 ( update custom_format "QxR WEB" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR WEB', 'HONE', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'HONE', 'HONE');
-- --- END op 15313

-- --- BEGIN op 15314 ( update custom_format "TAoE Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Bluray' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Bluray', 'TAoE', 'TAoE');
-- --- END op 15314

-- --- BEGIN op 15315 ( update custom_format "TAoE Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Blurays' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Blurays', 'TAoE', 'TAoE');
-- --- END op 15315

-- --- BEGIN op 15316 ( update custom_format "TAoE WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE WEB' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE WEB', 'TAoE', 'TAoE');
-- --- END op 15316

-- --- BEGIN op 15317 ( update custom_format "QxR Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR Bluray' AND condition_name = 'QxR' AND regular_expression_name = 'QxR (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'QxR', 'QxR');
-- --- END op 15317

-- --- BEGIN op 15318 ( update custom_format "QxR Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR Blurays' AND condition_name = 'QxR' AND regular_expression_name = 'QxR (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'QxR', 'QxR');
-- --- END op 15318

-- --- BEGIN op 15319 ( update custom_format "QxR WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR WEB' AND condition_name = 'QxR' AND regular_expression_name = 'QxR (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'QxR', 'QxR');
-- --- END op 15319
