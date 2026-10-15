-- @operation: export
-- @entity: batch
-- @name: BAN SPx
-- @exportedAt: 2026-10-15T00:09:09.954Z
-- @opIds: 14740, 14741, 14742

-- --- BEGIN op 14740 ( create regular_expression "SPx" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SPx', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SPx', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SPx', 'Release Group');
-- --- END op 14740

-- --- BEGIN op 14741 ( update regular_expression "SPx" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SPx\b' where "name" = 'SPx' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14741

-- --- BEGIN op 14742 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'SPx', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'SPx', 'SPx');
-- --- END op 14742
