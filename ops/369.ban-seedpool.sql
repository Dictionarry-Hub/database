-- @operation: export
-- @entity: batch
-- @name: BAN seedpool
-- @exportedAt: 2026-10-15T00:11:01.095Z
-- @opIds: 14744, 14745, 14746

-- --- BEGIN op 14744 ( create regular_expression "seedpool" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('seedpool', '(?<=^|[\s.-])SPx\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('seedpool', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('seedpool', 'Release Group');
-- --- END op 14744

-- --- BEGIN op 14745 ( update regular_expression "seedpool" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])seedpool\b' where "name" = 'seedpool' and "pattern" = '(?<=^|[\s.-])SPx\b';
-- --- END op 14745

-- --- BEGIN op 14746 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'seedpool', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'seedpool', 'seedpool');
-- --- END op 14746
