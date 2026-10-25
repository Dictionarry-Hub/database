-- @operation: export
-- @entity: batch
-- @name: Fix TAoE Parsing for v5
-- @exportedAt: 2026-10-25T17:58:57.333Z
-- @opIds: 15470, 15471, 15472, 15473, 15474, 15475, 15476, 15477, 15478, 15479, 15480, 15481, 15482, 15483, 15484, 15485, 15486, 15487, 15488, 15489, 15490, 15491, 15492, 15493, 15494, 15495

-- --- BEGIN op 15470 ( update regular_expression "TAoE (Title)" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b)' where "name" = 'TAoE (Title)' and "pattern" = 'TAoE';
-- --- END op 15470

-- --- BEGIN op 15471 ( update regular_expression "TAoE (Radarr)" )
update "regular_expressions" set "name" = 'TAoE (Radarr)' where "name" = 'TAoE (Title)';
-- --- END op 15471

-- --- BEGIN op 15472 ( update custom_format "2160p WEB-DL (Efficient)" )
update "condition_patterns" set "regular_expression_name" = 'TAoE (Radarr)' where "custom_format_name" = '2160p WEB-DL (Efficient)' and "condition_name" = 'Not TAoE Title' and "regular_expression_name" in ('TAoE (Title)', 'TAoE (Radarr)');
-- --- END op 15472

-- --- BEGIN op 15473 ( update custom_format "TAoE Bluray" )
update "condition_patterns" set "regular_expression_name" = 'TAoE (Radarr)' where "custom_format_name" = 'TAoE Bluray' and "condition_name" = 'TAoE' and "regular_expression_name" in ('TAoE (Title)', 'TAoE (Radarr)');
-- --- END op 15473

-- --- BEGIN op 15474 ( update custom_format "TAoE Blurays" )
update "condition_patterns" set "regular_expression_name" = 'TAoE (Radarr)' where "custom_format_name" = 'TAoE Blurays' and "condition_name" = 'TAoE' and "regular_expression_name" in ('TAoE (Title)', 'TAoE (Radarr)');
-- --- END op 15474

-- --- BEGIN op 15475 ( update custom_format "TAoE WEB" )
update "condition_patterns" set "regular_expression_name" = 'TAoE (Radarr)' where "custom_format_name" = 'TAoE WEB' and "condition_name" = 'TAoE' and "regular_expression_name" in ('TAoE (Title)', 'TAoE (Radarr)');
-- --- END op 15475

-- --- BEGIN op 15476 ( create regular_expression "TAoE (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TAoE (Sonarr)', '(?<=\b[12]\d{3}\b).*(\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b)', NULL, NULL);

insert into "tags" ("name") values ('HEVC') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TAoE (Sonarr)', 'HEVC');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TAoE (Sonarr)', 'Release Group');
-- --- END op 15476

-- --- BEGIN op 15477 ( update regular_expression "TAoE (Sonarr)" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b)' where "name" = 'TAoE (Sonarr)' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b)';
-- --- END op 15477

-- --- BEGIN op 15478 ( update custom_format "TAoE Bluray" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TAoE Bluray'
	  AND name = 'Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15478

-- --- BEGIN op 15479 ( update custom_format "TAoE Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TAoE Bluray', 'TAoE (Radarr)', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Bluray', 'TAoE (Radarr)', 'TAoE (Radarr)');
-- --- END op 15479

-- --- BEGIN op 15480 ( update custom_format "TAoE Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TAoE Bluray', 'TAoE (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Bluray', 'TAoE (Sonarr)', 'TAoE (Sonarr)');
-- --- END op 15480

-- --- BEGIN op 15481 ( update custom_format "TAoE Bluray" )
UPDATE custom_format_conditions
SET type = 'release_group', negate = 1
WHERE custom_format_name = 'TAoE Bluray'
  AND name = 'TAoE'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Bluray' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE (Radarr)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Bluray', 'TAoE', 'TAoE');
-- --- END op 15481

-- --- BEGIN op 15482 ( update custom_format "TAoE Blurays" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TAoE Blurays'
	  AND name = 'Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15482

-- --- BEGIN op 15483 ( update custom_format "TAoE Blurays" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TAoE Blurays', 'TAoE (Radarr)', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Blurays', 'TAoE (Radarr)', 'TAoE (Radarr)');
-- --- END op 15483

-- --- BEGIN op 15484 ( update custom_format "TAoE Blurays" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TAoE Blurays', 'TAoE (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Blurays', 'TAoE (Sonarr)', 'TAoE (Sonarr)');
-- --- END op 15484

-- --- BEGIN op 15485 ( update custom_format "TAoE Blurays" )
UPDATE custom_format_conditions
SET type = 'release_group', negate = 1
WHERE custom_format_name = 'TAoE Blurays'
  AND name = 'TAoE'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Blurays' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE (Radarr)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Blurays', 'TAoE', 'TAoE');
-- --- END op 15485

-- --- BEGIN op 15486 ( update custom_format "TAoE WEB" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'TAoE WEB'
	  AND name = 'Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15486

-- --- BEGIN op 15487 ( update custom_format "TAoE WEB" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TAoE WEB', 'TAoE (Radarr)', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE WEB', 'TAoE (Radarr)', 'TAoE (Radarr)');
-- --- END op 15487

-- --- BEGIN op 15488 ( update custom_format "TAoE WEB" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TAoE WEB', 'TAoE (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE WEB', 'TAoE (Sonarr)', 'TAoE (Sonarr)');
-- --- END op 15488

-- --- BEGIN op 15489 ( update custom_format "TAoE WEB" )
UPDATE custom_format_conditions
SET type = 'release_group', negate = 1
WHERE custom_format_name = 'TAoE WEB'
  AND name = 'TAoE'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE WEB' AND condition_name = 'TAoE' AND regular_expression_name = 'TAoE (Radarr)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE WEB', 'TAoE', 'TAoE');
-- --- END op 15489

-- --- BEGIN op 15490 ( update custom_format "QxR Bluray" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR Bluray'
	  AND name = 'Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15490

-- --- BEGIN op 15491 ( update custom_format "QxR Bluray" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Bluray', 'QxR', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'QxR', 'QxR');
-- --- END op 15491

-- --- BEGIN op 15492 ( update custom_format "QxR Blurays" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR Blurays'
	  AND name = 'Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15492

-- --- BEGIN op 15493 ( update custom_format "QxR Blurays" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR Blurays', 'QxR', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'QxR', 'QxR');
-- --- END op 15493

-- --- BEGIN op 15494 ( update custom_format "QxR WEB" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'QxR WEB'
	  AND name = 'Release Group'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15494

-- --- BEGIN op 15495 ( update custom_format "QxR WEB" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QxR WEB', 'QxR', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'QxR', 'QxR');
-- --- END op 15495
