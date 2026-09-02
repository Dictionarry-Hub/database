-- @operation: export
-- @entity: batch
-- @name: Add cFc to 1080p Quality Tier 6
-- @exportedAt: 2026-09-02T02:20:19.698Z
-- @opIds: 14258, 14259, 14260, 14261

-- --- BEGIN op 14258 ( create regular_expression "cFc" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('cFc', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('cFc', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('cFc', 'Release Group');
-- --- END op 14258

-- --- BEGIN op 14259 ( update regular_expression "cFc" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])cFc\b' where "name" = 'cFc' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14259

-- --- BEGIN op 14260 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'cFc', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'cFc', 'cFc');
-- --- END op 14260

-- --- BEGIN op 14261 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'cFc', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'cFc', 'cFc');
-- --- END op 14261
