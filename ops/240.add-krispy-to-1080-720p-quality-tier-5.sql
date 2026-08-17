-- @operation: export
-- @entity: batch
-- @name: Add Krispy to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T19:48:20.572Z
-- @opIds: 13241, 13242, 13243, 13244, 13245

-- --- BEGIN op 13241 ( create regular_expression "Krispy" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Krispy', '(?<=^|[\s.-])VorteX\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Krispy', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Krispy', 'Release Group');
-- --- END op 13241

-- --- BEGIN op 13242 ( update regular_expression "Krispy" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Krispy\b' where "name" = 'Krispy' and "pattern" = '(?<=^|[\s.-])VorteX\b';
-- --- END op 13242

-- --- BEGIN op 13243 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Krispy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Krispy', 'Krispy');
-- --- END op 13243

-- --- BEGIN op 13244 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'Krispy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'Krispy', 'Krispy');
-- --- END op 13244

-- --- BEGIN op 13245 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'Krispy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'Krispy', 'Krispy');
-- --- END op 13245
