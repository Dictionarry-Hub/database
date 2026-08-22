-- @operation: export
-- @entity: batch
-- @name: Add eckomega to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T15:22:58.474Z
-- @opIds: 13364, 13365, 13366, 13367, 13368

-- --- BEGIN op 13364 ( create regular_expression "eckomega" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('eckomega', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('eckomega', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('eckomega', 'Release Group');
-- --- END op 13364

-- --- BEGIN op 13365 ( update regular_expression "eckomega" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])eckomega\b' where "name" = 'eckomega' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13365

-- --- BEGIN op 13366 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'eckomega', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'eckomega', 'eckomega');
-- --- END op 13366

-- --- BEGIN op 13367 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'eckomega', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'eckomega', 'eckomega');
-- --- END op 13367

-- --- BEGIN op 13368 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'eckomega', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'eckomega', 'eckomega');
-- --- END op 13368
