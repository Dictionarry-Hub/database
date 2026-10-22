-- @operation: export
-- @entity: batch
-- @name: Add DUSKLiGHT to HEVC Tier 1
-- @exportedAt: 2026-10-22T20:36:46.109Z
-- @opIds: 15129, 15130, 15131, 15132, 15133

-- --- BEGIN op 15129 ( create regular_expression "STC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('STC', '(?<=^|[\s.-])4kHdHub\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('STC', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('STC', 'WEB-DL');
-- --- END op 15129

-- --- BEGIN op 15130 ( update regular_expression "STC" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])STC\b' where "name" = 'STC' and "pattern" = '(?<=^|[\s.-])4kHdHub\b';
-- --- END op 15130

-- --- BEGIN op 15131 ( create regular_expression "DUSKLiGHT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DUSKLiGHT', '(?<=^|[\s.-])4kHdHub\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DUSKLiGHT', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DUSKLiGHT', 'WEB-DL');
-- --- END op 15131

-- --- BEGIN op 15132 ( update regular_expression "DUSKLiGHT" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])DUSKLiGHT\b' where "name" = 'DUSKLiGHT' and "pattern" = '(?<=^|[\s.-])4kHdHub\b';
-- --- END op 15132

-- --- BEGIN op 15133 ( update custom_format "1080p WEB-DL HEVC Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC Tier 1', 'DUSKLiGHT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC Tier 1', 'DUSKLiGHT', 'DUSKLiGHT');
-- --- END op 15133
