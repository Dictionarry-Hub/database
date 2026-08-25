-- @operation: export
-- @entity: batch
-- @name: Add MGs to 1080p Quality Tier 5
-- @exportedAt: 2026-08-25T01:48:02.431Z
-- @opIds: 13602, 13603, 13604, 13605

-- --- BEGIN op 13602 ( create regular_expression "MGs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MGs', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGs', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGs', 'Release Group');
-- --- END op 13602

-- --- BEGIN op 13603 ( update regular_expression "MGs" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MGs\b' where "name" = 'MGs' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13603

-- --- BEGIN op 13604 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'MGs', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'MGs', 'MGs');
-- --- END op 13604

-- --- BEGIN op 13605 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'MGs', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'MGs', 'MGs');
-- --- END op 13605
