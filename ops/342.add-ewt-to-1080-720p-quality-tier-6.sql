-- @operation: export
-- @entity: batch
-- @name: Add EwT to 1080/720p Quality Tier 6
-- @exportedAt: 2026-09-02T02:50:07.951Z
-- @opIds: 14283, 14284, 14285, 14286, 14287

-- --- BEGIN op 14283 ( create regular_expression "EwT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EwT', '(?<=^|[\s.-])MySiLU\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EwT', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EwT', 'Release Group');
-- --- END op 14283

-- --- BEGIN op 14284 ( update regular_expression "EwT" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])EwT\b' where "name" = 'EwT' and "pattern" = '(?<=^|[\s.-])MySiLU\b';
-- --- END op 14284

-- --- BEGIN op 14285 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'EwT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'EwT', 'EwT');
-- --- END op 14285

-- --- BEGIN op 14286 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'EwT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'EwT', 'EwT');
-- --- END op 14286

-- --- BEGIN op 14287 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'EwT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'EwT', 'EwT');
-- --- END op 14287
