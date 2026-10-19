-- @operation: export
-- @entity: batch
-- @name: Add ZnP to Remux Tier 3
-- @exportedAt: 2026-10-19T00:52:58.633Z
-- @opIds: 15123, 15124, 15125

-- --- BEGIN op 15123 ( create regular_expression "ZnP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZnP', '(?<=^|[\s.-])3L\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZnP', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZnP', 'Remux');
-- --- END op 15123

-- --- BEGIN op 15124 ( update regular_expression "ZnP" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])ZnP\b' where "name" = 'ZnP' and "pattern" = '(?<=^|[\s.-])3L\b';
-- --- END op 15124

-- --- BEGIN op 15125 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'ZnP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'ZnP', 'ZnP');
-- --- END op 15125
