-- @operation: export
-- @entity: batch
-- @name: Add EBCP to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T19:30:52.459Z
-- @opIds: 13231, 13232, 13233, 13234

-- --- BEGIN op 13231 ( create regular_expression "EBCP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EBCP', '(?<=^|[\s.-])GL\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EBCP', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EBCP', 'Release Group');
-- --- END op 13231

-- --- BEGIN op 13232 ( update regular_expression "EBCP" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])EBCP\b' where "name" = 'EBCP' and "pattern" = '(?<=^|[\s.-])GL\b';
-- --- END op 13232

-- --- BEGIN op 13233 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'EBCP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'EBCP', 'EBCP');
-- --- END op 13233

-- --- BEGIN op 13234 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'EBCP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'EBCP', 'EBCP');
-- --- END op 13234
