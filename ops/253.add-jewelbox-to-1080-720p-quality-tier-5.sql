-- @operation: export
-- @entity: batch
-- @name: Add JewelBox to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:50:54.072Z
-- @opIds: 13328, 13329, 13330, 13331, 13332

-- --- BEGIN op 13328 ( create regular_expression "JewelBox" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JewelBox', '(?<=^|[\s.-])Otaibi\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JewelBox', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JewelBox', 'Release Group');
-- --- END op 13328

-- --- BEGIN op 13329 ( update regular_expression "JewelBox" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])JewelBox\b' where "name" = 'JewelBox' and "pattern" = '(?<=^|[\s.-])Otaibi\b';
-- --- END op 13329

-- --- BEGIN op 13330 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'JewelBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'JewelBox', 'JewelBox');
-- --- END op 13330

-- --- BEGIN op 13331 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'JewelBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'JewelBox', 'JewelBox');
-- --- END op 13331

-- --- BEGIN op 13332 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'JewelBox', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'JewelBox', 'JewelBox');
-- --- END op 13332
