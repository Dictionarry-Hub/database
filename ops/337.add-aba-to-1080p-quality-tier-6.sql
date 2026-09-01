-- @operation: export
-- @entity: batch
-- @name: Add aBa to 1080p Quality Tier 6
-- @exportedAt: 2026-09-01T22:15:46.777Z
-- @opIds: 14253, 14254, 14255, 14256

-- --- BEGIN op 14253 ( create regular_expression "aBa" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('aBa', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('aBa', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('aBa', 'Release Group');
-- --- END op 14253

-- --- BEGIN op 14254 ( update regular_expression "aBa" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])aBa\b' where "name" = 'aBa' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14254

-- --- BEGIN op 14255 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'aBa', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'aBa', 'aBa');
-- --- END op 14255

-- --- BEGIN op 14256 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'aBa', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'aBa', 'aBa');
-- --- END op 14256
