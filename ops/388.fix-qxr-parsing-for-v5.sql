-- @operation: export
-- @entity: batch
-- @name: Fix QxR Parsing for v5
-- @exportedAt: 2026-10-25T17:47:38.286Z
-- @opIds: 15452, 15453, 15454, 15455, 15456, 15457, 15458, 15459, 15460, 15461, 15462, 15463, 15464, 15465, 15466, 15467, 15468

-- --- BEGIN op 15452 ( update regular_expression "QxR (Title)" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b)' where "name" = 'QxR (Title)' and "pattern" = 'QxR';
-- --- END op 15452

-- --- BEGIN op 15453 ( update regular_expression "QxR (Radarr)" )
update "regular_expressions" set "name" = 'QxR (Radarr)' where "name" = 'QxR (Title)';
-- --- END op 15453

-- --- BEGIN op 15454 ( update custom_format "2160p WEB-DL (Efficient)" )
update "condition_patterns" set "regular_expression_name" = 'QxR (Radarr)' where "custom_format_name" = '2160p WEB-DL (Efficient)' and "condition_name" = 'Not QxR Title' and "regular_expression_name" in ('QxR (Title)', 'QxR (Radarr)');
-- --- END op 15454

-- --- BEGIN op 15455 ( update custom_format "QxR Bluray" )
update "condition_patterns" set "regular_expression_name" = 'QxR (Radarr)' where "custom_format_name" = 'QxR Bluray' and "condition_name" = 'QxR' and "regular_expression_name" in ('QxR (Title)', 'QxR (Radarr)');
-- --- END op 15455

-- --- BEGIN op 15456 ( update custom_format "QxR Blurays" )
update "condition_patterns" set "regular_expression_name" = 'QxR (Radarr)' where "custom_format_name" = 'QxR Blurays' and "condition_name" = 'QxR' and "regular_expression_name" in ('QxR (Title)', 'QxR (Radarr)');
-- --- END op 15456

-- --- BEGIN op 15457 ( update custom_format "QxR WEB" )
update "condition_patterns" set "regular_expression_name" = 'QxR (Radarr)' where "custom_format_name" = 'QxR WEB' and "condition_name" = 'QxR' and "regular_expression_name" in ('QxR (Title)', 'QxR (Radarr)');
-- --- END op 15457

-- --- BEGIN op 15458 ( create regular_expression "QxR (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QxR (Sonarr)', '(?<=\b[12]\d{3}\b).*(\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b)', NULL, NULL);

insert into "tags" ("name") values ('HEVC') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QxR (Sonarr)', 'HEVC');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QxR (Sonarr)', 'Release Group');
-- --- END op 15458

-- --- BEGIN op 15459 ( update regular_expression "QxR (Sonarr)" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b)' where "name" = 'QxR (Sonarr)' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b)';
-- --- END op 15459

-- --- BEGIN op 15460 ( update custom_format "QxR Bluray" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR Bluray'
	  AND name = 'QxR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 15460

-- --- BEGIN op 15461 ( update custom_format "QxR Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Bluray', 'QxR (Radarr)', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'QxR (Radarr)', 'QxR (Radarr)');
-- --- END op 15461

-- --- BEGIN op 15462 ( update custom_format "QxR Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Bluray', 'QxR (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'QxR (Sonarr)', 'QxR (Sonarr)');
-- --- END op 15462

-- --- BEGIN op 15463 ( update custom_format "QxR Blurays" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR Blurays'
	  AND name = 'QxR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 15463

-- --- BEGIN op 15464 ( update custom_format "QxR Blurays" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Blurays', 'QxR (Radarr)', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'QxR (Radarr)', 'QxR (Radarr)');
-- --- END op 15464

-- --- BEGIN op 15465 ( update custom_format "QxR Blurays" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Blurays', 'QxR (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'QxR (Sonarr)', 'QxR (Sonarr)');
-- --- END op 15465

-- --- BEGIN op 15466 ( update custom_format "QxR WEB" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR WEB'
	  AND name = 'QxR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 15466

-- --- BEGIN op 15467 ( update custom_format "QxR WEB" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR WEB', 'QxR (Radarr)', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'QxR (Radarr)', 'QxR (Radarr)');
-- --- END op 15467

-- --- BEGIN op 15468 ( update custom_format "QxR WEB" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR WEB', 'QxR (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'QxR (Sonarr)', 'QxR (Sonarr)');
-- --- END op 15468
