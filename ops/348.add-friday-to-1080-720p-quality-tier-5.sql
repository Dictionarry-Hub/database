-- @operation: export
-- @entity: batch
-- @name: ADD Friday to 1080/720p Quality Tier 5
-- @exportedAt: 2026-09-08T20:25:41.864Z
-- @opIds: 14384, 14385, 14386, 14387, 14388

-- --- BEGIN op 14384 ( create regular_expression "Friday" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Friday', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friday', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Friday', 'Release Group');
-- --- END op 14384

-- --- BEGIN op 14385 ( update regular_expression "Friday" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Friday\b' where "name" = 'Friday' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14385

-- --- BEGIN op 14386 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Friday', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Friday', 'Friday');
-- --- END op 14386

-- --- BEGIN op 14387 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'Friday', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'Friday', 'Friday');
-- --- END op 14387

-- --- BEGIN op 14388 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'Friday', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'Friday', 'Friday');
-- --- END op 14388
