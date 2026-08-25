-- @operation: export
-- @entity: batch
-- @name: Add Narkyy to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-25T01:41:14.424Z
-- @opIds: 13592, 13593, 13594, 13595

-- --- BEGIN op 13592 ( create regular_expression "Narkyy" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Narkyy', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Narkyy', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Narkyy', 'Release Group');
-- --- END op 13592

-- --- BEGIN op 13593 ( update regular_expression "Narkyy" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Narkyy\b' where "name" = 'Narkyy' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13593

-- --- BEGIN op 13594 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'Narkyy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'Narkyy', 'Narkyy');
-- --- END op 13594

-- --- BEGIN op 13595 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Narkyy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Narkyy', 'Narkyy');
-- --- END op 13595
