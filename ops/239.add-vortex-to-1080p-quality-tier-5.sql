-- @operation: export
-- @entity: batch
-- @name: Add VorteX to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T19:40:37.636Z
-- @opIds: 13236, 13237, 13238, 13239

-- --- BEGIN op 13236 ( create regular_expression "VorteX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VorteX', '(?<=^|[\s.-])KnG\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VorteX', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VorteX', 'Release Group');
-- --- END op 13236

-- --- BEGIN op 13237 ( update regular_expression "VorteX" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])VorteX\b' where "name" = 'VorteX' and "pattern" = '(?<=^|[\s.-])KnG\b';
-- --- END op 13237

-- --- BEGIN op 13238 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'VorteX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'VorteX', 'VorteX');
-- --- END op 13238

-- --- BEGIN op 13239 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'VorteX', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'VorteX', 'VorteX');
-- --- END op 13239
