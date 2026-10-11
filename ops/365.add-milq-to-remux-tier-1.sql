-- @operation: export
-- @entity: batch
-- @name: Add MiLQ to Remux Tier 1
-- @exportedAt: 2026-10-11T20:22:58.188Z
-- @opIds: 14697, 14698, 14699

-- --- BEGIN op 14697 ( create regular_expression "MiLQ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MiLQ', '(?<=^|[\s.-])3L\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiLQ', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MiLQ', 'Remux');
-- --- END op 14697

-- --- BEGIN op 14698 ( update regular_expression "MiLQ" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MiLQ\b' where "name" = 'MiLQ' and "pattern" = '(?<=^|[\s.-])3L\b';
-- --- END op 14698

-- --- BEGIN op 14699 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'MiLQ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'MiLQ', 'MiLQ');
-- --- END op 14699
