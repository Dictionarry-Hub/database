-- @operation: export
-- @entity: batch
-- @name: Add iLL to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:22:48.586Z
-- @opIds: 13307, 13308, 13309, 13310

-- --- BEGIN op 13307 ( create regular_expression "iLL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iLL', '(?<=^|[\s.-])BBW\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iLL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iLL', 'Release Group');
-- --- END op 13307

-- --- BEGIN op 13308 ( update regular_expression "iLL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])iLL\b' where "name" = 'iLL' and "pattern" = '(?<=^|[\s.-])BBW\b';
-- --- END op 13308

-- --- BEGIN op 13309 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'iLL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'iLL', 'iLL');
-- --- END op 13309

-- --- BEGIN op 13310 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'iLL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'iLL', 'iLL');
-- --- END op 13310
