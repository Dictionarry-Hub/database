-- @operation: export
-- @entity: batch
-- @name: Add ARiN to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-25T04:00:15.060Z
-- @opIds: 13634, 13635, 13636, 13637, 13638

-- --- BEGIN op 13634 ( create regular_expression "ARiN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ARiN', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ARiN', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ARiN', 'Release Group');
-- --- END op 13634

-- --- BEGIN op 13635 ( update regular_expression "ARiN" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])ARiN\b' where "name" = 'ARiN' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13635

-- --- BEGIN op 13636 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'ARiN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'ARiN', 'ARiN');
-- --- END op 13636

-- --- BEGIN op 13637 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'ARiN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'ARiN', 'ARiN');
-- --- END op 13637

-- --- BEGIN op 13638 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'ARiN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'ARiN', 'ARiN');
-- --- END op 13638
