-- @operation: export
-- @entity: batch
-- @name: BAN LACTATO
-- @exportedAt: 2026-11-08T18:32:51.645Z
-- @opIds: 15598, 15599, 15600

-- --- BEGIN op 15598 ( create regular_expression "LACTATO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LACTATO', '(?<=^|[\s.-])3L\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LACTATO', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LACTATO', 'Remux');
-- --- END op 15598

-- --- BEGIN op 15599 ( update regular_expression "LACTATO" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])LACTATO\b' where "name" = 'LACTATO' and "pattern" = '(?<=^|[\s.-])3L\b';
-- --- END op 15599

-- --- BEGIN op 15600 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'LACTATO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'LACTATO', 'LACTATO');
-- --- END op 15600
