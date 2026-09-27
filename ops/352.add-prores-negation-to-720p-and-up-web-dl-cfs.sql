-- @operation: export
-- @entity: batch
-- @name: Add ProRes Negation to 720p and UP WEB-DL CFs
-- @exportedAt: 2026-09-27T00:02:43.960Z
-- @opIds: 14537, 14538, 14539, 14540, 14541, 14542, 14543, 14544, 14545, 14546, 14547, 14548, 14549, 14550, 14551, 14552, 14553, 14554, 14555, 14556, 14557, 14558, 14559, 14560, 14561, 14562, 14563, 14564, 14565, 14566, 14567, 14568, 14569, 14570, 14571, 14572

-- --- BEGIN op 14537 ( create regular_expression "ProRes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ProRes', '\b(ASL)\b', NULL, NULL);

insert into "tags" ("name") values ('Enhancements') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ProRes', 'Enhancements');
-- --- END op 14537

-- --- BEGIN op 14538 ( update regular_expression "ProRes" )
update "regular_expressions" set "pattern" = '\b(ProRes)\b' where "name" = 'ProRes' and "pattern" = '\b(ASL)\b';
-- --- END op 14538

-- --- BEGIN op 14539 ( create custom_format "1080p ProRes Quality Tier 1" )
insert into "custom_formats" ("name", "description") values ('1080p ProRes Quality Tier 1', '');
-- --- END op 14539

-- --- BEGIN op 14540 ( update custom_format "1080p ProRes Quality Tier 1" )
update "custom_formats" set "description" = 'Matches release groups who fall under 1080p GPPi Tier 1' where "name" = '1080p ProRes Quality Tier 1' and "description" = '';
-- --- END op 14540

-- --- BEGIN op 14541 ( update custom_format "1080p ProRes Quality Tier 1" )
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p ProRes Quality Tier 1', '1080p');

insert into "tags" ("name") values ('GPPi') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p ProRes Quality Tier 1', 'GPPi');

insert into "tags" ("name") values ('Quality') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p ProRes Quality Tier 1', 'Quality');

insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p ProRes Quality Tier 1', 'Release Group Tier');
-- --- END op 14541

-- --- BEGIN op 14542 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p ProRes Quality Tier 1', '1080p', '1080p');
-- --- END op 14542

-- --- BEGIN op 14543 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'Bluray', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p ProRes Quality Tier 1', 'Bluray', 'bluray');
-- --- END op 14543

-- --- BEGIN op 14544 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'DON', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'DON', 'DON');
-- --- END op 14544

-- --- BEGIN op 14545 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'Not Remux', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'Not Remux', 'Remux');
-- --- END op 14545

-- --- BEGIN op 14546 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'REBORN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'REBORN', 'REBORN');
-- --- END op 14546

-- --- BEGIN op 14547 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'SA89', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'SA89', 'SA89');
-- --- END op 14547

-- --- BEGIN op 14548 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'SoLaR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'SoLaR', 'SoLaR');
-- --- END op 14548

-- --- BEGIN op 14549 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'TeamSyndicate', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'TeamSyndicate', 'TeamSyndicate');
-- --- END op 14549

-- --- BEGIN op 14550 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'WEBRip', 'source', 'radarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p ProRes Quality Tier 1', 'WEBRip', 'webrip');
-- --- END op 14550

-- --- BEGIN op 14551 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'ZoroSenpai', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'ZoroSenpai', 'ZoroSenpai');
-- --- END op 14551

-- --- BEGIN op 14552 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'coffee', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'coffee', 'coffee');
-- --- END op 14552

-- --- BEGIN op 14553 ( update custom_format "1080p ProRes Quality Tier 1" )
update "custom_formats" set "description" = 'Matches release groups who fall under 1080p ProRes Tier 1' where "name" = '1080p ProRes Quality Tier 1' and "description" = 'Matches release groups who fall under 1080p GPPi Tier 1';
-- --- END op 14553

-- --- BEGIN op 14554 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_tags WHERE custom_format_name = '1080p ProRes Quality Tier 1' AND tag_name = 'GPPi';

insert into "tags" ("name") values ('ProRes') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p ProRes Quality Tier 1', 'ProRes');
-- --- END op 14554

-- --- BEGIN op 14555 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'Bluray'
	  AND type = 'source'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14555

-- --- BEGIN op 14556 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'DON'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14556

-- --- BEGIN op 14557 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'Not Remux'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14557

-- --- BEGIN op 14558 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'REBORN'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14558

-- --- BEGIN op 14559 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'SA89'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14559

-- --- BEGIN op 14560 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'SoLaR'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14560

-- --- BEGIN op 14561 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'TeamSyndicate'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14561

-- --- BEGIN op 14562 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'WEBRip'
	  AND type = 'source'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14562

-- --- BEGIN op 14563 ( update custom_format "1080p ProRes Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p ProRes Quality Tier 1'
	  AND name = 'coffee'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14563

-- --- BEGIN op 14564 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'ProRes', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p ProRes Quality Tier 1', 'ProRes', 'ProRes');
-- --- END op 14564

-- --- BEGIN op 14565 ( update custom_format "1080p ProRes Quality Tier 1" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = '1080p ProRes Quality Tier 1'
  AND name = 'ProRes'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14565

-- --- BEGIN op 14566 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p ProRes Quality Tier 1', 'WEB-DL', 'web_dl');
-- --- END op 14566

-- --- BEGIN op 14567 ( update custom_format "1080p ProRes Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p ProRes Quality Tier 1', 'HDTV', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p ProRes Quality Tier 1', 'HDTV', 'television');
-- --- END op 14567

-- --- BEGIN op 14568 ( update custom_format "1080p ProRes Quality Tier 1" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = '1080p ProRes Quality Tier 1'
  AND name = 'ZoroSenpai'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 14568

-- --- BEGIN op 14569 ( update custom_format "1080p ProRes Quality Tier 1" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = '1080p ProRes Quality Tier 1'
  AND name = 'ZoroSenpai'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 14569

-- --- BEGIN op 14570 ( update custom_format "1080p WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL', 'ProRes', 'ProRes');
-- --- END op 14570

-- --- BEGIN op 14571 ( update custom_format "2160p WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p WEB-DL', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p WEB-DL', 'ProRes', 'ProRes');
-- --- END op 14571

-- --- BEGIN op 14572 ( update custom_format "720p WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p WEB-DL', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p WEB-DL', 'ProRes', 'ProRes');
-- --- END op 14572
