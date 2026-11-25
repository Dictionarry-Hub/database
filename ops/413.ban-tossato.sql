-- @operation: export
-- @entity: batch
-- @name: BAN TOSSATO
-- @exportedAt: 2026-11-25T16:46:46.166Z
-- @opIds: 15676, 15677, 15678

-- --- BEGIN op 15676 ( create regular_expression "TOSSATO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TOSSATO', '(?<=^|[\s.-])ABM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOSSATO', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOSSATO', 'WEB-DL');
-- --- END op 15676

-- --- BEGIN op 15677 ( update regular_expression "TOSSATO" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])TOSSATO\b' where "name" = 'TOSSATO' and "pattern" = '(?<=^|[\s.-])ABM\b';
-- --- END op 15677

-- --- BEGIN op 15678 ( update custom_format "Banned Language Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Language Groups', 'TOSSATO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Language Groups', 'TOSSATO', 'TOSSATO');
-- --- END op 15678
