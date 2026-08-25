-- @operation: export
-- @entity: batch
-- @name: Add Kururun to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-25T02:06:40.820Z
-- @opIds: 13623, 13624, 13625, 13626, 13627

-- --- BEGIN op 13623 ( create regular_expression "Kururun" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kururun', '(?<=^|[\s.-])CRX\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kururun', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kururun', 'Release Group');
-- --- END op 13623

-- --- BEGIN op 13624 ( update regular_expression "Kururun" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Kururun\b' where "name" = 'Kururun' and "pattern" = '(?<=^|[\s.-])CRX\b';
-- --- END op 13624

-- --- BEGIN op 13625 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Kururun', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Kururun', 'Kururun');
-- --- END op 13625

-- --- BEGIN op 13626 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'Kururun', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'Kururun', 'Kururun');
-- --- END op 13626

-- --- BEGIN op 13627 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'Kururun', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'Kururun', 'Kururun');
-- --- END op 13627
