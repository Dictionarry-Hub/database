-- @operation: export
-- @entity: batch
-- @name: BAN HDT Remux
-- @exportedAt: 2026-10-15T00:17:02.501Z
-- @opIds: 14748, 14749, 14750

-- --- BEGIN op 14748 ( create regular_expression "HDT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDT', '(?<=^|[\s.-])3L\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDT', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDT', 'Remux');
-- --- END op 14748

-- --- BEGIN op 14749 ( update regular_expression "HDT" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HDT\b' where "name" = 'HDT' and "pattern" = '(?<=^|[\s.-])3L\b';
-- --- END op 14749

-- --- BEGIN op 14750 ( update custom_format "Banned Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Remux', 'HDT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Remux', 'HDT', 'HDT');
-- --- END op 14750
