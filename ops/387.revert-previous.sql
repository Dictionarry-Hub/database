-- @operation: export
-- @entity: batch
-- @name: Revert Previous
-- @exportedAt: 2026-10-24T19:27:53.253Z
-- @opIds: 15321, 15322, 15323, 15324, 15325, 15326

-- --- BEGIN op 15321 ( update custom_format "QxR Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR Bluray' AND condition_name = 'QxR' AND regular_expression_name = 'QxR';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'QxR', 'QxR (Title)');
-- --- END op 15321

-- --- BEGIN op 15322 ( update custom_format "QxR Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR Blurays' AND condition_name = 'QxR' AND regular_expression_name = 'QxR';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'QxR', 'QxR (Title)');
-- --- END op 15322

-- --- BEGIN op 15323 ( update custom_format "QxR WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR WEB' AND condition_name = 'QxR' AND regular_expression_name = 'QxR';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'QxR', 'QxR (Title)');
-- --- END op 15323

-- --- BEGIN op 15324 ( update custom_format "TAoE Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Bluray' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Bluray', 'TAoE', 'TAoE (Title)');
-- --- END op 15324

-- --- BEGIN op 15325 ( update custom_format "TAoE Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Blurays' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Blurays', 'TAoE', 'TAoE (Title)');
-- --- END op 15325

-- --- BEGIN op 15326 ( update custom_format "TAoE WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE WEB' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE WEB', 'TAoE', 'TAoE (Title)');
-- --- END op 15326
