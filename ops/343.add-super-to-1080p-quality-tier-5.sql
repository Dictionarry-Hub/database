-- @operation: export
-- @entity: batch
-- @name: Add SUPER to 1080p Quality Tier 5
-- @exportedAt: 2026-09-02T16:30:51.449Z
-- @opIds: 14293, 14294, 14295, 14296

-- --- BEGIN op 14293 ( create regular_expression "SUPER" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SUPER', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SUPER', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SUPER', 'Release Group');
-- --- END op 14293

-- --- BEGIN op 14294 ( update regular_expression "SUPER" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SUPER\b' where "name" = 'SUPER' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14294

-- --- BEGIN op 14295 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'SUPER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'SUPER', 'SUPER');
-- --- END op 14295

-- --- BEGIN op 14296 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'SUPER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'SUPER', 'SUPER');
-- --- END op 14296
