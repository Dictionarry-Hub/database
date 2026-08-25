-- @operation: export
-- @entity: batch
-- @name: Add Aio to 1080p Quality Tier 5
-- @exportedAt: 2026-08-25T01:44:41.408Z
-- @opIds: 13597, 13598, 13599, 13600

-- --- BEGIN op 13597 ( create regular_expression "Aio" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Aio', '(?<=^|[\s.-])JM\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aio', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aio', 'Release Group');
-- --- END op 13597

-- --- BEGIN op 13598 ( update regular_expression "Aio" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Aio\b' where "name" = 'Aio' and "pattern" = '(?<=^|[\s.-])JM\b';
-- --- END op 13598

-- --- BEGIN op 13599 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Aio', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Aio', 'Aio');
-- --- END op 13599

-- --- BEGIN op 13600 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'Aio', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'Aio', 'Aio');
-- --- END op 13600
