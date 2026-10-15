-- @operation: export
-- @entity: batch
-- @name: BAN Aisha
-- @exportedAt: 2026-10-15T16:06:24.422Z
-- @opIds: 14752, 14753, 14754

-- --- BEGIN op 14752 ( create regular_expression "Aisha" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Aisha', '(?<=^|[\s.-])HDT\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aisha', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aisha', 'Remux');
-- --- END op 14752

-- --- BEGIN op 14753 ( update regular_expression "Aisha" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Aisha\b' where "name" = 'Aisha' and "pattern" = '(?<=^|[\s.-])HDT\b';
-- --- END op 14753

-- --- BEGIN op 14754 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'Aisha', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Aisha', 'Aisha');
-- --- END op 14754
