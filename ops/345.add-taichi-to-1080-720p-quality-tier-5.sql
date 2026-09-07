-- @operation: export
-- @entity: batch
-- @name: Add TAiCHi to 1080/720p Quality Tier 5
-- @exportedAt: 2026-09-07T00:38:00.981Z
-- @opIds: 14307, 14308, 14309, 14310, 14311

-- --- BEGIN op 14307 ( create regular_expression "TAiCHi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TAiCHi', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TAiCHi', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TAiCHi', 'Release Group');
-- --- END op 14307

-- --- BEGIN op 14308 ( update regular_expression "TAiCHi" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])TAiCHi\b' where "name" = 'TAiCHi' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14308

-- --- BEGIN op 14309 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'TAiCHi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'TAiCHi', 'TAiCHi');
-- --- END op 14309

-- --- BEGIN op 14310 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'TAiCHi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'TAiCHi', 'TAiCHi');
-- --- END op 14310

-- --- BEGIN op 14311 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'TAiCHi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'TAiCHi', 'TAiCHi');
-- --- END op 14311
