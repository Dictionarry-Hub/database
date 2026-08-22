-- @operation: export
-- @entity: batch
-- @name: Add GR to 1080p Quality Tier 5
-- @exportedAt: 2026-08-22T15:25:20.136Z
-- @opIds: 13370, 13371, 13372, 13373

-- --- BEGIN op 13370 ( create regular_expression "GR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GR', '(?<=^|[\s.-])eckomega\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GR', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GR', 'Release Group');
-- --- END op 13370

-- --- BEGIN op 13371 ( update regular_expression "GR" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])GR\b' where "name" = 'GR' and "pattern" = '(?<=^|[\s.-])eckomega\b';
-- --- END op 13371

-- --- BEGIN op 13372 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'GR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'GR', 'GR');
-- --- END op 13372

-- --- BEGIN op 13373 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'GR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'GR', 'GR');
-- --- END op 13373
